#此程序用来向java程序传递数据，实现自主可控，分别为copybook地址和数据字典地址以及临时文件的生成地址
time=`date '+%Y%m%d%H%M%S'`
path="$HOME/tools"
javaLib="${path}/lib/BritCopyBOOK.jar"
javaMain="cn.com.hisun.CopyBookMain"
javaCmd="java"
copyBookSql="${path}/etc/DMTGEN2.SQL"
copyBookTxt="${path}/etc/DMTGEN2.txt"
copyBookPath="${path}/etc/Copybook.sql"
dir_txt="${path}/etc/dict.dat"
schema="ODS"
sqlDerectory="${path}/${schema}_${time}"
tabStart='DROP'

echo "time：${time}"

#调用java main 程序
invokeBookMain(){
   $1  -version
   $1  -Xms256m -Xmx3072m -XX:MaxPermSize=256m  -classpath  $2 $3 $4 $5 $6 $7 $8
}

#清理空行
clearNullLine(){
  cat $1 | sed -e '/^$/d' > $1
}

clearFile(){
  rm $1 $2
}
#运行reade函数  copybook文件名  拆分表结构的文件夹
readeCopyBook(){
    echo $1 $2 $3
    mkdir $2
    tabname=''
    cat $1 | while read line
    do
       #处理tabname
       if [[ ${line} != '' ]]; then
         result=`echo ${line} | grep $3`
         if [[ ${result} != '' ]]; then
           tabname=${result#*.}
           tabname=${tabname%;*}
         fi
       fi
       #处理sql文件
       if [[ ${line} != '' ]]; then
         echo ${line} >> $2/${tabname}".sql"
       fi
    done
}


main(){
   echo "启动java程序转化copyBook"
   invokeBookMain ${javaCmd} ${javaLib} ${javaMain} ${copyBookSql} ${copyBookTxt} ${copyBookPath} ${dir_txt} ${schema}

   echo "清理空行"
   #clearNullLine ${copyBookPath}

   echo "拆分copyBook"
   readeCopyBook  ${copyBookPath} ${sqlDerectory} ${tabStart}

   echo "清理中间表"
   #clearFile ${copyBookPath} ${copyBookTxt}
}

#执行main方法
main

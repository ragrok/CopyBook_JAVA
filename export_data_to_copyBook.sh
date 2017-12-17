#这个脚本用来将java程序转化的sql程序拆开为独立的表结构
filePath=$1
sqlDerectory=$2
tabStart='DROP'

clearFile(){
    rm -f $1/*
}

clearNullLine(){
  cat $1 | sed -e '/^$/d' > $1
}
readeCopyBook(){
    echo $1 $2 $3
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
   #清理上次是否残存文件
   clearFile ${sqlDerectory}
   #清理空行
   clearNullLine ${filePath}
   #运行reade函数  copybook文件名  拆分表结构的文件夹
   readeCopyBook ${filePath} ${sqlDerectory} ${tabStart}

}

main

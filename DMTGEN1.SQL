       #IFNDEF TABLE_CLTGAR2                                                    
       #DEFINE TABLE_CLTGAR2                                                    
           EXEC SQL DECLARE CLTGAR2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             SIGNING_DT               DEC(8, 0) NOT NULL,                       
             COUNTER_TYP              CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTGAR2                            *        
      ******************************************************************        
       01  CLR:GAR2:.                                                           
           03 :GAR2:_KEY.                                                       
              05 :GAR2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :GAR2:_R_TYPE        DIC(TYP).                                    
                 88 :GAR2:_R_N           VALUE 'N'.                             
                 88 :GAR2:_R_D           VALUE 'D'.                             
           03 :GAR2:_SIGNING_DT    DIC(DT, P).                                  
           03 :GAR2:_COUNTER_TYP   DIC(TYP).                                    
           03 :GAR2:_CRT_DATE      DIC(DT, P).                                  
           03 :GAR2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :GAR2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :GAR2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :GAR2:_TS            PIC X(26).                                   
      *@*CHECKSUM _1987345705                                                   
       #IFNDEF TABLE_CLTGOGA2                                                   
       #DEFINE TABLE_CLTGOGA2                                                   
           EXEC SQL DECLARE CLTGOGA2 TABLE                                      
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             GUAR_CI_NO               CHAR(12) NOT NULL,                        
             GUAR_ENG_NAME            CHAR(140) NOT NULL,                       
             REF_NO                   CHAR(60) NOT NULL,                        
             CAN_DATE                 DEC(8, 0) NOT NULL,                       
             GOVER_GUAR_PCT           DEC(5, 2) NOT NULL,                       
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             GUAR_TYP                 CHAR(4) NOT NULL,                         
             PREM_TYP                 CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTGOGA2                           *        
      ******************************************************************        
       01  CLR:GOGA2:.                                                          
           03 :GOGA2:_KEY.                                                      
              05 :GOGA2:_COLL_NO   DIC(GTEE_NO, P).                             
           03 :GOGA2:_R_TYPE       DIC(TYP).                                    
                 88 :GOGA2:_R_N          VALUE 'N'.                             
                 88 :GOGA2:_R_D          VALUE 'D'.                             
           03 :GOGA2:_GUAR_CI_NO   DIC(CI_NO).                                  
           03 :GOGA2:_GUAR_ENG_NAME DIC(CI_ENM).                                
           03 :GOGA2:_REF_NO       DIC(DESC_30).                                
           03 :GOGA2:_CAN_DATE     DIC(DT, P).                                  
           03 :GOGA2:_GOVER_GUAR_PCT DIC(PCT, P).                               
           03 :GOGA2:_EFF_DATE     DIC(DT, P).                                  
           03 :GOGA2:_EXP_DATE     DIC(DT, P).                                  
           03 :GOGA2:_GUAR_TYP     DIC(PRDMO_CD).                               
           03 :GOGA2:_PREM_TYP     DIC(FLG).                                    
           03 :GOGA2:_CRT_DATE     DIC(DT, P).                                  
           03 :GOGA2:_CRT_TLR      DIC(TLR_NO).                                 
           03 :GOGA2:_UPDTBL_DATE  DIC(DT, P).                                  
           03 :GOGA2:_UPDTBL_TLR   DIC(TLR_NO).                                 
           03 :GOGA2:_TS           PIC X(26).                                   
      *@*CHECKSUM _2115642531                                                   
       #IFNDEF TABLE_CLTINP2                                                    
       #DEFINE TABLE_CLTINP2                                                    
           EXEC SQL DECLARE CLTINP2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             INP_POL_NAME             CHAR(140) NOT NULL,                       
             POLICY_NO                CHAR(50) NOT NULL,                        
             TYPE                     CHAR(5) NOT NULL,                         
             ISUR_NAME                CHAR(140) NOT NULL,                       
             ISUD_PART_NAME           CHAR(140) NOT NULL,                       
             ISUD_AMT                 DEC(18, 2) NOT NULL,                      
             CSH_VAL                  DEC(18, 2) NOT NULL,                      
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             BENEFICIARY              CHAR(140) NOT NULL,                       
             INSUR_CO                 CHAR(140) NOT NULL,                       
             ISUR_CI_NO               CHAR(12) NOT NULL,                        
             INSPART_CI_NO            CHAR(12) NOT NULL,                        
             BEN_CI_NO                CHAR(12) NOT NULL,                        
             INSUR_CI_NO              CHAR(12) NOT NULL,                        
             INSUR_CCY                CHAR(3) NOT NULL,                         
             COUNTER_TYP              CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTINP2                            *        
      ******************************************************************        
       01  CLR:INP2:.                                                           
           03 :INP2:_KEY.                                                       
              05 :INP2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :INP2:_R_TYPE        DIC(TYP).                                    
                 88 :INP2:_R_N          VALUE 'N'.                              
                 88 :INP2:_R_D          VALUE 'D'.                              
           03 :INP2:_INP_POL_NAME  DIC(CI_ENM).                                 
           03 :INP2:_POLICY_NO     DIC(X50).                                    
           03 :INP2:_TYPE          DIC(FREE_CD5).                               
           03 :INP2:_ISUR_NAME     DIC(CI_ENM).                                 
           03 :INP2:_ISUD_PART_NAME DIC(CI_ENM).                                
           03 :INP2:_ISUD_AMT      DIC(TBAL_NS, P).                             
           03 :INP2:_CSH_VAL       DIC(TBAL_NS, P).                             
           03 :INP2:_EFF_DATE      DIC(DT, P).                                  
           03 :INP2:_EXP_DATE      DIC(DT, P).                                  
           03 :INP2:_BENEFICIARY   DIC(CI_ENM).                                 
           03 :INP2:_INSUR_CO      DIC(CI_ENM).                                 
           03 :INP2:_ISUR_CI_NO    DIC(CI_NO).                                  
           03 :INP2:_INSPART_CI_NO DIC(CI_NO).                                  
           03 :INP2:_BEN_CI_NO     DIC(CI_NO).                                  
           03 :INP2:_INSUR_CI_NO   DIC(CI_NO).                                  
           03 :INP2:_INSUR_CCY     DIC(CCY).                                    
           03 :INP2:_COUNTER_TYP   DIC(TYP).                                    
           03 :INP2:_CRT_DATE      DIC(DT, P).                                  
           03 :INP2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :INP2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :INP2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :INP2:_TS            PIC X(26).                                   
      *@*CHECKSUM 1671194649                                                    
       #IFNDEF TABLE_CLTINPG                                                    
       #DEFINE TABLE_CLTINPG                                                    
           EXEC SQL DECLARE CLTINPG TABLE                                       
           (                                                                    
             INSUR_CI_NO              CHAR(12) NOT NULL,                        
             R_TYPE                   CHAR(1) NOT NULL,                         
             LMT_TYPE                 CHAR(8) NOT NULL,                         
             POLICY_NO                CHAR(20) NOT NULL,                        
             POLICY_AMT               DEC(16, 2) NOT NULL,                      
             POLICY_CCY               CHAR(3) NOT NULL,                         
             PROD_CD                  CHAR(8) NOT NULL,                         
             BRW_CI_NO                CHAR(12) NOT NULL,                        
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTINPG                            *        
      ******************************************************************        
       01  CLR:INPG:.                                                           
           03 :INPG:_KEY.                                                       
              05 :INPG:_INSUR_CI_NO DIC(CI_NO).                                 
              05 :INPG:_R_TYPE     DIC(TYP).                                    
                 88 :INPG:_R_N            VALUE 'N'.                            
                 88 :INPG:_R_D            VALUE 'D'.                            
                 88 :INPG:_R_A            VALUE 'A'.                            
           03 :INPG:_LMT_TYPE      DIC(LMT_KND).                                
           03 :INPG:_POLICY_NO     DIC(PROL_NO).                                
           03 :INPG:_POLICY_AMT    DIC(AMT, P).                                 
           03 :INPG:_POLICY_CCY    DIC(CCY).                                    
           03 :INPG:_PROD_CD       DIC(PROD_CD).                                
           03 :INPG:_BRW_CI_NO     DIC(CI_NO).                                  
           03 :INPG:_CRT_DATE      DIC(DT, P).                                  
           03 :INPG:_CRT_TLR       DIC(TLR_NO).                                 
           03 :INPG:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :INPG:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :INPG:_TS            PIC X(26).                                   
      *@*CHECKSUM _131782352                                                    
       #IFNDEF TABLE_CLTINS                                                     
       #DEFINE TABLE_CLTINS                                                     
           EXEC SQL DECLARE CLTINS TABLE                                        
           (                                                                    
             R_TYPE                   CHAR(1) NOT NULL,                         
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             SEQ_NO                   DEC(3, 0) NOT NULL,                       
             INP_ARG_TYPE             CHAR(1) NOT NULL,                         
             TYPE                     CHAR(5) NOT NULL,                         
             POLICY_NO                CHAR(50) NOT NULL,                        
             ISUD_CCY                 CHAR(3) NOT NULL,                         
             ISUD_AMT                 DEC(18, 2) NOT NULL,                      
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             IVC_PCT                  DEC(3, 0) NOT NULL,                       
             RMK                      VARCHAR(240) NOT NULL,                    
             INSUR_NAME               CHAR(140) NOT NULL,                       
             BENE_NAME1               CHAR(140) NOT NULL,                       
             BENE_NAME2               CHAR(140) NOT NULL,                       
             BENE_PERCENT             DEC(3, 0) NOT NULL,                       
             NO_PERCENT               DEC(3, 0) NOT NULL,                       
             INSUR_DUTY               CHAR(5) NOT NULL,                         
             PAY_METHOD               CHAR(5) NOT NULL,                         
             PF_FLAG                  CHAR(1) NOT NULL,                         
             INSC_IN_LIST             CHAR(140) NOT NULL,                       
             INSC_OUT_LIST            CHAR(140) NOT NULL,                       
             INS_CODE                 CHAR(1) NOT NULL,                         
             INS_CO_CODE              CHAR(4) NOT NULL,                         
             INS_EX_CODE              CHAR(4) NOT NULL,                         
             INS_FMT_CODE             CHAR(1) NOT NULL,                         
             DEBIT_NO                 CHAR(25) NOT NULL,                        
             DEBIT_NAME               CHAR(30) NOT NULL,                        
             REC_STATUS               CHAR(1) NOT NULL,                         
             UNCONFMD_UNIT            DEC(6, 0) NOT NULL,                       
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TL                CHAR(8) NOT NULL,                         
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             UPDATE_DATE              DEC(8, 0) NOT NULL,                       
             UPDATE_TL                CHAR(8) NOT NULL,                         
             UPDATE_UNIT              DEC(6, 0) NOT NULL,                       
             CONF_UNIT                DEC(6, 0) NOT NULL,                       
             CONF_SUP                 CHAR(8) NOT NULL,                         
             CONF_DATE                DEC(8, 0) NOT NULL,                       
             OVER_SUP1                CHAR(8) NOT NULL,                         
             OVER_SUP2                CHAR(8) NOT NULL,                         
             VER_NO                   DEC(4, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTINS                             *        
      ******************************************************************        
       01  CLR:INS:.                                                            
           03 :INS:_KEY.                                                        
              05 :INS:_R_TYPE      DIC(TYP).                                    
                 88 :INS:_R_N           VALUE 'N'.                              
                 88 :INS:_R_D           VALUE 'D'.                              
                 88 :INS:_R_A           VALUE 'A'.                              
              05 :INS:_COLL_NO     DIC(GTEE_NO, P).                             
              05 :INS:_SEQ_NO      DIC(SEQ_3, P).                               
           03 :INS:_INP_ARG_TYPE   DIC(TYP).                                    
           03 :INS:_TYPE           DIC(FREE_CD5).                               
           03 :INS:_POLICY_NO      DIC(X50).                                    
           03 :INS:_ISUD_CCY       DIC(CCY).                                    
           03 :INS:_ISUD_AMT       DIC(TAMT_NS, P).                             
           03 :INS:_EFF_DATE       DIC(DT, P).                                  
           03 :INS:_EXP_DATE       DIC(DT, P).                                  
           03 :INS:_IVC_PCT        DIC(NMR_DENR, P).                            
           03 :INS:_RMK.                                                        
              49 :INS:_RMK_LEN     PIC S9(4) COMP.                              
              49 :INS:_RMK_TEXT    DIC(RMK_120).                                
           03 :INS:_INSUR_NAME     DIC(CI_CNM).                                 
           03 :INS:_BENE_NAME1     DIC(CI_CNM).                                 
           03 :INS:_BENE_NAME2     DIC(CI_CNM).                                 
           03 :INS:_BENE_PERCENT   DIC(NMR_DENR, P).                            
           03 :INS:_NO_PERCENT     DIC(NMR_DENR, P).                            
           03 :INS:_INSUR_DUTY     DIC(FREE_CD5).                               
           03 :INS:_PAY_METHOD     DIC(FREE_CD5).                               
           03 :INS:_PF_FLAG        DIC(FLG).                                    
           03 :INS:_INSC_IN_LIST   DIC(CI_CNM).                                 
           03 :INS:_INSC_OUT_LIST  DIC(CI_CNM).                                 
           03 :INS:_INS_CODE       DIC(TYP).                                    
           03 :INS:_INS_CO_CODE    DIC(X04).                                    
           03 :INS:_INS_EX_CODE    DIC(X04).                                    
           03 :INS:_INS_FMT_CODE   DIC(TYP).                                    
           03 :INS:_DEBIT_NO       DIC(AC).                                     
           03 :INS:_DEBIT_NAME     DIC(X30).                                    
           03 :INS:_REC_STATUS     DIC(REC_STS).                                
                 88 :INS:_UNCONF_ADD    VALUE 'A'.                              
                 88 :INS:_UNCONF_UPD    VALUE 'U'.                              
                 88 :INS:_UNCONF_DEL    VALUE 'D'.                              
           03 :INS:_UNCONFMD_UNIT  DIC(BR, P).                                  
           03 :INS:_CREATE_DATE    DIC(DT, P).                                  
           03 :INS:_CREATE_TL      DIC(TLR_NO).                                 
           03 :INS:_CREATE_UNIT    DIC(BR, P).                                  
           03 :INS:_UPDATE_DATE    DIC(DT, P).                                  
           03 :INS:_UPDATE_TL      DIC(TLR_NO).                                 
           03 :INS:_UPDATE_UNIT    DIC(BR, P).                                  
           03 :INS:_CONF_UNIT      DIC(BR, P).                                  
           03 :INS:_CONF_SUP       DIC(TLR_NO).                                 
           03 :INS:_CONF_DATE      DIC(DT, P).                                  
           03 :INS:_OVER_SUP1      DIC(TLR_NO).                                 
           03 :INS:_OVER_SUP2      DIC(TLR_NO).                                 
           03 :INS:_VER_NO         DIC(VER_NO, P).                              
           03 :INS:_UPDTBL_DATE    DIC(DT, P).                                  
           03 :INS:_TS             PIC X(26).                                   
      *@*CHECKSUM _68324226                                                     
       #IFNDEF TABLE_CLTINT2                                                    
       #DEFINE TABLE_CLTINT2                                                    
           EXEC SQL DECLARE CLTINT2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             INT_NAME                 CHAR(140) NOT NULL,                       
             INT_TYP                  CHAR(5) NOT NULL,                         
             INT_ID                   CHAR(30) NOT NULL,                        
             GB_ID                    CHAR(30) NOT NULL,                        
             ISU_RAT1                 CHAR(5) NOT NULL,                         
             ISU_RAT_DATE1            DEC(8, 0) NOT NULL,                       
             ISU_RAT2                 CHAR(5) NOT NULL,                         
             ISU_RAT_DATE2            DEC(8, 0) NOT NULL,                       
             ISU_RAT3                 CHAR(5) NOT NULL,                         
             ISU_RAT_DATE3            DEC(8, 0) NOT NULL,                       
             ISU_RAT4                 CHAR(5) NOT NULL,                         
             ISU_RAT_DATE4            DEC(8, 0) NOT NULL,                       
             ISUR_ID                  CHAR(12) NOT NULL,                        
             ISUR_NAME                CHAR(140) NOT NULL,                       
             ISU_DT                   DEC(8, 0) NOT NULL,                       
             REDP_DT                  DEC(8, 0) NOT NULL,                       
             TOT_NOM_AMT              DEC(16, 2) NOT NULL,                      
             TOT_MAR_AMT              DEC(16, 2) NOT NULL,                      
             COLLT_FLG                CHAR(1) NOT NULL,                         
             ISUR_UNIT                CHAR(1) NOT NULL,                         
             SELF_SALE_FLAG           CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTINT2                            *        
      ******************************************************************        
       01  CLR:INT2:.                                                           
           03 :INT2:_KEY.                                                       
              05 :INT2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :INT2:_R_TYPE        DIC(TYP).                                    
                88 :INT2:_R_N               VALUE 'N'.                          
                88 :INT2:_R_D               VALUE 'D'.                          
           03 :INT2:_INT_NAME      DIC(CI_CNM).                                 
           03 :INT2:_INT_TYP       DIC(FREE_CD5).                               
           03 :INT2:_INT_ID        DIC(BND_CD).                                 
           03 :INT2:_GB_ID         DIC(DESCE_30).                               
           03 :INT2:_ISU_RAT1      DIC(FREE_CD5).                               
           03 :INT2:_ISU_RAT_DATE1 DIC(DT, P).                                  
           03 :INT2:_ISU_RAT2      DIC(FREE_CD5).                               
           03 :INT2:_ISU_RAT_DATE2 DIC(DT, P).                                  
           03 :INT2:_ISU_RAT3      DIC(FREE_CD5).                               
           03 :INT2:_ISU_RAT_DATE3 DIC(DT, P).                                  
           03 :INT2:_ISU_RAT4      DIC(FREE_CD5).                               
           03 :INT2:_ISU_RAT_DATE4 DIC(DT, P).                                  
           03 :INT2:_ISUR_ID       DIC(CI_NO).                                  
           03 :INT2:_ISUR_NAME     DIC(CI_CNM).                                 
           03 :INT2:_ISU_DT        DIC(DT, P).                                  
           03 :INT2:_REDP_DT       DIC(DT, P).                                  
           03 :INT2:_TOT_NOM_AMT   DIC(AMT, P).                                 
           03 :INT2:_TOT_MAR_AMT   DIC(AMT, P).                                 
           03 :INT2:_COLLT_FLG     DIC(FLG).                                    
           03 :INT2:_ISUR_UNIT     DIC(TYP).                                    
           03 :INT2:_SELF_SALE_FLAG DIC(FLG).                                   
           03 :INT2:_CRT_DATE      DIC(DT, P).                                  
           03 :INT2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :INT2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :INT2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :INT2:_TS            PIC X(26).                                   
      *@*CHECKSUM _1558772532                                                   
       #IFNDEF TABLE_CLTIPC2                                                    
       #DEFINE TABLE_CLTIPC2                                                    
           EXEC SQL DECLARE CLTIPC2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             COUN_TYP                 CHAR(1) NOT NULL,                         
             MA_DT                    DEC(8, 0) NOT NULL,                       
             MOODY                    CHAR(5) NOT NULL,                         
             STD_POOR                 CHAR(5) NOT NULL,                         
             FITCH                    CHAR(5) NOT NULL,                         
             INTER_RAT                CHAR(5) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTIPC2                            *        
      ******************************************************************        
       01  CLR:IPC2:.                                                           
           03 :IPC2:_KEY.                                                       
              05 :IPC2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :IPC2:_R_TYPE        DIC(TYP).                                    
                88 :IPC2:_R_N           VALUE 'N'.                              
                88 :IPC2:_R_D           VALUE 'D'.                              
           03 :IPC2:_COUN_TYP      DIC(TYP).                                    
           03 :IPC2:_MA_DT         DIC(DT, P).                                  
           03 :IPC2:_MOODY         DIC(FREE_CD5).                               
           03 :IPC2:_STD_POOR      DIC(FREE_CD5).                               
           03 :IPC2:_FITCH         DIC(FREE_CD5).                               
           03 :IPC2:_INTER_RAT     DIC(FREE_CD5).                               
           03 :IPC2:_CRT_DATE      DIC(DT, P).                                  
           03 :IPC2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :IPC2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :IPC2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :IPC2:_TS            PIC X(26).                                   
      *@*CHECKSUM _1634237987                                                   
       #IFNDEF TABLE_CLTLMT                                                     
       #DEFINE TABLE_CLTLMT                                                     
           EXEC SQL DECLARE CLTLMT TABLE                                        
           (                                                                    
             R_TYPE                   CHAR(1) NOT NULL,                         
             LMT_NO                   DEC(10, 0) NOT NULL,                      
             CTR_PNT                  CHAR(11) NOT NULL,                        
             LEVEL                    CHAR(1) NOT NULL,                         
             LEVEL_NO                 DEC(4, 0) NOT NULL,                       
             FATHER                   DEC(10, 0) NOT NULL,                      
             TOP_FATHER               DEC(10, 0) NOT NULL,                      
             EXPO_FLAG                CHAR(1) NOT NULL,                         
             CODE                     CHAR(8) NOT NULL,                         
             CCY                      CHAR(3) NOT NULL,                         
             MAX                      DEC(18, 2) NOT NULL,                      
             ACTUAL                   DEC(18, 2) NOT NULL,                      
             LOANABLE_VAL             DEC(18, 2) NOT NULL,                      
             AUTO_UPD_FLG             CHAR(1) NOT NULL,                         
             USE_BAL                  DEC(18, 2) NOT NULL,                      
             CUM_BAL                  DEC(18, 2) NOT NULL,                      
             AVA_BAL                  DEC(18, 2) NOT NULL,                      
             NET_AVA                  DEC(18, 2) NOT NULL,                      
             EMK_BAL                  DEC(18, 2) NOT NULL,                      
             TERM1                    CHAR(4) NOT NULL,                         
             TERM2                    CHAR(4) NOT NULL,                         
             TERM3                    CHAR(4) NOT NULL,                         
             MAX_TERM1                DEC(18, 2) NOT NULL,                      
             MAX_TERM2                DEC(18, 2) NOT NULL,                      
             MAX_TERM3                DEC(18, 2) NOT NULL,                      
             ACT_TERM1                DEC(18, 2) NOT NULL,                      
             ACT_TERM2                DEC(18, 2) NOT NULL,                      
             ACT_TERM3                DEC(18, 2) NOT NULL,                      
             USE_TERM1                DEC(18, 2) NOT NULL,                      
             USE_TERM2                DEC(18, 2) NOT NULL,                      
             USE_TERM3                DEC(18, 2) NOT NULL,                      
             CUM_TERM1                DEC(18, 2) NOT NULL,                      
             CUM_TERM2                DEC(18, 2) NOT NULL,                      
             CUM_TERM3                DEC(18, 2) NOT NULL,                      
             AVA_TERM1                DEC(18, 2) NOT NULL,                      
             AVA_TERM2                DEC(18, 2) NOT NULL,                      
             AVA_TERM3                DEC(18, 2) NOT NULL,                      
             NET_AVA_TERM1            DEC(18, 2) NOT NULL,                      
             NET_AVA_TERM2            DEC(18, 2) NOT NULL,                      
             NET_AVA_TERM3            DEC(18, 2) NOT NULL,                      
             EMK_TERM1                DEC(18, 2) NOT NULL,                      
             EMK_TERM2                DEC(18, 2) NOT NULL,                      
             EMK_TERM3                DEC(18, 2) NOT NULL,                      
             STATUS                   CHAR(32) NOT NULL,                        
             USE                      CHAR(1) NOT NULL,                         
             CLS                      CHAR(8) NOT NULL,                         
             RISK_WEIGHTED            DEC(3, 0) NOT NULL,                       
             EXPO_PCT1                DEC(3, 0) NOT NULL,                       
             EXPO_PCT2                DEC(3, 0) NOT NULL,                       
             UTIL_PER                 DEC(3, 0) NOT NULL,                       
             UTIL_AMT                 DEC(18, 2) NOT NULL,                      
             UTIL_CON                 CHAR(120) NOT NULL,                       
             LTV_PCT                  DEC(3, 0) NOT NULL,                       
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             NRVW_DATE                DEC(8, 0) NOT NULL,                       
             LRVW_DATE                DEC(8, 0) NOT NULL,                       
             RVW_FREQ                 CHAR(2) NOT NULL,                         
             EXTEND_DATE              DEC(8, 0) NOT NULL,                       
             AVAIL_DATE               DEC(8, 0) NOT NULL,                       
             OPTION_DATE              DEC(8, 0) NOT NULL,                       
             EXTEND_FLG               CHAR(1) NOT NULL,                         
             GTEE_FLG                 CHAR(1) NOT NULL,                         
             APR_DATE                 DEC(8, 0) NOT NULL,                       
             C1_EXPO_AMT              DEC(18, 2) NOT NULL,                      
             C1_USE_BAL               DEC(18, 2) NOT NULL,                      
             C1_CUM_BAL               DEC(18, 2) NOT NULL,                      
             C1_AVA_BAL               DEC(18, 2) NOT NULL,                      
             C1_COL_BAL               DEC(18, 2) NOT NULL,                      
             EXTEND_DD_FLAG           CHAR(1) NOT NULL,                         
             DD_INS_FLG               CHAR(1) NOT NULL,                         
             LN_FINAL_EXP_DATE        DEC(8, 0) NOT NULL,                       
             TENOR_DAYS               DEC(4, 0) NOT NULL,                       
             TENOR_UNIT               CHAR(1) NOT NULL,                         
             MIN_DD_AMT               DEC(18, 2) NOT NULL,                      
             MAX_DD_AMT               DEC(18, 2) NOT NULL,                      
             OCP_CMPY_LMT_FLG         CHAR(1) NOT NULL,                         
             CMPY_LMT_NO              DEC(10, 0) NOT NULL,                      
             PAY_OBJECT               CHAR(120) NOT NULL,                       
             MARG_PCT                 DEC(3, 0) NOT NULL,                       
             ISNBWD                   CHAR(1) NOT NULL,                         
             ISYWDB                   CHAR(1) NOT NULL,                         
             CREDITCTY                CHAR(4) NOT NULL,                         
             ISFORHK                  CHAR(1) NOT NULL,                         
             CRED_CON_NO              CHAR(60) NOT NULL,                        
             CRED_CON_SIGN_DT         DEC(8, 0) NOT NULL,                       
             CRED_CON_EXP_DT          DEC(8, 0) NOT NULL,                       
             INIT_MARG_PCT            DEC(3, 0) NOT NULL,                       
             MNT_MARG_PCT             DEC(3, 0) NOT NULL,                       
             STOP_LOS_PCT             DEC(3, 0) NOT NULL,                       
             RMK1                     CHAR(240) NOT NULL,                       
             RMK2                     CHAR(240) NOT NULL,                       
             RMK3                     CHAR(240) NOT NULL,                       
             LAST_USE_DATE            DEC(8, 0) NOT NULL,                       
             OVER_TIMES               DEC(4, 0) NOT NULL,                       
             OVER_MTIMES              DEC(4, 0) NOT NULL,                       
             OVER_YTIMES              DEC(4, 0) NOT NULL,                       
             HI_COMM                  DEC(18, 2) NOT NULL,                      
             HI_UTIL                  DEC(18, 2) NOT NULL,                      
             HI_COMM_M                DEC(18, 2) NOT NULL,                      
             HI_UTIL_M                DEC(18, 2) NOT NULL,                      
             HI_COMM_Y                DEC(18, 2) NOT NULL,                      
             HI_UTIL_Y                DEC(18, 2) NOT NULL,                      
             C_EXC_AMT                DEC(18, 2) NOT NULL,                      
             C_HI_EXC                 DEC(18, 2) NOT NULL,                      
             M_HI_EXC                 DEC(18, 2) NOT NULL,                      
             Y_HI_EXC                 DEC(18, 2) NOT NULL,                      
             AVRG_COMIT               DEC(18, 2) NOT NULL,                      
             AVRG_MCOMIT              DEC(18, 2) NOT NULL,                      
             AVRG_YCOMIT              DEC(18, 2) NOT NULL,                      
             AVRG_UTIL                DEC(18, 2) NOT NULL,                      
             AVRG_MUTIL               DEC(18, 2) NOT NULL,                      
             AVRG_YUTIL               DEC(18, 2) NOT NULL,                      
             M_AVRG_EXC               DEC(18, 2) NOT NULL,                      
             Y_AVRG_EXC               DEC(18, 2) NOT NULL,                      
             OVER_DAYS                DEC(4, 0) NOT NULL,                       
             OVER_MDAYS               DEC(4, 0) NOT NULL,                       
             OVER_YDAYS               DEC(4, 0) NOT NULL,                       
             FULL_BLOCK               CHAR(1) NOT NULL,                         
             FLTEMK_BAL               DEC(18, 2) NOT NULL,                      
             FOR_INDUS                CHAR(5) NOT NULL,                         
             EXSYS_LMT_CODE           CHAR(60) NOT NULL,                        
             APP_REC_DATE             DEC(8, 0) NOT NULL,                       
             SFGS_REF                 CHAR(20) NOT NULL,                        
             SFGS_EXP_DATE            DEC(8, 0) NOT NULL,                       
             SFGS_GTE_PCT             DEC(5, 2) NOT NULL,                       
             SGS_EXP_DATE             DEC(8, 0) NOT NULL,                       
             SPGS_EXP_DATE            DEC(8, 0) NOT NULL,                       
             PMDS_FLAG                CHAR(1) NOT NULL,                         
             LONG_NAME                CHAR(40) NOT NULL,                        
             SHORT_NAME               CHAR(16) NOT NULL,                        
             TYPE                     CHAR(10) NOT NULL,                        
             PRO_EXPOSURE             CHAR(16) NOT NULL,                        
             COUNTERPARTY             CHAR(20) NOT NULL,                        
             FOLDER                   CHAR(16) NOT NULL,                        
             ENFORCED                 CHAR(1) NOT NULL,                         
             AMT_TYPE                 CHAR(16) NOT NULL,                        
             TIME_BAND1               CHAR(16) NOT NULL,                        
             ALLOCATION1              DEC(18, 2) NOT NULL,                      
             TIME_BAND2               CHAR(16) NOT NULL,                        
             ALLOCATION2              DEC(18, 2) NOT NULL,                      
             TIME_BAND3               CHAR(16) NOT NULL,                        
             ALLOCATION3              DEC(18, 2) NOT NULL,                      
             INSTRUMENT               CHAR(16) NOT NULL,                        
             ADVAN_CLASS_CODE         CHAR(3) NOT NULL,                         
             COUNTRY_CODE             CHAR(4) NOT NULL,                         
             DIS_CODE                 CHAR(3) NOT NULL,                         
             RESTORY_LTV              DEC(3, 0) NOT NULL,                       
             PRCLCNG_AMT              DEC(18, 2) NOT NULL,                      
             LTV_LOAN                 DEC(5, 2) NOT NULL,                       
             DSR_BA_LN                DEC(5, 2) NOT NULL,                       
             DSR_STR_LN               DEC(5, 2) NOT NULL,                       
             MULT_LTV_RATIO           CHAR(1) NOT NULL,                         
             SOURCE_SYS_CD            CHAR(5) NOT NULL,                         
             UNCONFMD_UNIT            DEC(6, 0) NOT NULL,                       
             DEL_EFFDAT               DEC(8, 0) NOT NULL,                       
             DEL_REASON               CHAR(120) NOT NULL,                       
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TL                CHAR(8) NOT NULL,                         
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             UPDATE_DATE              DEC(8, 0) NOT NULL,                       
             UPDATE_TL                CHAR(8) NOT NULL,                         
             UPDATE_UNIT              DEC(6, 0) NOT NULL,                       
             CONF_UNIT                DEC(6, 0) NOT NULL,                       
             CONF_SUP                 CHAR(8) NOT NULL,                         
             CONF_DATE                DEC(8, 0) NOT NULL,                       
             OVER_SUP1                CHAR(8) NOT NULL,                         
             OVER_SUP2                CHAR(8) NOT NULL,                         
             VER_NO                   DEC(4, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTLMT                             *        
      ******************************************************************        
       01  CLR:LMT:.                                                            
           03 :LMT:_KEY.                                                        
              05 :LMT:_R_TYPE      DIC(TYP).                                    
                88 :LMT:_R_N               VALUE 'N'.                           
                88 :LMT:_R_D               VALUE 'D'.                           
                88 :LMT:_R_A               VALUE 'A'.                           
              05 :LMT:_LMT_NO      DIC(LMT_NO, P).                              
           03 :LMT:_CTR_PNT        DIC(CLC_CTLW).                               
          03 :LMT:_CTR_DATA REDEFINES :LMT:_CTR_PNT.                            
             05 :LMT:_CTR_TYPE     DIC(TYP     ).                               
                88 :LMT:_CTR_BY_LMT        VALUE 'L'.                           
                88 :LMT:_CTR_BY_COL        VALUE 'C'.                           
             05 :LMT:_CTR_NO       DIC(LMT_NO  ).                               
           03 :LMT:_LEVEL          DIC(TYP).                                    
                88 :LMT:_T_LVL             VALUE 'T'.                           
                88 :LMT:_M_LVL             VALUE 'M'.                           
                88 :LMT:_B_LVL             VALUE 'B'.                           
                88 :LMT:_X_LVL             VALUE 'X'.                           
           03 :LMT:_LEVEL_NO       DIC(NUM, P).                                 
           03 :LMT:_FATHER         DIC(LMT_NO, P).                              
           03 :LMT:_TOP_FATHER     DIC(LMT_NO, P).                              
           03 :LMT:_EXPO_FLAG      DIC(FLG).                                    
                88 :LMT:_EXPO_Y            VALUE 'Y'.                           
                88 :LMT:_EXPO_N            VALUE 'N'.                           
           03 :LMT:_CODE           DIC(LMT_KND).                                
           03 :LMT:_CCY            DIC(CCY).                                    
           03 :LMT:_MAX            DIC(TAMT_S, P).                              
           03 :LMT:_ACTUAL         DIC(TAMT_S, P).                              
           03 :LMT:_LOANABLE_VAL   DIC(TAMT_NS, P).                             
           03 :LMT:_AUTO_UPD_FLG   DIC(TYP).                                    
           03 :LMT:_USE_BAL        DIC(TBAL_S, P).                              
           03 :LMT:_CUM_BAL        DIC(TBAL_S, P).                              
           03 :LMT:_AVA_BAL        DIC(TBAL_S, P).                              
           03 :LMT:_NET_AVA        DIC(TBAL_S, P).                              
           03 :LMT:_EMK_BAL        DIC(TBAL_S, P).                              
           03 :LMT:_TERM1          DIC(TERM_CD).                                
           03 :LMT:_TERM2          DIC(TERM_CD).                                
           03 :LMT:_TERM3          DIC(TERM_CD).                                
           03 :LMT:_MAX_TERM1      DIC(TAMT_S, P).                              
           03 :LMT:_MAX_TERM2      DIC(TAMT_S, P).                              
           03 :LMT:_MAX_TERM3      DIC(TAMT_S, P).                              
           03 :LMT:_ACT_TERM1      DIC(TAMT_S, P).                              
           03 :LMT:_ACT_TERM2      DIC(TAMT_S, P).                              
           03 :LMT:_ACT_TERM3      DIC(TAMT_S, P).                              
           03 :LMT:_USE_TERM1      DIC(TAMT_S, P).                              
           03 :LMT:_USE_TERM2      DIC(TAMT_S, P).                              
           03 :LMT:_USE_TERM3      DIC(TAMT_S, P).                              
           03 :LMT:_CUM_TERM1      DIC(TAMT_S, P).                              
           03 :LMT:_CUM_TERM2      DIC(TAMT_S, P).                              
           03 :LMT:_CUM_TERM3      DIC(TAMT_S, P).                              
           03 :LMT:_AVA_TERM1      DIC(TAMT_S, P).                              
           03 :LMT:_AVA_TERM2      DIC(TAMT_S, P).                              
           03 :LMT:_AVA_TERM3      DIC(TAMT_S, P).                              
           03 :LMT:_NET_AVA_TERM1  DIC(TBAL_S, P).                              
           03 :LMT:_NET_AVA_TERM2  DIC(TBAL_S, P).                              
           03 :LMT:_NET_AVA_TERM3  DIC(TBAL_S, P).                              
           03 :LMT:_EMK_TERM1      DIC(TAMT_S, P).                              
           03 :LMT:_EMK_TERM2      DIC(TAMT_S, P).                              
           03 :LMT:_EMK_TERM3      DIC(TAMT_S, P).                              
           03 :LMT:_STATUS         DIC(STSW32).                                 
           03 :LMT:_STATUS_N REDEFINES :LMT:_STATUS.                            
              05 :LMT:_STS_C01     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C02     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C03     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C04     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C05     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C06     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C07     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C08     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C09     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C10     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C11     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C12     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C13     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C14     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C15     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C16     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C17     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C18     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C19     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C20     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C21     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C22     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C23     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C24     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C25     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C26     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C27     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C28     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C29     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C30     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C31     DIC(SEQ_1   ).                               
              05 :LMT:_STS_C32     DIC(SEQ_1   ).                               
           03 :LMT:_USE            DIC(TYP).                                    
                88 :LMT:_USE_N             VALUE 'N'.                           
                88 :LMT:_USE_R             VALUE 'R'.                           
                88 :LMT:_USE_C             VALUE 'C'.                           
                88 :LMT:_USE_D             VALUE 'D'.                           
           03 :LMT:_CLS            DIC(LMT_STSW).                               
           03 :LMT:_CLS_N REDEFINES :LMT:_CLS.                                  
              05 :LMT:_CLS_C01     DIC(SEQ_1   ).                               
              05 :LMT:_CLS_C02     DIC(SEQ_1   ).                               
              05 :LMT:_CLS_C03     DIC(SEQ_1   ).                               
              05 :LMT:_CLS_C04     DIC(SEQ_1   ).                               
              05 :LMT:_CLS_C05     DIC(SEQ_1   ).                               
              05 :LMT:_CLS_C06     DIC(SEQ_1   ).                               
              05 :LMT:_CLS_C07     DIC(SEQ_1   ).                               
              05 :LMT:_CLS_C08     DIC(SEQ_1   ).                               
           03 :LMT:_RISK_WEIGHTED  DIC(NMR_DENR, P).                            
           03 :LMT:_EXPO_PCT1      DIC(NMR_DENR, P).                            
           03 :LMT:_EXPO_PCT2      DIC(NMR_DENR, P).                            
           03 :LMT:_UTIL_PER       DIC(NMR_DENR, P).                            
           03 :LMT:_UTIL_AMT       DIC(TAMT_S, P).                              
           03 :LMT:_UTIL_CON       DIC(RMK_60).                                 
           03 :LMT:_LTV_PCT        DIC(NMR_DENR, P).                            
           03 :LMT:_EFF_DATE       DIC(DT, P).                                  
           03 :LMT:_EXP_DATE       DIC(DT, P).                                  
           03 :LMT:_NRVW_DATE      DIC(DT, P).                                  
           03 :LMT:_LRVW_DATE      DIC(DT, P).                                  
           03 :LMT:_RVW_FREQ       DIC(TYPE).                                   
           03 :LMT:_EXTEND_DATE    DIC(DT, P).                                  
           03 :LMT:_AVAIL_DATE     DIC(DT, P).                                  
           03 :LMT:_OPTION_DATE    DIC(DT, P).                                  
           03 :LMT:_EXTEND_FLG     DIC(OPT).                                    
           03 :LMT:_GTEE_FLG       DIC(FLG).                                    
           03 :LMT:_APR_DATE       DIC(DT, P).                                  
           03 :LMT:_C1_EXPO_AMT    DIC(TAMT_S, P).                              
           03 :LMT:_C1_USE_BAL     DIC(TBAL_S, P).                              
           03 :LMT:_C1_CUM_BAL     DIC(TBAL_S, P).                              
           03 :LMT:_C1_AVA_BAL     DIC(TBAL_S, P).                              
           03 :LMT:_C1_COL_BAL     DIC(TBAL_S, P).                              
           03 :LMT:_EXTEND_DD_FLAG DIC(FLG).                                    
           03 :LMT:_DD_INS_FLG     DIC(FLG).                                    
           03 :LMT:_LN_FINAL_EXP_DATE DIC(DT, P).                               
           03 :LMT:_TENOR_DAYS     DIC(NUM, P).                                 
           03 :LMT:_TENOR_UNIT     DIC(OPT).                                    
           03 :LMT:_MIN_DD_AMT     DIC(TAMT_S, P).                              
           03 :LMT:_MAX_DD_AMT     DIC(TAMT_S, P).                              
           03 :LMT:_OCP_CMPY_LMT_FLG DIC(FLG).                                  
           03 :LMT:_CMPY_LMT_NO    DIC(LMT_NO, P).                              
           03 :LMT:_PAY_OBJECT     DIC(RMK_60).                                 
           03 :LMT:_MARG_PCT       DIC(NMR_DENR, P).                            
           03 :LMT:_ISNBWD         DIC(OPT).                                    
           03 :LMT:_ISYWDB         DIC(OPT).                                    
           03 :LMT:_CREDITCTY      DIC(CNTYS_CD).                               
           03 :LMT:_ISFORHK        DIC(FLG).                                    
           03 :LMT:_CRED_CON_NO    DIC(DESC_30).                                
           03 :LMT:_CRED_CON_SIGN_DT DIC(DT, P).                                
           03 :LMT:_CRED_CON_EXP_DT DIC(DT, P).                                 
           03 :LMT:_INIT_MARG_PCT  DIC(NMR_DENR, P).                            
           03 :LMT:_MNT_MARG_PCT   DIC(NMR_DENR, P).                            
           03 :LMT:_STOP_LOS_PCT   DIC(NMR_DENR, P).                            
           03 :LMT:_RMK1           DIC(RMK_120).                                
           03 :LMT:_RMK2           DIC(RMK_120).                                
           03 :LMT:_RMK3           DIC(RMK_120).                                
           03 :LMT:_LAST_USE_DATE  DIC(DT, P).                                  
           03 :LMT:_OVER_TIMES     DIC(NUM, P).                                 
           03 :LMT:_OVER_MTIMES    DIC(NUM, P).                                 
           03 :LMT:_OVER_YTIMES    DIC(NUM, P).                                 
           03 :LMT:_HI_COMM        DIC(TAMT_S, P).                              
           03 :LMT:_HI_UTIL        DIC(TBAL_S, P).                              
           03 :LMT:_HI_COMM_M      DIC(TAMT_S, P).                              
           03 :LMT:_HI_UTIL_M      DIC(TBAL_S, P).                              
           03 :LMT:_HI_COMM_Y      DIC(TAMT_S, P).                              
           03 :LMT:_HI_UTIL_Y      DIC(TBAL_S, P).                              
           03 :LMT:_C_EXC_AMT      DIC(TAMT_S, P).                              
           03 :LMT:_C_HI_EXC       DIC(TAMT_S, P).                              
           03 :LMT:_M_HI_EXC       DIC(TAMT_S, P).                              
           03 :LMT:_Y_HI_EXC       DIC(TAMT_S, P).                              
           03 :LMT:_AVRG_COMIT     DIC(TAMT_S, P).                              
           03 :LMT:_AVRG_MCOMIT    DIC(TAMT_S, P).                              
           03 :LMT:_AVRG_YCOMIT    DIC(TAMT_S, P).                              
           03 :LMT:_AVRG_UTIL      DIC(TBAL_S, P).                              
           03 :LMT:_AVRG_MUTIL     DIC(TBAL_S, P).                              
           03 :LMT:_AVRG_YUTIL     DIC(TBAL_S, P).                              
           03 :LMT:_M_AVRG_EXC     DIC(TAMT_S, P).                              
           03 :LMT:_Y_AVRG_EXC     DIC(TAMT_S, P).                              
           03 :LMT:_OVER_DAYS      DIC(NUM, P).                                 
           03 :LMT:_OVER_MDAYS     DIC(NUM, P).                                 
           03 :LMT:_OVER_YDAYS     DIC(NUM, P).                                 
           03 :LMT:_FULL_BLOCK     DIC(OPT).                                    
           03 :LMT:_FLTEMK_BAL     DIC(TBAL_S, P).                              
           03 :LMT:_FOR_INDUS      DIC(CIIND_CD).                               
           03 :LMT:_EXSYS_LMT_CODE DIC(DESCE_60).                               
           03 :LMT:_APP_REC_DATE   DIC(DT, P).                                  
           03 :LMT:_SFGS_REF       DIC(DESC_20).                                
           03 :LMT:_SFGS_EXP_DATE  DIC(DT, P).                                  
           03 :LMT:_SFGS_GTE_PCT   DIC(PCT, P).                                 
           03 :LMT:_SGS_EXP_DATE   DIC(DT, P).                                  
           03 :LMT:_SPGS_EXP_DATE  DIC(DT, P).                                  
           03 :LMT:_PMDS_FLAG      DIC(FLG).                                    
           03 :LMT:_LONG_NAME      DIC(X40).                                    
           03 :LMT:_SHORT_NAME     DIC(X16).                                    
           03 :LMT:_TYPE           DIC(BIZ_FLG).                                
           03 :LMT:_PRO_EXPOSURE   DIC(X16).                                    
           03 :LMT:_COUNTERPARTY   DIC(DESC_20).                                
           03 :LMT:_FOLDER         DIC(X16).                                    
           03 :LMT:_ENFORCED       DIC(FLG).                                    
           03 :LMT:_AMT_TYPE       DIC(X16).                                    
           03 :LMT:_TIME_BAND1     DIC(X16).                                    
           03 :LMT:_ALLOCATION1    DIC(TBAL_NS, P).                             
           03 :LMT:_TIME_BAND2     DIC(X16).                                    
           03 :LMT:_ALLOCATION2    DIC(TBAL_NS, P).                             
           03 :LMT:_TIME_BAND3     DIC(X16).                                    
           03 :LMT:_ALLOCATION3    DIC(TBAL_NS, P).                             
           03 :LMT:_INSTRUMENT     DIC(X16).                                    
           03 :LMT:_ADVAN_CLASS_CODE DIC(X03).                                  
           03 :LMT:_COUNTRY_CODE   DIC(CNTYS_CD).                               
           03 :LMT:_DIS_CODE       DIC(CNTY_CD).                                
           03 :LMT:_RESTORY_LTV    DIC(NMR_DENR, P).                            
           03 :LMT:_PRCLCNG_AMT    DIC(TAMT_S, P).                              
           03 :LMT:_LTV_LOAN       DIC(PCT, P).                                 
           03 :LMT:_DSR_BA_LN      DIC(PCT, P).                                 
           03 :LMT:_DSR_STR_LN     DIC(PCT, P).                                 
           03 :LMT:_MULT_LTV_RATIO DIC(FLG).                                    
           03 :LMT:_SOURCE_SYS_CD  DIC(FREE_CD5).                               
           03 :LMT:_UNCONFMD_UNIT  DIC(BR, P).                                  
           03 :LMT:_DEL_EFFDAT     DIC(DT, P).                                  
           03 :LMT:_DEL_REASON     DIC(RSN).                                    
           03 :LMT:_CREATE_DATE    DIC(DT, P).                                  
           03 :LMT:_CREATE_TL      DIC(TLR_NO).                                 
           03 :LMT:_CREATE_UNIT    DIC(BR, P).                                  
           03 :LMT:_UPDATE_DATE    DIC(DT, P).                                  
           03 :LMT:_UPDATE_TL      DIC(TLR_NO).                                 
           03 :LMT:_UPDATE_UNIT    DIC(BR, P).                                  
           03 :LMT:_CONF_UNIT      DIC(BR, P).                                  
           03 :LMT:_CONF_SUP       DIC(TLR_NO).                                 
           03 :LMT:_CONF_DATE      DIC(DT, P).                                  
           03 :LMT:_OVER_SUP1      DIC(TLR_NO).                                 
           03 :LMT:_OVER_SUP2      DIC(TLR_NO).                                 
           03 :LMT:_VER_NO         DIC(VER_NO, P).                              
           03 :LMT:_UPDTBL_DATE    DIC(DT, P).                                  
           03 :LMT:_TS             PIC X(26).                                   
      *@*CHECKSUM 1817569935                                                    
       #IFNDEF TABLE_CLTMCAL                                                    
       #DEFINE TABLE_CLTMCAL                                                    
           EXEC SQL DECLARE CLTMCAL TABLE                                       
           (                                                                    
             TYPE                     CHAR(1) NOT NULL,                         
             COL_LMT_TYP              CHAR(8) NOT NULL,                         
             PRIORITY                 DEC(3, 0) NOT NULL,                       
             ALLOC_TYP                CHAR(8) NOT NULL,                         
             PRI_ALLOCATION1          CHAR(8) NOT NULL,                         
             PRI_ALLOCATION2          CHAR(8) NOT NULL,                         
             PRI_ALLOCATION3          CHAR(8) NOT NULL,                         
             PRI_ALLOCATION4          CHAR(8) NOT NULL,                         
             PRI_ALLOCATION5          CHAR(8) NOT NULL,                         
             PRI_ALLOCATION6          CHAR(8) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTMCAL                            *        
      ******************************************************************        
       01  CLR:MCAL:.                                                           
           03 :MCAL:_KEY.                                                       
              05 :MCAL:_TYPE       DIC(TYP).                                    
              05 :MCAL:_COL_LMT_TYP DIC(LMT_KND).                               
           03 :MCAL:_PRIORITY      DIC(SEQ_3, P).                               
           03 :MCAL:_ALLOC_TYP     DIC(LMT_KND).                                
           03 :MCAL:_PRI_ALLOCATION1 DIC(LMT_KND).                              
           03 :MCAL:_PRI_ALLOCATION2 DIC(LMT_KND).                              
           03 :MCAL:_PRI_ALLOCATION3 DIC(LMT_KND).                              
           03 :MCAL:_PRI_ALLOCATION4 DIC(LMT_KND).                              
           03 :MCAL:_PRI_ALLOCATION5 DIC(LMT_KND).                              
           03 :MCAL:_PRI_ALLOCATION6 DIC(LMT_KND).                              
           03 :MCAL:_CRT_DATE      DIC(DT, P).                                  
           03 :MCAL:_CRT_TLR       DIC(TLR_NO).                                 
           03 :MCAL:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :MCAL:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :MCAL:_TS            PIC X(26).                                   
      *@*CHECKSUM 2001588227                                                    
       #IFNDEF TABLE_CLTMCH                                                     
       #DEFINE TABLE_CLTMCH                                                     
           EXEC SQL DECLARE CLTMCH TABLE                                        
           (                                                                    
             R_TYPE                   CHAR(1) NOT NULL,                         
             SEQ_NO                   DEC(9, 0) NOT NULL,                       
             TYPE                     CHAR(1) NOT NULL,                         
             CI_NO                    CHAR(12) NOT NULL,                        
             PROD_CODE                CHAR(8) NOT NULL,                         
             LMT_CODE                 CHAR(8) NOT NULL,                         
             REC_STATUS               CHAR(1) NOT NULL,                         
             UNCONFMD_UNIT            DEC(6, 0) NOT NULL,                       
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TL                CHAR(8) NOT NULL,                         
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             UPDATE_DATE              DEC(8, 0) NOT NULL,                       
             UPDATE_TL                CHAR(8) NOT NULL,                         
             UPDATE_UNIT              DEC(6, 0) NOT NULL,                       
             CONF_UNIT                DEC(6, 0) NOT NULL,                       
             CONF_SUP                 CHAR(8) NOT NULL,                         
             CONF_DATE                DEC(8, 0) NOT NULL,                       
             OVER_SUP1                CHAR(8) NOT NULL,                         
             OVER_SUP2                CHAR(8) NOT NULL,                         
             VER_NO                   DEC(4, 0) NOT NULL,                       
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTMCH                             *        
      ******************************************************************        
       01  CLR:MCH:.                                                            
           03 :MCH:_KEY.                                                        
              05 :MCH:_R_TYPE      DIC(TYP).                                    
                88 :MCH:_R_N               VALUE 'N'.                           
                88 :MCH:_R_D               VALUE 'D'.                           
                88 :MCH:_R_A               VALUE 'A'.                           
              05 :MCH:_SEQ_NO      DIC(SEQ, P).                                 
           03 :MCH:_TYPE           DIC(TYP).                                    
           03 :MCH:_CI_NO          DIC(CI_NO).                                  
           03 :MCH:_PROD_CODE      DIC(PROD_CD).                                
           03 :MCH:_LMT_CODE       DIC(LMT_KND).                                
           03 :MCH:_REC_STATUS     DIC(REC_STS).                                
                88 :MCH:_UNCONF_ADD        VALUE 'A'.                           
                88 :MCH:_UNCONF_UPD        VALUE 'U'.                           
                88 :MCH:_UNCONF_DEL        VALUE 'D'.                           
           03 :MCH:_UNCONFMD_UNIT  DIC(BR, P).                                  
           03 :MCH:_CREATE_DATE    DIC(DT, P).                                  
           03 :MCH:_CREATE_TL      DIC(TLR_NO).                                 
           03 :MCH:_CREATE_UNIT    DIC(BR, P).                                  
           03 :MCH:_UPDATE_DATE    DIC(DT, P).                                  
           03 :MCH:_UPDATE_TL      DIC(TLR_NO).                                 
           03 :MCH:_UPDATE_UNIT    DIC(BR, P).                                  
           03 :MCH:_CONF_UNIT      DIC(BR, P).                                  
           03 :MCH:_CONF_SUP       DIC(TLR_NO).                                 
           03 :MCH:_CONF_DATE      DIC(DT, P).                                  
           03 :MCH:_OVER_SUP1      DIC(TLR_NO).                                 
           03 :MCH:_OVER_SUP2      DIC(TLR_NO).                                 
           03 :MCH:_VER_NO         DIC(VER_NO, P).                              
           03 :MCH:_CRT_DATE       DIC(DT, P).                                  
           03 :MCH:_CRT_TLR        DIC(TLR_NO).                                 
           03 :MCH:_UPDTBL_DATE    DIC(DT, P).                                  
           03 :MCH:_UPDTBL_TLR     DIC(TLR_NO).                                 
           03 :MCH:_TS             PIC X(26).                                   
      *@*CHECKSUM _1670142958                                                   
       #IFNDEF TABLE_CLTPRP2                                                    
       #DEFINE TABLE_CLTPRP2                                                    
           EXEC SQL DECLARE CLTPRP2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             ADDR1                    CHAR(200) NOT NULL,                       
             ADDR2                    CHAR(200) NOT NULL,                       
             ADDR3                    CHAR(200) NOT NULL,                       
             ADDR4                    CHAR(200) NOT NULL,                       
             ADDR5                    CHAR(200) NOT NULL,                       
             ADDR6                    CHAR(200) NOT NULL,                       
             CITY_CODE                CHAR(6) NOT NULL,                         
             CNTY_CODE                CHAR(4) NOT NULL,                         
             DISCT                    CHAR(4) NOT NULL,                         
             GROSS_AREA               DEC(6, 0) NOT NULL,                       
             NET_AREAE                DEC(6, 0) NOT NULL,                       
             USAGE_CODE               CHAR(5) NOT NULL,                         
             RENT_FLAG                CHAR(1) NOT NULL,                         
             DEVP_CI                  CHAR(12) NOT NULL,                        
             DEVP_NAME                CHAR(140) NOT NULL,                       
             HAIRCUT                  DEC(3, 0) NOT NULL,                       
             VSR                      DEC(18, 2) NOT NULL,                      
             PUR_PRICE                DEC(18, 2) NOT NULL,                      
             GRO_DEV_VAL1             DEC(18, 2) NOT NULL,                      
             GRO_DEV_VAL2             DEC(18, 2) NOT NULL,                      
             MLSS_REF                 CHAR(30) NOT NULL,                        
             APPRAISERI_VAL           DEC(14, 2) NOT NULL,                      
             APPRAISERI_DT            DEC(8, 0) NOT NULL,                       
             VSR_APPRA_INTI           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_INTI_DT        DEC(8, 0) NOT NULL,                       
             APPRAISER1_NM            CHAR(50) NOT NULL,                        
             APPRAISER1_VAL           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT1           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT1_DT        DEC(8, 0) NOT NULL,                       
             APPRAISER1_DT            DEC(8, 0) NOT NULL,                       
             APPRAISER1_TYP           CHAR(1) NOT NULL,                         
             APPRAISER2_NM            CHAR(50) NOT NULL,                        
             APPRAISER2_VAL           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT2           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT2_DT        DEC(8, 0) NOT NULL,                       
             APPRAISER2_DT            DEC(8, 0) NOT NULL,                       
             APPRAISER2_TYP           CHAR(1) NOT NULL,                         
             APPRAISER3_NM            CHAR(50) NOT NULL,                        
             APPRAISER3_VAL           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT3           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT3_DT        DEC(8, 0) NOT NULL,                       
             APPRAISER3_DT            DEC(8, 0) NOT NULL,                       
             APPRAISER3_TYP           CHAR(1) NOT NULL,                         
             APPRAISER4_NM            CHAR(50) NOT NULL,                        
             APPRAISER4_VAL           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT4           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT4_DT        DEC(8, 0) NOT NULL,                       
             APPRAISER4_DT            DEC(8, 0) NOT NULL,                       
             APPRAISER4_TYP           CHAR(1) NOT NULL,                         
             APPRAISER5_NM            CHAR(50) NOT NULL,                        
             APPRAISER5_VAL           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT5           DEC(14, 2) NOT NULL,                      
             VSR_APPRA_EXT5_DT        DEC(8, 0) NOT NULL,                       
             APPRAISER5_DT            DEC(8, 0) NOT NULL,                       
             APPRAISER5_TYP           CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTPRP2                            *        
      ******************************************************************        
       01  CLR:PRP2:.                                                           
           03 :PRP2:_KEY.                                                       
              05 :PRP2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :PRP2:_R_TYPE        DIC(TYP).                                    
                 88 :PRP2:_R_N           VALUE 'N'.                             
                 88 :PRP2:_R_D           VALUE 'D'.                             
           03 :PRP2:_ADDR1         DIC(MIX_ADDR).                               
           03 :PRP2:_ADDR2         DIC(MIX_ADDR).                               
           03 :PRP2:_ADDR3         DIC(MIX_ADDR).                               
           03 :PRP2:_ADDR4         DIC(MIX_ADDR).                               
           03 :PRP2:_ADDR5         DIC(MIX_ADDR).                               
           03 :PRP2:_ADDR6         DIC(MIX_ADDR).                               
           03 :PRP2:_CITY_CODE     DIC(CITY_CD).                                
           03 :PRP2:_CNTY_CODE     DIC(CNTYS_CD).                               
           03 :PRP2:_DISCT         DIC(CARE_CD).                                
           03 :PRP2:_GROSS_AREA    DIC(LEN_6, P).                               
           03 :PRP2:_NET_AREAE     DIC(LEN_6, P).                               
           03 :PRP2:_USAGE_CODE    DIC(FREE_CD5).                               
           03 :PRP2:_RENT_FLAG     DIC(FLG).                                    
           03 :PRP2:_DEVP_CI       DIC(CI_NO).                                  
           03 :PRP2:_DEVP_NAME     DIC(CI_ENM).                                 
           03 :PRP2:_HAIRCUT       DIC(NMR_DENR, P).                            
           03 :PRP2:_VSR           DIC(TAMT_NS, P).                             
           03 :PRP2:_PUR_PRICE     DIC(TAMT_NS, P).                             
           03 :PRP2:_GRO_DEV_VAL1  DIC(TAMT_NS, P).                             
           03 :PRP2:_GRO_DEV_VAL2  DIC(TAMT_NS, P).                             
           03 :PRP2:_MLSS_REF      DIC(SRC_REF).                                
           03 :PRP2:_APPRAISERI_VAL DIC(AMT_1, P).                              
           03 :PRP2:_APPRAISERI_DT DIC(DT, P).                                  
           03 :PRP2:_VSR_APPRA_INTI DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_INTI_DT DIC(DT, P).                              
           03 :PRP2:_APPRAISER1_NM DIC(X50).                                    
           03 :PRP2:_APPRAISER1_VAL DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT1 DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT1_DT DIC(DT, P).                              
           03 :PRP2:_APPRAISER1_DT DIC(DT, P).                                  
           03 :PRP2:_APPRAISER1_TYP DIC(TYP).                                   
           03 :PRP2:_APPRAISER2_NM DIC(X50).                                    
           03 :PRP2:_APPRAISER2_VAL DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT2 DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT2_DT DIC(DT, P).                              
           03 :PRP2:_APPRAISER2_DT DIC(DT, P).                                  
           03 :PRP2:_APPRAISER2_TYP DIC(TYP).                                   
           03 :PRP2:_APPRAISER3_NM DIC(X50).                                    
           03 :PRP2:_APPRAISER3_VAL DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT3 DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT3_DT DIC(DT, P).                              
           03 :PRP2:_APPRAISER3_DT DIC(DT, P).                                  
           03 :PRP2:_APPRAISER3_TYP DIC(TYP).                                   
           03 :PRP2:_APPRAISER4_NM DIC(X50).                                    
           03 :PRP2:_APPRAISER4_VAL DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT4 DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT4_DT DIC(DT, P).                              
           03 :PRP2:_APPRAISER4_DT DIC(DT, P).                                  
           03 :PRP2:_APPRAISER4_TYP DIC(TYP).                                   
           03 :PRP2:_APPRAISER5_NM DIC(X50).                                    
           03 :PRP2:_APPRAISER5_VAL DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT5 DIC(AMT_1, P).                              
           03 :PRP2:_VSR_APPRA_EXT5_DT DIC(DT, P).                              
           03 :PRP2:_APPRAISER5_DT DIC(DT, P).                                  
           03 :PRP2:_APPRAISER5_TYP DIC(TYP).                                   
           03 :PRP2:_CRT_DATE      DIC(DT, P).                                  
           03 :PRP2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :PRP2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :PRP2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :PRP2:_TS            PIC X(26).                                   
      *@*CHECKSUM 1288433702                                                    
       #IFNDEF TABLE_CLTSBLC2                                                   
       #DEFINE TABLE_CLTSBLC2                                                   
           EXEC SQL DECLARE CLTSBLC2 TABLE                                      
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             GUAR_CI_NO               CHAR(12) NOT NULL,                        
             GUAR_ENG_NAME            CHAR(140) NOT NULL,                       
             REF_NO                   CHAR(60) NOT NULL,                        
             SBLC_CCY                 CHAR(3) NOT NULL,                         
             SBLC_VAL                 DEC(18, 2) NOT NULL,                      
             EFF_DT                   DEC(8, 0) NOT NULL,                       
             MAT_DT                   DEC(8, 0) NOT NULL,                       
             APP_CI_NO                CHAR(12) NOT NULL,                        
             APP_CI_NAME              CHAR(140) NOT NULL,                       
             BANK_COUNTRY             CHAR(4) NOT NULL,                         
             COUNTER_TYP              CHAR(1) NOT NULL,                         
             USED_LMT_FLG             CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTSBLC2                           *        
      ******************************************************************        
       01  CLR:SBLC2:.                                                          
           03 :SBLC2:_KEY.                                                      
              05 :SBLC2:_COLL_NO   DIC(GTEE_NO, P).                             
           03 :SBLC2:_R_TYPE       DIC(TYP).                                    
                88 :SBLC2:_R_N           VALUE 'N'.                             
                88 :SBLC2:_R_D           VALUE 'D'.                             
                88 :SBLC2:_R_A           VALUE 'A'.                             
           03 :SBLC2:_GUAR_CI_NO   DIC(CI_NO).                                  
           03 :SBLC2:_GUAR_ENG_NAME DIC(CI_ENM).                                
           03 :SBLC2:_REF_NO       DIC(DESC_30).                                
           03 :SBLC2:_SBLC_CCY     DIC(CCY).                                    
           03 :SBLC2:_SBLC_VAL     DIC(TAMT_NS, P).                             
           03 :SBLC2:_EFF_DT       DIC(DT, P).                                  
           03 :SBLC2:_MAT_DT       DIC(DT, P).                                  
           03 :SBLC2:_APP_CI_NO    DIC(CI_NO).                                  
           03 :SBLC2:_APP_CI_NAME  DIC(CI_ENM).                                 
           03 :SBLC2:_BANK_COUNTRY DIC(CNTYS_CD).                               
           03 :SBLC2:_COUNTER_TYP  DIC(TYP).                                    
           03 :SBLC2:_USED_LMT_FLG DIC(FLG).                                    
                88 :SBLC2:_USE_LMT_Y     VALUE 'Y'.                             
                88 :SBLC2:_USE_LMT_N     VALUE 'N'.                             
           03 :SBLC2:_CRT_DATE     DIC(DT, P).                                  
           03 :SBLC2:_CRT_TLR      DIC(TLR_NO).                                 
           03 :SBLC2:_UPDTBL_DATE  DIC(DT, P).                                  
           03 :SBLC2:_UPDTBL_TLR   DIC(TLR_NO).                                 
           03 :SBLC2:_TS           PIC X(26).                                   
      *@*CHECKSUM 1605290626                                                    
       #IFNDEF TABLE_CLTSLR                                                     
       #DEFINE TABLE_CLTSLR                                                     
           EXEC SQL DECLARE CLTSLR TABLE                                        
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             LMT_NO                   DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             COLL_TYPE                DEC(4, 0) NOT NULL,                       
             LMT_REQ_AMT1             DEC(18, 2) NOT NULL,                      
             LMT_REQ_PCT              DEC(11, 8) NOT NULL,                      
             LTV_FLG                  CHAR(1) NOT NULL,                         
             USE_BAL                  DEC(18, 2) NOT NULL,                      
             COLL_SUPP_RATIO          DEC(5, 2) NOT NULL,                       
             AUT_UPD_LMT              CHAR(1) NOT NULL,                         
             REC_STATUS               CHAR(1) NOT NULL,                         
             UNCONFMD_UNIT            DEC(6, 0) NOT NULL,                       
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TL                CHAR(8) NOT NULL,                         
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             UPDATE_DATE              DEC(8, 0) NOT NULL,                       
             UPDATE_TL                CHAR(8) NOT NULL,                         
             UPDATE_UNIT              DEC(6, 0) NOT NULL,                       
             CONF_UNIT                DEC(6, 0) NOT NULL,                       
             CONF_SUP                 CHAR(8) NOT NULL,                         
             CONF_DATE                DEC(8, 0) NOT NULL,                       
             OVER_SUP1                CHAR(8) NOT NULL,                         
             OVER_SUP2                CHAR(8) NOT NULL,                         
             VER_NO                   DEC(4, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTSLR                             *        
      ******************************************************************        
       01  CLR:SLR:.                                                            
           03 :SLR:_KEY.                                                        
              05 :SLR:_COLL_NO     DIC(GTEE_NO, P).                             
              05 :SLR:_LMT_NO      DIC(LMT_NO, P).                              
           03 :SLR:_R_TYPE         DIC(TYP).                                    
                 88 :SLR:_R_N           VALUE 'N'.                              
                 88 :SLR:_R_D           VALUE 'D'.                              
                 88 :SLR:_R_A           VALUE 'A'.                              
           03 :SLR:_COLL_TYPE      DIC(COL_KND, P).                             
           03 :SLR:_LMT_REQ_AMT1   DIC(TAMT_NS, P).                             
           03 :SLR:_LMT_REQ_PCT    DIC(PCT_11, P).                              
           03 :SLR:_LTV_FLG        DIC(FLG).                                    
           03 :SLR:_USE_BAL        DIC(TAMT_NS, P).                             
           03 :SLR:_COLL_SUPP_RATIO DIC(PCT, P).                                
           03 :SLR:_AUT_UPD_LMT    DIC(FLG).                                    
           03 :SLR:_REC_STATUS     DIC(REC_STS).                                
                 88 :SLR:_UNCONF_ADD    VALUE 'A'.                              
                 88 :SLR:_UNCONF_UPD    VALUE 'U'.                              
                 88 :SLR:_UNCONF_DEL    VALUE 'D'.                              
           03 :SLR:_UNCONFMD_UNIT  DIC(BR, P).                                  
           03 :SLR:_CREATE_DATE    DIC(DT, P).                                  
           03 :SLR:_CREATE_TL      DIC(TLR_NO).                                 
           03 :SLR:_CREATE_UNIT    DIC(BR, P).                                  
           03 :SLR:_UPDATE_DATE    DIC(DT, P).                                  
           03 :SLR:_UPDATE_TL      DIC(TLR_NO).                                 
           03 :SLR:_UPDATE_UNIT    DIC(BR, P).                                  
           03 :SLR:_CONF_UNIT      DIC(BR, P).                                  
           03 :SLR:_CONF_SUP       DIC(TLR_NO).                                 
           03 :SLR:_CONF_DATE      DIC(DT, P).                                  
           03 :SLR:_OVER_SUP1      DIC(TLR_NO).                                 
           03 :SLR:_OVER_SUP2      DIC(TLR_NO).                                 
           03 :SLR:_VER_NO         DIC(VER_NO, P).                              
           03 :SLR:_UPDTBL_DATE    DIC(DT, P).                                  
           03 :SLR:_TS             PIC X(26).                                   
      *@*CHECKSUM _1595711678                                                   
       #IFNDEF TABLE_CLTSRE                                                     
       #DEFINE TABLE_CLTSRE                                                     
           EXEC SQL DECLARE CLTSRE TABLE                                        
           (                                                                    
             R_TYPE                   CHAR(1) NOT NULL,                         
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             SHR_NAME                 CHAR(140) NOT NULL,                       
             SHR_CODE                 CHAR(8) NOT NULL,                         
             MIE_IND                  CHAR(1) NOT NULL,                         
             ISUR_NAME                CHAR(140) NOT NULL,                       
             LIST_IND                 CHAR(1) NOT NULL,                         
             SHR_EX_CODE              CHAR(2) NOT NULL,                         
             SHR_CLASS                DEC(2, 0) NOT NULL,                       
             SHR_TYP                  CHAR(1) NOT NULL,                         
             SHR_PRICE                DEC(18, 5) NOT NULL,                      
             SHR_NUM                  DEC(13, 0) NOT NULL,                      
             OWNR_NAME                CHAR(140) NOT NULL,                       
             SHR_IDT_OWNR_FLG         CHAR(1) NOT NULL,                         
             SHR_CCY                  CHAR(3) NOT NULL,                         
             LIMIT_SALE_FLAG          CHAR(1) NOT NULL,                         
             LIMIT_SALE_EDT           DEC(8, 0) NOT NULL,                       
             STOCK_TYPE               CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTSRE                             *        
      ******************************************************************        
       01  CLR:SRE:.                                                            
           03 :SRE:_KEY.                                                        
              05 :SRE:_R_TYPE      DIC(TYP).                                    
                88 :SRE:_R_N               VALUE 'N'.                           
                88 :SRE:_R_D               VALUE 'D'.                           
                88 :SRE:_R_A               VALUE 'A'.                           
              05 :SRE:_COLL_NO     DIC(GTEE_NO, P).                             
           03 :SRE:_SHR_NAME       DIC(CI_CNM).                                 
           03 :SRE:_SHR_CODE       DIC(STK_NO).                                 
           03 :SRE:_MIE_IND        DIC(FLG).                                    
           03 :SRE:_ISUR_NAME      DIC(CI_CNM).                                 
           03 :SRE:_LIST_IND       DIC(FLG).                                    
           03 :SRE:_SHR_EX_CODE    DIC(STMKT_CD).                               
           03 :SRE:_SHR_CLASS      DIC(LVL, P).                                 
           03 :SRE:_SHR_TYP        DIC(TYP).                                    
           03 :SRE:_SHR_PRICE      DIC(SINT_AMT, P).                            
           03 :SRE:_SHR_NUM        DIC(NUM_13, P).                              
           03 :SRE:_OWNR_NAME      DIC(CI_CNM).                                 
           03 :SRE:_SHR_IDT_OWNR_FLG DIC(FLG).                                  
           03 :SRE:_SHR_CCY        DIC(CCY).                                    
           03 :SRE:_LIMIT_SALE_FLAG DIC(FLG).                                   
           03 :SRE:_LIMIT_SALE_EDT DIC(DT, P).                                  
           03 :SRE:_STOCK_TYPE     DIC(TYP).                                    
           03 :SRE:_CRT_DATE       DIC(DT, P).                                  
           03 :SRE:_CRT_TLR        DIC(TLR_NO).                                 
           03 :SRE:_UPDTBL_DATE    DIC(DT, P).                                  
           03 :SRE:_UPDTBL_TLR     DIC(TLR_NO).                                 
           03 :SRE:_TS             PIC X(26).                                   
      *@*CHECKSUM _1893682030                                                   
       #IFNDEF TABLE_CLTSRE2                                                    
       #DEFINE TABLE_CLTSRE2                                                    
           EXEC SQL DECLARE CLTSRE2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             SHR_NAME                 CHAR(140) NOT NULL,                       
             SHR_CODE                 CHAR(8) NOT NULL,                         
             MIE_IND                  CHAR(1) NOT NULL,                         
             ISUR_NAME                CHAR(140) NOT NULL,                       
             LIST_IND                 CHAR(1) NOT NULL,                         
             STOCK_EX                 CHAR(5) NOT NULL,                         
             SHR_CLASS                DEC(2, 0) NOT NULL,                       
             SHR_NATURE               CHAR(1) NOT NULL,                         
             SHR_PRICE                DEC(18, 4) NOT NULL,                      
             SHR_NUM                  DEC(18, 2) NOT NULL,                      
             OWNR_NAME                CHAR(140) NOT NULL,                       
             OWNER_SHR_IDENT          CHAR(1) NOT NULL,                         
             SHR_CCY                  CHAR(3) NOT NULL,                         
             LIMIT_SALE_FLAG          CHAR(1) NOT NULL,                         
             LIMIT_SALE_EDT           DEC(8, 0) NOT NULL,                       
             STOCK_TYP                CHAR(1) NOT NULL,                         
             COUN_TYP                 CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTSRE2                            *        
      ******************************************************************        
       01  CLR:SRE2:.                                                           
           03 :SRE2:_KEY.                                                       
              05 :SRE2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :SRE2:_R_TYPE        DIC(TYP).                                    
                88 :SRE2:_R_N               VALUE 'N'.                          
                88 :SRE2:_R_D               VALUE 'D'.                          
           03 :SRE2:_SHR_NAME      DIC(CI_ENM).                                 
           03 :SRE2:_SHR_CODE      DIC(STK_NO).                                 
           03 :SRE2:_MIE_IND       DIC(FLG).                                    
                88 :SRE2:_M_YES             VALUE 'Y'.                          
                88 :SRE2:_M_NO              VALUE 'N'.                          
           03 :SRE2:_ISUR_NAME     DIC(CI_ENM).                                 
           03 :SRE2:_LIST_IND      DIC(FLG).                                    
                88 :SRE2:_L_YES             VALUE 'Y'.                          
                88 :SRE2:_L_NO              VALUE 'N'.                          
           03 :SRE2:_STOCK_EX      DIC(FREE_CD5).                               
           03 :SRE2:_SHR_CLASS     DIC(LVL, P).                                 
                88 :SRE2:_P_SHR             VALUE 01.                           
                88 :SRE2:_O_SHR             VALUE 02.                           
           03 :SRE2:_SHR_NATURE    DIC(TYP).                                    
           03 :SRE2:_SHR_PRICE     DIC(AMT_SHR, P).                             
           03 :SRE2:_SHR_NUM       DIC(TAMT, P).                                
           03 :SRE2:_OWNR_NAME     DIC(CI_ENM).                                 
           03 :SRE2:_OWNER_SHR_IDENT DIC(FLG).                                  
                88 :SRE2:_BORROW            VALUE 'B'.                          
                88 :SRE2:_NON_BORROW        VALUE 'N'.                          
           03 :SRE2:_SHR_CCY       DIC(CCY).                                    
           03 :SRE2:_LIMIT_SALE_FLAG DIC(FLG).                                  
                88 :SRE2:_R_YES             VALUE 'Y'.                          
                88 :SRE2:_R_NO              VALUE 'N'.                          
           03 :SRE2:_LIMIT_SALE_EDT DIC(DT, P).                                 
           03 :SRE2:_STOCK_TYP     DIC(TYP).                                    
           03 :SRE2:_COUN_TYP      DIC(TYP).                                    
           03 :SRE2:_CRT_DATE      DIC(DT, P).                                  
           03 :SRE2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :SRE2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :SRE2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :SRE2:_TS            PIC X(26).                                   
      *@*CHECKSUM _971376728                                                    
       #IFNDEF TABLE_CLTSUBC                                                    
       #DEFINE TABLE_CLTSUBC                                                    
           EXEC SQL DECLARE CLTSUBC TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             SUB_COLL_TYP             DEC(4, 0) NOT NULL,                       
             SUB_SEQ                  DEC(10, 0) NOT NULL,                      
             COLL_TYP                 DEC(4, 0) NOT NULL,                       
             SOURCE_SYS               CHAR(5) NOT NULL,                         
             SOURCE_REF               CHAR(60) NOT NULL,                        
             SOURCE_SUB_REF           CHAR(60) NOT NULL,                        
             DATE_LEN                 DEC(9, 0) NOT NULL,                       
             VAL                      VARCHAR(600) NOT NULL,                    
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTSUBC                            *        
      ******************************************************************        
       01  CLR:SUBC:.                                                           
           03 :SUBC:_KEY.                                                       
              05 :SUBC:_COLL_NO    DIC(GTEE_NO, P).                             
              05 :SUBC:_SUB_COLL_TYP DIC(COL_KND, P).                           
              05 :SUBC:_SUB_SEQ    DIC(N10, P).                                 
           03 :SUBC:_COLL_TYP      DIC(COL_KND, P).                             
           03 :SUBC:_SOURCE_SYS    DIC(FREE_CD5).                               
           03 :SUBC:_SOURCE_REF    DIC(DESCE_60).                               
           03 :SUBC:_SOURCE_SUB_REF DIC(DESCE_60).                              
           03 :SUBC:_DATE_LEN      DIC(LEN, P).                                 
           03 :SUBC:_VAL.                                                       
              49 :SUBC:_VAL_LEN    PIC S9(4) COMP.                              
              49 :SUBC:_VAL_TEXT   DIC(TXT_BIG, L600).                          
           03 :SUBC:_CRT_DATE      DIC(DT, P).                                  
           03 :SUBC:_CRT_TLR       DIC(TLR_NO).                                 
           03 :SUBC:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :SUBC:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :SUBC:_TS            PIC X(26).                                   
      *@*CHECKSUM 631469218                                                     
       #IFNDEF TABLE_CLTUSE                                                     
       #DEFINE TABLE_CLTUSE                                                     
           EXEC SQL DECLARE CLTUSE TABLE                                        
           (                                                                    
             AC_DATE                  DEC(8, 0) NOT NULL,                       
             SEQ_NO                   DEC(9, 0) NOT NULL,                       
             TX_TS                    TIMESTAMP NOT NULL,                       
             TX_CODE                  CHAR(7) NOT NULL,                         
             TX_UNIT                  DEC(6, 0) NOT NULL,                       
             TL_ID                    CHAR(8) NOT NULL,                         
             SUP1_ID                  CHAR(8) NOT NULL,                         
             SUP2_ID                  CHAR(8) NOT NULL,                         
             SYS_ID                   CHAR(8) NOT NULL,                         
             UPD_CHANNEL              CHAR(1) NOT NULL,                         
             ULMT_TYPE                CHAR(2) NOT NULL,                         
             AC_NO                    CHAR(25) NOT NULL,                        
             LOAN_NO                  CHAR(25) NOT NULL,                        
             PROD_CODE                CHAR(8) NOT NULL,                         
             LMT_NO                   DEC(10, 0) NOT NULL,                      
             LMT_CODE                 CHAR(8) NOT NULL,                         
             CI_NO                    CHAR(12) NOT NULL,                        
             EC_IND                   CHAR(1) NOT NULL,                         
             CCY                      CHAR(3) NOT NULL,                         
             AMT                      DEC(16, 2) NOT NULL,                      
             TX_AMT                   DEC(16, 2) NOT NULL,                      
             FOR_INDUS                CHAR(5) NOT NULL,                         
             RISK_CNTY                CHAR(3) NOT NULL,                         
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             TENOR                    DEC(6, 0) NOT NULL,                       
             GD_FLAG                  CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTUSE                             *        
      ******************************************************************        
       01  CLR:USE:.                                                            
           03 :USE:_KEY.                                                        
              05 :USE:_AC_DATE     DIC(DT, P).                                  
              05 :USE:_SEQ_NO      DIC(SEQ, P).                                 
              05 :USE:_TX_TS       PIC X(26).                                   
           03 :USE:_TX_CODE        DIC(TX_CD).                                  
           03 :USE:_TX_UNIT        DIC(BR, P).                                  
           03 :USE:_TL_ID          DIC(TLR_NO).                                 
           03 :USE:_SUP1_ID        DIC(TLR_NO).                                 
           03 :USE:_SUP2_ID        DIC(TLR_NO).                                 
           03 :USE:_SYS_ID         DIC(SYS_ID).                                 
           03 :USE:_UPD_CHANNEL    DIC(TYP).                                    
           03 :USE:_ULMT_TYPE      DIC(TYPE).                                   
                88 :USE:_LMT_EMK           VALUE '20'.                          
                88 :USE:_LMT_RLS_EMK       VALUE '21'.                          
                88 :USE:_RLS_AND_EMK       VALUE '22'.                          
                88 :USE:_LMT_USE           VALUE '30'.                          
                88 :USE:_LMT_RTN           VALUE '31'.                          
                88 :USE:_LMT_CORR_USE      VALUE '32'.                          
                88 :USE:_LMT_CORR_RTN      VALUE '33'.                          
           03 :USE:_AC_NO          DIC(CTA_NO).                                 
           03 :USE:_LOAN_NO        DIC(LN_AC).                                  
           03 :USE:_PROD_CODE      DIC(PROD_CD).                                
           03 :USE:_LMT_NO         DIC(LMT_NO, P).                              
           03 :USE:_LMT_CODE       DIC(LMT_KND).                                
           03 :USE:_CI_NO          DIC(CI_NO).                                  
           03 :USE:_EC_IND         DIC(FLG).                                    
           03 :USE:_CCY            DIC(CCY).                                    
           03 :USE:_AMT            DIC(AMT_S, P).                               
           03 :USE:_TX_AMT         DIC(AMT_S, P).                               
           03 :USE:_FOR_INDUS      DIC(CIIND_CD).                               
           03 :USE:_RISK_CNTY      DIC(CNTY_CD).                                
           03 :USE:_EFF_DATE       DIC(DT, P).                                  
           03 :USE:_EXP_DATE       DIC(DT, P).                                  
           03 :USE:_TENOR          DIC(I_DAYS, P).                              
           03 :USE:_GD_FLAG        DIC(FLG).                                    
           03 :USE:_CRT_DATE       DIC(DT, P).                                  
           03 :USE:_CRT_TLR        DIC(TLR_NO).                                 
           03 :USE:_UPDTBL_DATE    DIC(DT, P).                                  
           03 :USE:_UPDTBL_TLR     DIC(TLR_NO).                                 
           03 :USE:_TS             PIC X(26).                                   
      *@*CHECKSUM _94199372                                                     
       #IFNDEF TABLE_CLTUTC2                                                    
       #DEFINE TABLE_CLTUTC2                                                    
           EXEC SQL DECLARE CLTUTC2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             COUN_TYP                 CHAR(1) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTUTC2                            *        
      ******************************************************************        
       01  CLR:UTC2:.                                                           
           03 :UTC2:_KEY.                                                       
              05 :UTC2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :UTC2:_R_TYPE        DIC(TYP).                                    
                88 :UTC2:_R_N           VALUE 'N'.                              
                88 :UTC2:_R_D           VALUE 'D'.                              
           03 :UTC2:_COUN_TYP      DIC(TYP).                                    
           03 :UTC2:_CRT_DATE      DIC(DT, P).                                  
           03 :UTC2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :UTC2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :UTC2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :UTC2:_TS            PIC X(26).                                   
      *@*CHECKSUM 2084074784                                                    
       #IFNDEF TABLE_CLTVHL2                                                    
       #DEFINE TABLE_CLTVHL2                                                    
           EXEC SQL DECLARE CLTVHL2 TABLE                                       
           (                                                                    
             COLL_NO                  DEC(10, 0) NOT NULL,                      
             R_TYPE                   CHAR(1) NOT NULL,                         
             NAME                     CHAR(140) NOT NULL,                       
             IMP_PART_DESC            CHAR(180) NOT NULL,                       
             VEH_NO                   CHAR(10) NOT NULL,                        
             MAKE                     CHAR(140) NOT NULL,                       
             MODEL                    CHAR(60) NOT NULL,                        
             MANU_YEAR                DEC(4, 0) NOT NULL,                       
             CLASS                    CHAR(25) NOT NULL,                        
             VRD_ID                   CHAR(10) NOT NULL,                        
             CHASS_NUM                CHAR(40) NOT NULL,                        
             ENGINE_NUM               CHAR(25) NOT NULL,                        
             VEH_TYP                  CHAR(5) NOT NULL,                         
             CC_WG                    DEC(18, 2) NOT NULL,                      
             COLOUR                   CHAR(20) NOT NULL,                        
             BODY_TYP                 CHAR(120) NOT NULL,                       
             FR_DT                    DEC(8, 0) NOT NULL,                       
             INVEST_FLG               CHAR(1) NOT NULL,                         
             INS_DT                   DEC(8, 0) NOT NULL,                       
             LE_DT                    DEC(8, 0) NOT NULL,                       
             ST_CAP                   DEC(2, 0) NOT NULL,                       
             GRO_WG                   DEC(18, 2) NOT NULL,                      
             AXL_WG                   CHAR(10) NOT NULL,                        
             NEW_US                   CHAR(1) NOT NULL,                         
             NO_PO                    DEC(2, 0) NOT NULL,                       
             LTV_IN                   DEC(5, 2) NOT NULL,                       
             LTV_NET                  DEC(5, 2) NOT NULL,                       
             DSR_STR                  DEC(5, 2) NOT NULL,                       
             DSR                      DEC(5, 2) NOT NULL,                       
             ASS_CD                   CHAR(4) NOT NULL,                         
             USE_LF                   DEC(2, 0) NOT NULL,                       
             DEP_VAL                  DEC(18, 2) NOT NULL,                      
             PSL_CD1                  CHAR(3) NOT NULL,                         
             PSL_CD2                  CHAR(3) NOT NULL,                         
             PSL_CD3                  CHAR(3) NOT NULL,                         
             PSL_CD4                  CHAR(3) NOT NULL,                         
             PSL_CD5                  CHAR(3) NOT NULL,                         
             PSL_CD6                  CHAR(3) NOT NULL,                         
             PSL_CD7                  CHAR(3) NOT NULL,                         
             PSL_CD8                  CHAR(3) NOT NULL,                         
             CROSS_BOR                CHAR(3) NOT NULL,                         
             COM_CD                   CHAR(3) NOT NULL,                         
             VEH_USAGE                CHAR(3) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             UPDTBL_TLR               CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CLTVHL2                            *        
      ******************************************************************        
       01  CLR:VHL2:.                                                           
           03 :VHL2:_KEY.                                                       
              05 :VHL2:_COLL_NO    DIC(GTEE_NO, P).                             
           03 :VHL2:_R_TYPE        DIC(TYP).                                    
                 88 :VHL2:_R_N          VALUE 'N'.                              
                 88 :VHL2:_R_D          VALUE 'D'.                              
           03 :VHL2:_NAME          DIC(CI_ENM).                                 
           03 :VHL2:_IMP_PART_DESC DIC(DESC_90).                                
           03 :VHL2:_VEH_NO        DIC(X10).                                    
           03 :VHL2:_MAKE          DIC(CI_ENM).                                 
           03 :VHL2:_MODEL         DIC(DESC_30).                                
           03 :VHL2:_MANU_YEAR     DIC(YR, P).                                  
           03 :VHL2:_CLASS         DIC(X25).                                    
           03 :VHL2:_VRD_ID        DIC(X10).                                    
           03 :VHL2:_CHASS_NUM     DIC(X40).                                    
           03 :VHL2:_ENGINE_NUM    DIC(X25).                                    
           03 :VHL2:_VEH_TYP       DIC(X05).                                    
           03 :VHL2:_CC_WG         DIC(ACCU_NS, P).                             
           03 :VHL2:_COLOUR        DIC(DESC_20).                                
           03 :VHL2:_BODY_TYP      DIC(DESC_60).                                
           03 :VHL2:_FR_DT         DIC(DT, P).                                  
           03 :VHL2:_INVEST_FLG    DIC(FLG).                                    
           03 :VHL2:_INS_DT        DIC(DT, P).                                  
           03 :VHL2:_LE_DT         DIC(DT, P).                                  
           03 :VHL2:_ST_CAP        DIC(N02, P).                                 
           03 :VHL2:_GRO_WG        DIC(ACCU_NS, P).                             
           03 :VHL2:_AXL_WG        DIC(X10).                                    
           03 :VHL2:_NEW_US        DIC(FLG).                                    
           03 :VHL2:_NO_PO         DIC(NUM_2, P).                               
           03 :VHL2:_LTV_IN        DIC(PCT, P).                                 
           03 :VHL2:_LTV_NET       DIC(PCT, P).                                 
           03 :VHL2:_DSR_STR       DIC(PCT, P).                                 
           03 :VHL2:_DSR           DIC(PCT, P).                                 
           03 :VHL2:_ASS_CD        DIC(X04).                                    
           03 :VHL2:_USE_LF        DIC(SEQ_2, P).                               
           03 :VHL2:_DEP_VAL       DIC(TAMT_NS, P).                             
           03 :VHL2:_PSL_CD1       DIC(X03).                                    
           03 :VHL2:_PSL_CD2       DIC(X03).                                    
           03 :VHL2:_PSL_CD3       DIC(X03).                                    
           03 :VHL2:_PSL_CD4       DIC(X03).                                    
           03 :VHL2:_PSL_CD5       DIC(X03).                                    
           03 :VHL2:_PSL_CD6       DIC(X03).                                    
           03 :VHL2:_PSL_CD7       DIC(X03).                                    
           03 :VHL2:_PSL_CD8       DIC(X03).                                    
           03 :VHL2:_CROSS_BOR     DIC(X03).                                    
           03 :VHL2:_COM_CD        DIC(X03).                                    
           03 :VHL2:_VEH_USAGE     DIC(X03).                                    
           03 :VHL2:_CRT_DATE      DIC(DT, P).                                  
           03 :VHL2:_CRT_TLR       DIC(TLR_NO).                                 
           03 :VHL2:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :VHL2:_UPDTBL_TLR    DIC(TLR_NO).                                 
           03 :VHL2:_TS            PIC X(26).                                   
      *@*CHECKSUM 591213932                                                     
       #IFNDEF TABLE_CMTMAP                                                     
       #DEFINE TABLE_CMTMAP                                                     
           EXEC SQL DECLARE CMTMAP TABLE                                        
           (                                                                    
             PUBLIC_CODE_TYPE         CHAR(5) NOT NULL,                         
             DSB_VALUE                CHAR(100) NOT NULL,                       
             SYSCODE                  CHAR(5) NOT NULL,                         
             IBS_VALUE                CHAR(10) NOT NULL,                        
             DESC                     CHAR(200) NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE CMTMAP                             *        
      ******************************************************************        
       01  CMR:MAP:.                                                            
           03 :MAP:_KEY.                                                        
              05 :MAP:_PUBLIC_CODE_TYPE DIC(MAP_CD).                            
              05 :MAP:_DSB_VALUE   DIC(E_ADDR).                                 
              05 :MAP:_SYSCODE     DIC(X05).                                    
              05 :MAP:_IBS_VALUE   DIC(X10).                                    
           03 :MAP:_DESC           DIC(CO_ADDR).                                
      *@*CHECKSUM 538491610                                                     
       #IFNDEF TABLE_KCTFTAC                                                    
       #DEFINE TABLE_KCTFTAC                                                    
           EXEC SQL DECLARE KCTFTAC TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             AC_NO                    CHAR(25) NOT NULL,                        
             SYS_CODE                 CHAR(8) NOT NULL,                         
             PRD_SUB_CD               CHAR(8) NOT NULL,                         
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTAC                            *        
      ******************************************************************        
       01  KCR:FTAC:.                                                           
           03 :FTAC:_KEY.                                                       
              05 :FTAC:_CI_NO      DIC(CI_NO).                                  
              05 :FTAC:_REF_NO     DIC(FAREF_NO).                               
              05 :FTAC:_AC_NO      DIC(AC).                                     
           03 :FTAC:_SYS_CODE      DIC(PROD_CD).                                
           03 :FTAC:_PRD_SUB_CD    DIC(PROD_CD).                                
           03 :FTAC:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTAC:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTAC:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTAC:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTAC:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTAC:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTAC:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTAC:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTAC:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTAC:_TS            DIC(TS).                                     
      *@*CHECKSUM _75733404                                                     
       #IFNDEF TABLE_KCTFTCK                                                    
       #DEFINE TABLE_KCTFTCK                                                    
           EXEC SQL DECLARE KCTFTCK TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             PAPER_SEARCH_COND        CHAR(1) NOT NULL,                         
             RM_INQ_COND              CHAR(1) NOT NULL,                         
             RM_INQ_RESULT            CHAR(1) NOT NULL,                         
             RM_CODE                  CHAR(10) NOT NULL,                        
             BRANCH                   DEC(6, 0) NOT NULL,                       
             DIVISION                 DEC(6, 0) NOT NULL,                       
             HANDLING_STAFF           CHAR(8) NOT NULL,                         
             CHECKING_STAFF           CHAR(8) NOT NULL,                         
             HANDLING_DATE            DEC(8, 0) NOT NULL,                       
             CHECKING_DATE            DEC(8, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTCK                            *        
      ******************************************************************        
       01  KCR:FTCK:.                                                           
           03 :FTCK:_KEY.                                                       
              05 :FTCK:_CI_NO      DIC(CI_NO).                                  
              05 :FTCK:_REF_NO     DIC(FAREF_NO).                               
           03 :FTCK:_PAPER_SEARCH_COND DIC(FLG).                                
           03 :FTCK:_RM_INQ_COND   DIC(FLG).                                    
           03 :FTCK:_RM_INQ_RESULT DIC(FLG).                                    
           03 :FTCK:_RM_CODE       DIC(OIC_NO).                                 
           03 :FTCK:_BRANCH        DIC(BR, P).                                  
           03 :FTCK:_DIVISION      DIC(BR, P).                                  
           03 :FTCK:_HANDLING_STAFF DIC(TLR_NO).                                
           03 :FTCK:_CHECKING_STAFF DIC(TLR_NO).                                
           03 :FTCK:_HANDLING_DATE DIC(DT, P).                                  
           03 :FTCK:_CHECKING_DATE DIC(DT, P).                                  
           03 :FTCK:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTCK:_TS            DIC(TS).                                     
      *@*CHECKSUM _1701766044                                                   
       #IFNDEF TABLE_KCTFTCP                                                    
       #DEFINE TABLE_KCTFTCP                                                    
           EXEC SQL DECLARE KCTFTCP TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             OWNER_ID_TYP             CHAR(5) NOT NULL,                         
             OWNER_ID_NO              CHAR(30) NOT NULL,                        
             OWNER_NAME               CHAR(150) NOT NULL,                       
             NATIONALITY              CHAR(4) NOT NULL,                         
             ADDR_TYPE                CHAR(1) NOT NULL,                         
             ADDR_COUNTRY             CHAR(4) NOT NULL,                         
             ADDRESS1                 CHAR(30) NOT NULL,                        
             ADDRESS2                 CHAR(30) NOT NULL,                        
             ADDRESS3                 CHAR(30) NOT NULL,                        
             ADDRESS4                 CHAR(30) NOT NULL,                        
             TIN_NO                   CHAR(9) NOT NULL,                         
             EFF_SHEARES              DEC(7, 4) NOT NULL,                       
             DEF_FLD                  CHAR(50) NOT NULL,                        
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTCP                            *        
      ******************************************************************        
       01  KCR:FTCP:.                                                           
           03 :FTCP:_KEY.                                                       
              05 :FTCP:_CI_NO      DIC(CI_NO).                                  
              05 :FTCP:_REF_NO     DIC(FAREF_NO).                               
              05 :FTCP:_OWNER_ID_TYP DIC(ID_TYP).                               
              05 :FTCP:_OWNER_ID_NO DIC(ID_NO).                                 
           03 :FTCP:_OWNER_NAME    DIC(CI_NM).                                  
           03 :FTCP:_NATIONALITY   DIC(CNTYS_CD).                               
           03 :FTCP:_ADDR_TYPE     DIC(OPT).                                    
           03 :FTCP:_ADDR_COUNTRY  DIC(CNTYS_CD).                               
           03 :FTCP:_ADDRESS1      DIC(CMP_ADDR).                               
           03 :FTCP:_ADDRESS2      DIC(CMP_ADDR).                               
           03 :FTCP:_ADDRESS3      DIC(CMP_ADDR).                               
           03 :FTCP:_ADDRESS4      DIC(CMP_ADDR).                               
           03 :FTCP:_TIN_NO        DIC(TIN_NO).                                 
           03 :FTCP:_EFF_SHEARES   DIC(PCT4, P).                                
           03 :FTCP:_DEF_FLD       DIC(X50).                                    
           03 :FTCP:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTCP:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTCP:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTCP:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTCP:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTCP:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTCP:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTCP:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTCP:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTCP:_TS            DIC(TS).                                     
      *@*CHECKSUM _710194491                                                    
       #IFNDEF TABLE_KCTFTDD                                                    
       #DEFINE TABLE_KCTFTDD                                                    
           EXEC SQL DECLARE KCTFTDD TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             FATCA_STATUS             CHAR(1) NOT NULL,                         
             CHAPTER_4_STS            CHAR(1) NOT NULL,                         
             CHAPTER_4_STS_2          CHAR(2) NOT NULL,                         
             OLD_FT_STS               CHAR(1) NOT NULL,                         
             OLD_CHAPTER_4_STS        CHAR(1) NOT NULL,                         
             FATCA_ENTITY_TYP         CHAR(1) NOT NULL,                         
             REASON_SPEC_CLS          CHAR(100) NOT NULL,                       
             REASON_CANCEL            CHAR(100) NOT NULL,                       
             OS_RMK                   CHAR(1) NOT NULL,                         
             FUP_STATUS               CHAR(2) NOT NULL,                         
             CHG_NATION_FLG           CHAR(1) NOT NULL,                         
             FUP_LTR_DT_1A            DEC(8, 0) NOT NULL,                       
             FUP_LTR_DT_1B            DEC(8, 0) NOT NULL,                       
             FUP_LTR_DT_2             DEC(8, 0) NOT NULL,                       
             FUP_LTR_DT_FIN           DEC(8, 0) NOT NULL,                       
             COPY_REF_NO              CHAR(6) NOT NULL,                         
             LETTER_TYPE              CHAR(1) NOT NULL,                         
             REMARKS                  CHAR(100) NOT NULL,                       
             CREATE_WAY               CHAR(1) NOT NULL,                         
             COMPL_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             LAST_UPD_UNIT            DEC(6, 0) NOT NULL,                       
             LAST_UPD_TLR             CHAR(8) NOT NULL,                         
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,                       
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTDD                            *        
      ******************************************************************        
       01  KCR:FTDD:.                                                           
           03 :FTDD:_KEY.                                                       
              05 :FTDD:_CI_NO      DIC(CI_NO).                                  
              05 :FTDD:_REF_NO     DIC(FAREF_NO).                               
           03 :FTDD:_FATCA_STATUS  DIC(STS).                                    
           03 :FTDD:_CHAPTER_4_STS DIC(STS).                                    
           03 :FTDD:_CHAPTER_4_STS_2 DIC(STS_CD).                               
           03 :FTDD:_OLD_FT_STS    DIC(STS).                                    
           03 :FTDD:_OLD_CHAPTER_4_STS DIC(STS).                                
           03 :FTDD:_FATCA_ENTITY_TYP DIC(TYP).                                 
           03 :FTDD:_REASON_SPEC_CLS DIC(DESC_50).                              
           03 :FTDD:_REASON_CANCEL DIC(DESC_50).                                
           03 :FTDD:_OS_RMK        DIC(FLG).                                    
           03 :FTDD:_FUP_STATUS    DIC(STS_CD).                                 
           03 :FTDD:_CHG_NATION_FLG DIC(FLG).                                   
           03 :FTDD:_FUP_LTR_DT_1A DIC(DT, P).                                  
           03 :FTDD:_FUP_LTR_DT_1B DIC(DT, P).                                  
           03 :FTDD:_FUP_LTR_DT_2  DIC(DT, P).                                  
           03 :FTDD:_FUP_LTR_DT_FIN DIC(DT, P).                                 
           03 :FTDD:_COPY_REF_NO   DIC(FAREF_NO).                               
           03 :FTDD:_LETTER_TYPE   DIC(OPT).                                    
           03 :FTDD:_REMARKS       DIC(DESC_50).                                
           03 :FTDD:_CREATE_WAY    DIC(FLG).                                    
           03 :FTDD:_COMPL_DATE    DIC(DT, P).                                  
           03 :FTDD:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTDD:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTDD:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTDD:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTDD:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTDD:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTDD:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTDD:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTDD:_LAST_UPD_UNIT DIC(BR, P).                                  
           03 :FTDD:_LAST_UPD_TLR  DIC(TLR_NO).                                 
           03 :FTDD:_LAST_UPD_DATE DIC(DT, P).                                  
           03 :FTDD:_LAST_UPD_TIME DIC(TM, P).                                  
           03 :FTDD:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTDD:_TS            DIC(TS).                                     
      *@*CHECKSUM 363726508                                                     
       #IFNDEF TABLE_KCTFTEBK                                                   
       #DEFINE TABLE_KCTFTEBK                                                   
           EXEC SQL DECLARE KCTFTEBK TABLE                                      
           (                                                                    
             DATE                     DEC(8, 0) NOT NULL,                       
             SEQ_NO                   DEC(4, 0) NOT NULL,                       
             CI_NO                    CHAR(12) NOT NULL,                        
             DEP_TYP                  CHAR(1) NOT NULL,                         
             AC_NO                    CHAR(25) NOT NULL,                        
             AC_DATE                  DEC(8, 0) NOT NULL,                       
             SOURCE                   CHAR(8) NOT NULL,                         
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTEBK                           *        
      ******************************************************************        
       01  KCR:FTEBK:.                                                          
           03 :FTEBK:_KEY.                                                      
              05 :FTEBK:_DATE      DIC(DT, P).                                  
              05 :FTEBK:_SEQ_NO    DIC(NUM, P).                                 
           03 :FTEBK:_CI_NO        DIC(CI_NO).                                  
           03 :FTEBK:_DEP_TYP      DIC(TYP).                                    
           03 :FTEBK:_AC_NO        DIC(AC).                                     
           03 :FTEBK:_AC_DATE      DIC(DT, P).                                  
           03 :FTEBK:_SOURCE       DIC(PROD_CD).                                
           03 :FTEBK:_CHECK_UNIT   DIC(BR, P).                                  
           03 :FTEBK:_CHECK_TLR    DIC(TLR_NO).                                 
           03 :FTEBK:_CHECK_DATE   DIC(DT, P).                                  
           03 :FTEBK:_CHECK_TIME   DIC(TM, P).                                  
           03 :FTEBK:_CREATE_UNIT  DIC(BR, P).                                  
           03 :FTEBK:_CREATE_TLR   DIC(TLR_NO).                                 
           03 :FTEBK:_CREATE_DATE  DIC(DT, P).                                  
           03 :FTEBK:_CREATE_TIME  DIC(TM, P).                                  
           03 :FTEBK:_UPDTBL_DATE  DIC(DT, P).                                  
           03 :FTEBK:_TS           PIC X(26).                                   
      *@*CHECKSUM 1120051511                                                    
       #IFNDEF TABLE_KCTFTFUP                                                   
       #DEFINE TABLE_KCTFTFUP                                                   
           EXEC SQL DECLARE KCTFTFUP TABLE                                      
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             DATE                     DEC(8, 0) NOT NULL,                       
             SEQ_NO                   DEC(4, 0) NOT NULL,                       
             REF_NO                   CHAR(6) NOT NULL,                         
             FUP_IND                  CHAR(1) NOT NULL,                         
             FT_INDV_ENT_TYPE         CHAR(1) NOT NULL,                         
             REASON_CD                CHAR(3) NOT NULL,                         
             SYS_CODE                 CHAR(8) NOT NULL,                         
             AC_NO                    CHAR(25) NOT NULL,                        
             REC_DATE                 DEC(8, 0) NOT NULL,                       
             FUP_STS                  CHAR(2) NOT NULL,                         
             EXC_TYPE                 CHAR(6) NOT NULL,                         
             REJ_REASON               CHAR(100) NOT NULL,                       
             WITH_AC_FG               CHAR(1) NOT NULL,                         
             LETTER_TYPE              CHAR(1) NOT NULL,                         
             DIVISION                 DEC(6, 0) NOT NULL,                       
             BRANCH                   DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTFUP                           *        
      ******************************************************************        
       01  KCR:FTFUP:.                                                          
           03 :FTFUP:_KEY.                                                      
              05 :FTFUP:_CI_NO     DIC(CI_NO).                                  
              05 :FTFUP:_DATE      DIC(DT, P).                                  
              05 :FTFUP:_SEQ_NO    DIC(NUM, P).                                 
           03 :FTFUP:_REF_NO       DIC(FAREF_NO).                               
           03 :FTFUP:_FUP_IND      DIC(FLG).                                    
           03 :FTFUP:_FT_INDV_ENT_TYPE DIC(TYP).                                
           03 :FTFUP:_REASON_CD    DIC(REAS_CD).                                
           03 :FTFUP:_SYS_CODE     DIC(PROD_CD).                                
           03 :FTFUP:_AC_NO        DIC(AC).                                     
           03 :FTFUP:_REC_DATE     DIC(DT, P).                                  
           03 :FTFUP:_FUP_STS      DIC(STS_CD).                                 
           03 :FTFUP:_EXC_TYPE     DIC(SYSMSGNO).                               
           03 :FTFUP:_REJ_REASON   DIC(DESC_50).                                
           03 :FTFUP:_WITH_AC_FG   DIC(FLG).                                    
           03 :FTFUP:_LETTER_TYPE  DIC(TYP).                                    
           03 :FTFUP:_DIVISION     DIC(BR, P).                                  
           03 :FTFUP:_BRANCH       DIC(BR, P).                                  
           03 :FTFUP:_UPDTBL_DATE  DIC(DT, P).                                  
           03 :FTFUP:_TS           DIC(TS).                                     
      *@*CHECKSUM _220036849                                                    
       #IFNDEF TABLE_KCTFTIN                                                    
       #DEFINE TABLE_KCTFTIN                                                    
           EXEC SQL DECLARE KCTFTIN TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             INDICIA_CODE             CHAR(2) NOT NULL,                         
             INDICIA_FLAG             CHAR(1) NOT NULL,                         
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTIN                            *        
      ******************************************************************        
       01  KCR:FTIN:.                                                           
           03 :FTIN:_KEY.                                                       
              05 :FTIN:_CI_NO      DIC(CI_NO).                                  
              05 :FTIN:_REF_NO     DIC(FAREF_NO).                               
              05 :FTIN:_INDICIA_CODE DIC(TYPE).                                 
           03 :FTIN:_INDICIA_FLAG  DIC(FLG).                                    
           03 :FTIN:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTIN:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTIN:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTIN:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTIN:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTIN:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTIN:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTIN:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTIN:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTIN:_TS            DIC(TS).                                     
      *@*CHECKSUM 2002796663                                                    
       #IFNDEF TABLE_KCTFTINP                                                   
       #DEFINE TABLE_KCTFTINP                                                   
           EXEC SQL DECLARE KCTFTINP TABLE                                      
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             PRE_INDICIA_CODE         CHAR(2) NOT NULL,                         
             PRE_INDICIA_FLAG         CHAR(1) NOT NULL,                         
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTINP                           *        
      ******************************************************************        
       01  KCR:FTINP:.                                                          
           03 :FTINP:_KEY.                                                      
              05 :FTINP:_CI_NO     DIC(CI_NO).                                  
              05 :FTINP:_REF_NO    DIC(FAREF_NO).                               
              05 :FTINP:_PRE_INDICIA_CODE DIC(TYPE).                            
           03 :FTINP:_PRE_INDICIA_FLAG DIC(FLG).                                
           03 :FTINP:_UPDTBL_DATE  DIC(DT, P).                                  
           03 :FTINP:_TS           DIC(TS).                                     
      *@*CHECKSUM _334376433                                                    
       #IFNDEF TABLE_KCTFTRE                                                    
       #DEFINE TABLE_KCTFTRE                                                    
           EXEC SQL DECLARE KCTFTRE TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             REASON_CD                CHAR(3) NOT NULL,                         
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTRE                            *        
      ******************************************************************        
       01  KCR:FTRE:.                                                           
           03 :FTRE:_KEY.                                                       
              05 :FTRE:_CI_NO      DIC(CI_NO).                                  
              05 :FTRE:_REF_NO     DIC(FAREF_NO).                               
              05 :FTRE:_REASON_CD  DIC(REAS_CD).                                
           03 :FTRE:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTRE:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTRE:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTRE:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTRE:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTRE:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTRE:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTRE:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTRE:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTRE:_TS            DIC(TS).                                     
      *@*CHECKSUM _1449969609                                                   
       #IFNDEF TABLE_KCTFTRP                                                    
       #DEFINE TABLE_KCTFTRP                                                    
           EXEC SQL DECLARE KCTFTRP TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             DIVISION                 DEC(6, 0) NOT NULL,                       
             BRANCH                   DEC(6, 0) NOT NULL,                       
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTRP                            *        
      ******************************************************************        
       01  KCR:FTRP:.                                                           
           03 :FTRP:_KEY.                                                       
              05 :FTRP:_CI_NO      DIC(CI_NO).                                  
              05 :FTRP:_REF_NO     DIC(FAREF_NO).                               
              05 :FTRP:_DIVISION   DIC(BR, P).                                  
              05 :FTRP:_BRANCH     DIC(BR, P).                                  
           03 :FTRP:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTRP:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTRP:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTRP:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTRP:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTRP:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTRP:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTRP:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTRP:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTRP:_TS            DIC(TS).                                     
      *@*CHECKSUM 386740677                                                     
       #IFNDEF TABLE_KCTFTSD                                                    
       #DEFINE TABLE_KCTFTSD                                                    
           EXEC SQL DECLARE KCTFTSD TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             REF_NO                   CHAR(6) NOT NULL,                         
             SUPPORT_DOC_TYPE         CHAR(2) NOT NULL,                         
             SIGN_DATE                DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             TIN_NO                   CHAR(9) NOT NULL,                         
             DOC_TYPE2                CHAR(1) NOT NULL,                         
             DOC_NO2                  CHAR(20) NOT NULL,                        
             GIIN_NO                  CHAR(19) NOT NULL,                        
             RP_EXEMP_CODE            CHAR(1) NOT NULL,                         
             GIIN_VERI_DATE           DEC(8, 0) NOT NULL,                       
             SPONSOR_NAME             CHAR(100) NOT NULL,                       
             OTHER_SPEC               CHAR(100) NOT NULL,                       
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTSD                            *        
      ******************************************************************        
       01  KCR:FTSD:.                                                           
           03 :FTSD:_KEY.                                                       
              05 :FTSD:_CI_NO      DIC(CI_NO).                                  
              05 :FTSD:_REF_NO     DIC(FAREF_NO).                               
              05 :FTSD:_SUPPORT_DOC_TYPE DIC(TYPE).                             
           03 :FTSD:_SIGN_DATE     DIC(DT, P).                                  
           03 :FTSD:_EXP_DATE      DIC(DT, P).                                  
           03 :FTSD:_TIN_NO        DIC(TIN_NO).                                 
           03 :FTSD:_DOC_TYPE2     DIC(TYP).                                    
           03 :FTSD:_DOC_NO2       DIC(DESC_20).                                
           03 :FTSD:_GIIN_NO       DIC(GIIN_NO).                                
           03 :FTSD:_RP_EXEMP_CODE DIC(TYP).                                    
           03 :FTSD:_GIIN_VERI_DATE DIC(DT, P).                                 
           03 :FTSD:_SPONSOR_NAME  DIC(DESC_50).                                
           03 :FTSD:_OTHER_SPEC    DIC(DESC_50).                                
           03 :FTSD:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTSD:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTSD:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTSD:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTSD:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTSD:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTSD:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTSD:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTSD:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTSD:_TS            DIC(TS).                                     
      *@*CHECKSUM 340875370                                                     
       #IFNDEF TABLE_KCTFTTF                                                    
       #DEFINE TABLE_KCTFTTF                                                    
           EXEC SQL DECLARE KCTFTTF TABLE                                       
           (                                                                    
             CI_NO                    CHAR(12) NOT NULL,                        
             PERSON_CNTY              CHAR(4) NOT NULL,                         
             TIN_NO                   CHAR(9) NOT NULL,                         
             APP_CRE_DATE             DEC(8, 0) NOT NULL,                       
             SOURCE_INP               CHAR(8) NOT NULL,                         
             FATCA_FLAG               CHAR(1) NOT NULL,                         
             CHECK_UNIT               DEC(6, 0) NOT NULL,                       
             CHECK_TLR                CHAR(8) NOT NULL,                         
             CHECK_DATE               DEC(8, 0) NOT NULL,                       
             CHECK_TIME               DEC(6, 0) NOT NULL,                       
             CREATE_UNIT              DEC(6, 0) NOT NULL,                       
             CREATE_TLR               CHAR(8) NOT NULL,                         
             CREATE_DATE              DEC(8, 0) NOT NULL,                       
             CREATE_TIME              DEC(6, 0) NOT NULL,                       
             UPDTBL_DATE              DEC(8, 0) NOT NULL,                       
             TS                       CHAR(26) NOT NULL                         
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE KCTFTTF                            *        
      ******************************************************************        
       01  KCR:FTTF:.                                                           
           03 :FTTF:_KEY.                                                       
              05 :FTTF:_CI_NO      DIC(CI_NO).                                  
           03 :FTTF:_PERSON_CNTY   DIC(CNTYS_CD).                               
           03 :FTTF:_TIN_NO        DIC(TIN_NO).                                 
           03 :FTTF:_APP_CRE_DATE  DIC(DT, P).                                  
           03 :FTTF:_SOURCE_INP    DIC(PROD_CD).                                
           03 :FTTF:_FATCA_FLAG    DIC(FLG).                                    
           03 :FTTF:_CHECK_UNIT    DIC(BR, P).                                  
           03 :FTTF:_CHECK_TLR     DIC(TLR_NO).                                 
           03 :FTTF:_CHECK_DATE    DIC(DT, P).                                  
           03 :FTTF:_CHECK_TIME    DIC(TM, P).                                  
           03 :FTTF:_CREATE_UNIT   DIC(BR, P).                                  
           03 :FTTF:_CREATE_TLR    DIC(TLR_NO).                                 
           03 :FTTF:_CREATE_DATE   DIC(DT, P).                                  
           03 :FTTF:_CREATE_TIME   DIC(TM, P).                                  
           03 :FTTF:_UPDTBL_DATE   DIC(DT, P).                                  
           03 :FTTF:_TS            DIC(TS).                                     
      *@*CHECKSUM 1055888239                                                    
       #IFNDEF TABLE_SCTAMGLM                                                   
       #DEFINE TABLE_SCTAMGLM                                                   
           EXEC SQL DECLARE SCTAMGLM TABLE                                      
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             COA_FLG                  CHAR(2) NOT NULL,                         
             SNAME                    CHAR(35) NOT NULL,                        
             LNAME                    CHAR(70) NOT NULL,                        
             EFF_DATE_VAL             DEC(8, 0) NOT NULL,                       
             EXP_DATE_VAL             DEC(8, 0) NOT NULL,                       
             OPT_FLG                  CHAR(1) NOT NULL,                         
             CNTY1                    CHAR(4) NOT NULL,                         
             CNTY2                    CHAR(4) NOT NULL,                         
             CNTY3                    CHAR(4) NOT NULL,                         
             CKFLG                    CHAR(1) NOT NULL,                         
             REAL_GL                  CHAR(10) NOT NULL,                        
             MEMO_GL                  CHAR(10) NOT NULL,                        
             ITM_NO_01                CHAR(10) NOT NULL,                        
             ITM_SEQ_01               DEC(5, 0) NOT NULL,                       
             REMARK_01                CHAR(60) NOT NULL,                        
             ITM_NO_02                CHAR(10) NOT NULL,                        
             ITM_SEQ_02               DEC(5, 0) NOT NULL,                       
             REMARK_02                CHAR(60) NOT NULL,                        
             ITM_NO_03                CHAR(10) NOT NULL,                        
             ITM_SEQ_03               DEC(5, 0) NOT NULL,                       
             REMARK_03                CHAR(60) NOT NULL,                        
             ITM_NO_04                CHAR(10) NOT NULL,                        
             ITM_SEQ_04               DEC(5, 0) NOT NULL,                       
             REMARK_04                CHAR(60) NOT NULL,                        
             ITM_NO_05                CHAR(10) NOT NULL,                        
             ITM_SEQ_05               DEC(5, 0) NOT NULL,                       
             REMARK_05                CHAR(60) NOT NULL,                        
             ITM_NO_06                CHAR(10) NOT NULL,                        
             ITM_SEQ_06               DEC(5, 0) NOT NULL,                       
             REMARK_06                CHAR(60) NOT NULL,                        
             ITM_NO_07                CHAR(10) NOT NULL,                        
             ITM_SEQ_07               DEC(5, 0) NOT NULL,                       
             REMARK_07                CHAR(60) NOT NULL,                        
             ITM_NO_08                CHAR(10) NOT NULL,                        
             ITM_SEQ_08               DEC(5, 0) NOT NULL,                       
             REMARK_08                CHAR(60) NOT NULL,                        
             ITM_NO_09                CHAR(10) NOT NULL,                        
             ITM_SEQ_09               DEC(5, 0) NOT NULL,                       
             REMARK_09                CHAR(60) NOT NULL,                        
             ITM_NO_10                CHAR(10) NOT NULL,                        
             ITM_SEQ_10               DEC(5, 0) NOT NULL,                       
             REMARK_10                CHAR(60) NOT NULL,                        
             ITM_NO_11                CHAR(10) NOT NULL,                        
             ITM_SEQ_11               DEC(5, 0) NOT NULL,                       
             REMARK_11                CHAR(60) NOT NULL,                        
             ITM_NO_12                CHAR(10) NOT NULL,                        
             ITM_SEQ_12               DEC(5, 0) NOT NULL,                       
             REMARK_12                CHAR(60) NOT NULL,                        
             ITM_NO_13                CHAR(10) NOT NULL,                        
             ITM_SEQ_13               DEC(5, 0) NOT NULL,                       
             REMARK_13                CHAR(60) NOT NULL,                        
             ITM_NO_14                CHAR(10) NOT NULL,                        
             ITM_SEQ_14               DEC(5, 0) NOT NULL,                       
             REMARK_14                CHAR(60) NOT NULL,                        
             ITM_NO_15                CHAR(10) NOT NULL,                        
             ITM_SEQ_15               DEC(5, 0) NOT NULL,                       
             REMARK_15                CHAR(60) NOT NULL,                        
             ITM_NO_16                CHAR(10) NOT NULL,                        
             ITM_SEQ_16               DEC(5, 0) NOT NULL,                       
             REMARK_16                CHAR(60) NOT NULL,                        
             ITM_NO_17                CHAR(10) NOT NULL,                        
             ITM_SEQ_17               DEC(5, 0) NOT NULL,                       
             REMARK_17                CHAR(60) NOT NULL,                        
             ITM_NO_18                CHAR(10) NOT NULL,                        
             ITM_SEQ_18               DEC(5, 0) NOT NULL,                       
             REMARK_18                CHAR(60) NOT NULL,                        
             ITM_NO_19                CHAR(10) NOT NULL,                        
             ITM_SEQ_19               DEC(5, 0) NOT NULL,                       
             REMARK_19                CHAR(60) NOT NULL,                        
             ITM_NO_20                CHAR(10) NOT NULL,                        
             ITM_SEQ_20               DEC(5, 0) NOT NULL,                       
             REMARK_20                CHAR(60) NOT NULL,                        
             ITM_NO_21                CHAR(10) NOT NULL,                        
             ITM_SEQ_21               DEC(5, 0) NOT NULL,                       
             REMARK_21                CHAR(60) NOT NULL,                        
             ITM_NO_22                CHAR(10) NOT NULL,                        
             ITM_SEQ_22               DEC(5, 0) NOT NULL,                       
             REMARK_22                CHAR(60) NOT NULL,                        
             ITM_NO_23                CHAR(10) NOT NULL,                        
             ITM_SEQ_23               DEC(5, 0) NOT NULL,                       
             REMARK_23                CHAR(60) NOT NULL,                        
             ITM_NO_24                CHAR(10) NOT NULL,                        
             ITM_SEQ_24               DEC(5, 0) NOT NULL,                       
             REMARK_24                CHAR(60) NOT NULL,                        
             ITM_NO_25                CHAR(10) NOT NULL,                        
             ITM_SEQ_25               DEC(5, 0) NOT NULL,                       
             REMARK_25                CHAR(60) NOT NULL,                        
             ITM_NO_26                CHAR(10) NOT NULL,                        
             ITM_SEQ_26               DEC(5, 0) NOT NULL,                       
             REMARK_26                CHAR(60) NOT NULL,                        
             ITM_NO_27                CHAR(10) NOT NULL,                        
             ITM_SEQ_27               DEC(5, 0) NOT NULL,                       
             REMARK_27                CHAR(60) NOT NULL,                        
             ITM_NO_28                CHAR(10) NOT NULL,                        
             ITM_SEQ_28               DEC(5, 0) NOT NULL,                       
             REMARK_28                CHAR(60) NOT NULL,                        
             ITM_NO_29                CHAR(10) NOT NULL,                        
             ITM_SEQ_29               DEC(5, 0) NOT NULL,                       
             REMARK_29                CHAR(60) NOT NULL,                        
             ITM_NO_30                CHAR(10) NOT NULL,                        
             ITM_SEQ_30               DEC(5, 0) NOT NULL,                       
             REMARK_30                CHAR(60) NOT NULL,                        
             ITM_NO_31                CHAR(10) NOT NULL,                        
             ITM_SEQ_31               DEC(5, 0) NOT NULL,                       
             REMARK_31                CHAR(60) NOT NULL,                        
             ITM_NO_32                CHAR(10) NOT NULL,                        
             ITM_SEQ_32               DEC(5, 0) NOT NULL,                       
             REMARK_32                CHAR(60) NOT NULL,                        
             ITM_NO_33                CHAR(10) NOT NULL,                        
             ITM_SEQ_33               DEC(5, 0) NOT NULL,                       
             REMARK_33                CHAR(60) NOT NULL,                        
             ITM_NO_34                CHAR(10) NOT NULL,                        
             ITM_SEQ_34               DEC(5, 0) NOT NULL,                       
             REMARK_34                CHAR(60) NOT NULL,                        
             ITM_NO_35                CHAR(10) NOT NULL,                        
             ITM_SEQ_35               DEC(5, 0) NOT NULL,                       
             REMARK_35                CHAR(60) NOT NULL,                        
             ITM_NO_36                CHAR(10) NOT NULL,                        
             ITM_SEQ_36               DEC(5, 0) NOT NULL,                       
             REMARK_36                CHAR(60) NOT NULL,                        
             ITM_NO_37                CHAR(10) NOT NULL,                        
             ITM_SEQ_37               DEC(5, 0) NOT NULL,                       
             REMARK_37                CHAR(60) NOT NULL,                        
             ITM_NO_38                CHAR(10) NOT NULL,                        
             ITM_SEQ_38               DEC(5, 0) NOT NULL,                       
             REMARK_38                CHAR(60) NOT NULL,                        
             ITM_NO_39                CHAR(10) NOT NULL,                        
             ITM_SEQ_39               DEC(5, 0) NOT NULL,                       
             REMARK_39                CHAR(60) NOT NULL,                        
             ITM_NO_40                CHAR(10) NOT NULL,                        
             ITM_SEQ_40               DEC(5, 0) NOT NULL,                       
             REMARK_40                CHAR(60) NOT NULL,                        
             ITM_NO_41                CHAR(10) NOT NULL,                        
             ITM_SEQ_41               DEC(5, 0) NOT NULL,                       
             REMARK_41                CHAR(60) NOT NULL,                        
             ITM_NO_42                CHAR(10) NOT NULL,                        
             ITM_SEQ_42               DEC(5, 0) NOT NULL,                       
             REMARK_42                CHAR(60) NOT NULL,                        
             ITM_NO_43                CHAR(10) NOT NULL,                        
             ITM_SEQ_43               DEC(5, 0) NOT NULL,                       
             REMARK_43                CHAR(60) NOT NULL,                        
             ITM_NO_44                CHAR(10) NOT NULL,                        
             ITM_SEQ_44               DEC(5, 0) NOT NULL,                       
             REMARK_44                CHAR(60) NOT NULL,                        
             ITM_NO_45                CHAR(10) NOT NULL,                        
             ITM_SEQ_45               DEC(5, 0) NOT NULL,                       
             REMARK_45                CHAR(60) NOT NULL,                        
             ITM_NO_46                CHAR(10) NOT NULL,                        
             ITM_SEQ_46               DEC(5, 0) NOT NULL,                       
             REMARK_46                CHAR(60) NOT NULL,                        
             ITM_NO_47                CHAR(10) NOT NULL,                        
             ITM_SEQ_47               DEC(5, 0) NOT NULL,                       
             REMARK_47                CHAR(60) NOT NULL,                        
             ITM_NO_48                CHAR(10) NOT NULL,                        
             ITM_SEQ_48               DEC(5, 0) NOT NULL,                       
             REMARK_48                CHAR(60) NOT NULL,                        
             ITM_NO_49                CHAR(10) NOT NULL,                        
             ITM_SEQ_49               DEC(5, 0) NOT NULL,                       
             REMARK_49                CHAR(60) NOT NULL,                        
             ITM_NO_50                CHAR(10) NOT NULL,                        
             ITM_SEQ_50               DEC(5, 0) NOT NULL,                       
             REMARK_50                CHAR(60) NOT NULL,                        
             ITM_NO_51                CHAR(10) NOT NULL,                        
             ITM_SEQ_51               DEC(5, 0) NOT NULL,                       
             REMARK_51                CHAR(60) NOT NULL,                        
             ITM_NO_52                CHAR(10) NOT NULL,                        
             ITM_SEQ_52               DEC(5, 0) NOT NULL,                       
             REMARK_52                CHAR(60) NOT NULL,                        
             ITM_NO_53                CHAR(10) NOT NULL,                        
             ITM_SEQ_53               DEC(5, 0) NOT NULL,                       
             REMARK_53                CHAR(60) NOT NULL,                        
             ITM_NO_54                CHAR(10) NOT NULL,                        
             ITM_SEQ_54               DEC(5, 0) NOT NULL,                       
             REMARK_54                CHAR(60) NOT NULL,                        
             ITM_NO_55                CHAR(10) NOT NULL,                        
             ITM_SEQ_55               DEC(5, 0) NOT NULL,                       
             REMARK_55                CHAR(60) NOT NULL,                        
             ITM_NO_56                CHAR(10) NOT NULL,                        
             ITM_SEQ_56               DEC(5, 0) NOT NULL,                       
             REMARK_56                CHAR(60) NOT NULL,                        
             ITM_NO_57                CHAR(10) NOT NULL,                        
             ITM_SEQ_57               DEC(5, 0) NOT NULL,                       
             REMARK_57                CHAR(60) NOT NULL,                        
             ITM_NO_58                CHAR(10) NOT NULL,                        
             ITM_SEQ_58               DEC(5, 0) NOT NULL,                       
             REMARK_58                CHAR(60) NOT NULL,                        
             ITM_NO_59                CHAR(10) NOT NULL,                        
             ITM_SEQ_59               DEC(5, 0) NOT NULL,                       
             REMARK_59                CHAR(60) NOT NULL,                        
             ITM_NO_60                CHAR(10) NOT NULL,                        
             ITM_SEQ_60               DEC(5, 0) NOT NULL,                       
             REMARK_60                CHAR(60) NOT NULL,                        
             UPD_TLR_VAL              CHAR(8) NOT NULL,                         
             UPD_DATE_VAL             DEC(8, 0) NOT NULL,                       
             UPD_TIME_VAL             DEC(6, 0) NOT NULL,                       
             SUP_TEL1_VAL             CHAR(8) NOT NULL,                         
             SUP_TEL2_VAL             CHAR(8) NOT NULL,                         
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTAMGLM                           *        
      ******************************************************************        
       01  SCR:AMGLM:.                                                          
           03 :AMGLM:_KEY.                                                      
              05 :AMGLM:_TYPE      DIC(PTYP_CD).                                
              05 :AMGLM:_CODE      DIC(PARA_CD).                                
              05 :AMGLM:_EFF_DATE  DIC(DT, P).                                  
           03 :AMGLM:_EXP_DATE     DIC(DT, P).                                  
           03 :AMGLM:_DESC         DIC(DESC_20).                                
           03 :AMGLM:_CDESC        DIC(DESC_30).                                
           03 :AMGLM:_COA_FLG      DIC(COA_TYP).                                
           03 :AMGLM:_SNAME        DIC(GEN_ENMS).                               
           03 :AMGLM:_LNAME        DIC(GEN_ENM).                                
           03 :AMGLM:_EFF_DATE_VAL DIC(DT, P).                                  
           03 :AMGLM:_EXP_DATE_VAL DIC(DT, P).                                  
           03 :AMGLM:_OPT_FLG      DIC(FLG).                                    
           88 :AMGLM:_OPT_MAINT            VALUE 'Y'.                           
           88 :AMGLM:_OPT_AUTOGEN          VALUE 'N'.                           
           03 :AMGLM:_CNTY1        DIC(PRDMO_CD).                               
           03 :AMGLM:_CNTY2        DIC(PRDMO_CD).                               
           03 :AMGLM:_CNTY3        DIC(PRDMO_CD).                               
           03 :AMGLM:_CKFLG        DIC(FLG).                                    
           88 :AMGLM:_CKFLG_Y              VALUE 'Y'.                           
           88 :AMGLM:_CKFLG_N              VALUE 'N'.                           
           03 :AMGLM:_REAL_GL      DIC(ITM).                                    
           03 :AMGLM:_MEMO_GL      DIC(ITM).                                    
           03 :AMGLM:_ITM_NO_01    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_01   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_01    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_02    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_02   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_02    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_03    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_03   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_03    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_04    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_04   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_04    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_05    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_05   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_05    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_06    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_06   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_06    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_07    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_07   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_07    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_08    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_08   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_08    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_09    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_09   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_09    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_10    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_10   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_10    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_11    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_11   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_11    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_12    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_12   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_12    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_13    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_13   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_13    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_14    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_14   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_14    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_15    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_15   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_15    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_16    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_16   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_16    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_17    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_17   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_17    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_18    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_18   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_18    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_19    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_19   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_19    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_20    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_20   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_20    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_21    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_21   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_21    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_22    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_22   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_22    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_23    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_23   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_23    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_24    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_24   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_24    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_25    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_25   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_25    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_26    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_26   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_26    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_27    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_27   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_27    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_28    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_28   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_28    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_29    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_29   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_29    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_30    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_30   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_30    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_31    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_31   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_31    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_32    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_32   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_32    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_33    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_33   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_33    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_34    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_34   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_34    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_35    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_35   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_35    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_36    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_36   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_36    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_37    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_37   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_37    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_38    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_38   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_38    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_39    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_39   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_39    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_40    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_40   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_40    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_41    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_41   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_41    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_42    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_42   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_42    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_43    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_43   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_43    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_44    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_44   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_44    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_45    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_45   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_45    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_46    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_46   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_46    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_47    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_47   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_47    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_48    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_48   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_48    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_49    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_49   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_49    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_50    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_50   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_50    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_51    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_51   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_51    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_52    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_52   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_52    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_53    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_53   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_53    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_54    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_54   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_54    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_55    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_55   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_55    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_56    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_56   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_56    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_57    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_57   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_57    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_58    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_58   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_58    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_59    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_59   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_59    DIC(DESC_30).                                
           03 :AMGLM:_ITM_NO_60    DIC(ITM).                                    
           03 :AMGLM:_ITM_SEQ_60   DIC(AC_SEQ, P).                              
           03 :AMGLM:_REMARK_60    DIC(DESC_30).                                
           03 :AMGLM:_UPD_TLR_VAL  DIC(TLR_NO).                                 
           03 :AMGLM:_UPD_DATE_VAL DIC(DT, P).                                  
           03 :AMGLM:_UPD_TIME_VAL DIC(TM, P).                                  
           03 :AMGLM:_SUP_TEL1_VAL DIC(TLR_NO).                                 
           03 :AMGLM:_SUP_TEL2_VAL DIC(TLR_NO).                                 
           03 :AMGLM:_UPD_DATE     DIC(DT, P).                                  
           03 :AMGLM:_UPD_BR       DIC(BR, P).                                  
           03 :AMGLM:_UPD_TLR      DIC(TLR_NO).                                 
           03 :AMGLM:_TS           PIC X(26).                                   
      *@*CHECKSUM _33570987                                                     
      *                                                                         
      *****************************************************************         
      *  COPYBOOK SPECIFICATION                                       *         
      *_______________________________________________________________*         
      *  COPYBOOK NAME. : SCRBTPRM                                    *         
      *  DESCRIPTION... : COPYBOOK OF 0087810                         *         
      *  LENGTH........ : 76                                          *         
      *  AUTHOR........ : DEVIBS                                      *         
      *  CREATED DATE.. : 2017/05/23                                  *         
      *  UPDATED DATE.. : 2017/05/23                                            
      *  VERSION NO.... : 1.0.0                                       *         
      *****************************************************************         
      *                                                                         
      *****************************************************************         
      * 01 SCRBTPRM                                                   *         
      *****************************************************************         
      *                                                                         
        01 SCR:BTPRM:.                                                          
           03 :BTPRM:_KEY.                                                      
              05 :BTPRM:_TYPE            DIC(PTYP_CD).                          
              05 :BTPRM:_CODE            DIC(PARA_CD).                          
           03 :BTPRM:_EFF_DATE           DIC(DT, P).                            
           03 :BTPRM:_EXP_DATE           DIC(DT, P).                            
           03 :BTPRM:_SDESC              DIC(DESC_20).                          
           03 :BTPRM:_CDESC              DIC(DESC_30).                          
           03 :BTPRM:_VAL_TXT.                                                  
              05 :BTPRM:_DESC            DIC(DESCE_60).                         
              05 :BTPRM:_EXP_FREQ        DIC(OPT).                              
              05 :BTPRM:_LMT_NUM         DIC(SEQ).                              
              05 :BTPRM:_RVW_FREQ        DIC(OPT).                              
              05 :BTPRM:_RVW_NUM         DIC(SEQ).                              
              05 :BTPRM:_COL_REV_FREQ    DIC(OPT).                              
              05 :BTPRM:_COL_REV_NUM     DIC(SEQ).                              
              05 :BTPRM:_INS_FREQ        DIC(OPT).                              
              05 :BTPRM:_INS_NUM         DIC(SEQ).                              
              05 :BTPRM:_YEAR_NUM        DIC(SEQ).                              
              05 :BTPRM:_SHORT_TRM       DIC(SEQ).                              
              05 :BTPRM:_MEDM_TRM        DIC(SEQ).                              
              05 :BTPRM:_LONG_TRM        DIC(SEQ).                              
           03 :BTPRM:_UPD_DATE           DIC(DT, P).                            
           03 :BTPRM:_UPD_BR             DIC(BR, P).                            
           03 :BTPRM:_UPD_TLR            DIC(TLR_NO).                           
           03 :BTPRM:_TS                 PIC X(26).                             
      *                                                                         
      *****************************************************************         
      *  COPYBOOK SPECIFICATION                                       *         
      *_______________________________________________________________*         
      *  COPYBOOK NAME. : SCRCOLCD                                    *         
      *  DESCRIPTION... : COPYBOOK OF 0087820                         *         
      *  LENGTH........ : 100                                         *         
      *  AUTHOR........ : DEVIBS                                      *         
      *  CREATED DATE.. : 2017/05/01                                  *         
      *  UPDATED DATE.. : 2017/05/01                                            
      *  VERSION NO.... : 1.0.0                                       *         
      *****************************************************************         
      *                                                                         
      *****************************************************************         
      * 01 SCRCOLCD                                                   *         
      *****************************************************************         
      *                                                                         
        01 SCR:COLCD:.                                                          
           03 :COLCD:_KEY.                                                      
              05 :COLCD:_TYPE            DIC(PTYP_CD).                          
              05 :COLCD:_CODE            DIC(PARA_CD).                          
           03 :COLCD:_EFF_DATE           DIC(DT, P).                            
           03 :COLCD:_EXP_DATE           DIC(DT, P).                            
           03 :COLCD:_SDESC              DIC(DESC_20).                          
           03 :COLCD:_CDESC              DIC(DESC_30).                          
           03 :COLCD:_VAL_TXT.                                                  
              05 :COLCD:_DESC            DIC (DESCE_60).                        
              05 :COLCD:_RISK_GR         DIC (OPT).                             
                 88 :COLCD:_RISK_GR_1          VALUE '1'.                       
                 88 :COLCD:_RISK_GR_2          VALUE '2'.                       
                 88 :COLCD:_RISK_GR_3          VALUE '3'.                       
                 88 :COLCD:_RISK_GR_4          VALUE '4'.                       
                 88 :COLCD:_RISK_GR_5          VALUE '5'.                       
                 88 :COLCD:_RISK_GR_6          VALUE '6'.                       
              05 :COLCD:_GUAR_MODE       DIC (TYP).                             
              05 :COLCD:_MAR_VAL         DIC (FLG).                             
                 88 :COLCD:_MAR_VAL_Y          VALUE 'Y'.                       
                 88 :COLCD:_MAR_VAL_N          VALUE 'N'.                       
              05 :COLCD:_DIST_MODE       DIC (TYPE).                            
                 88 :COLCD:_DIST_M_AA          VALUE 'AA'.                      
                 88 :COLCD:_DIST_M_DV          VALUE 'DV'.                      
                 88 :COLCD:_DIST_M_SP          VALUE '  '.                      
              05 :COLCD:_CHARGE_FLAG     DIC (FLG).                             
                 88 :COLCD:_CHARGE_FLAG_Y      VALUE 'Y'.                       
                 88 :COLCD:_CHARGE_FLAG_N      VALUE 'N'.                       
              05 :COLCD:_EXPO_TYPE       DIC(OPT).                              
              05 :COLCD:_COL_CODE        DIC(RGTYP_CD).                         
           03 :COLCD:_UPD_DATE           DIC(DT, P).                            
           03 :COLCD:_UPD_BR             DIC(BR, P).                            
           03 :COLCD:_UPD_TLR            DIC(TLR_NO).                           
           03 :COLCD:_TS                 PIC X(26).                             
      *****************************************************************         
      ** SCRJPRM IS THE COPY_BOOKS FOR SCFJPRM. IT IS A TEMPORARY    **         
      ** FILE TO STORE ALL THE JOB CONTROL PARAMETER.                **         
      **                                         LENGTH : 80         **         
      ** VERSION : 2.0                           CREATE : 99/09/06   **         
      *****************************************************************         
      *01 SCR:JPRM:.                                                  *         
      *   03 :JPRM:_AC_DATE................ACCOUNT DATE               *         
      *   03 :JPRM:_NEXT_AC_DATE...........NEXT ACCOUNT DATE(ONL)     *         
      *   05 :JPRM:_NEXT_AC_DATB...........NEXT ACCOUNT DATE(BAT)     *         
      *   05 :JPRM:_NEXT_DAYS..............DAYS TO NEXT AC_DATE(ONL)  *         
      *   05 :JPRM:_NEXT_DAYB..............DAYS TO NEXT AC_DATE(BAT)  *         
      *   03 :JPRM:_LAST_AC_DATE...........LAST ACCOUNT DATE(ONL)     *         
      *   05 :JPRM:_LAST_AC_DATB...........LAST ACCOUNT DATE(BAT)     *         
      *   05 :JPRM:_LAST_DAYS..............DAYS TO LAST AC_DATE(ONL)  *         
      *   05 :JPRM:_LAST_DAYB..............DAYS TO LAST AC_DATE(BAT)  *         
      *   03 :JPRM:_EOM_DATE...............EOM  ACCOUNT DATE(ONL)     *         
      *   05 :JPRM:_EOM_DATB...............EOM  ACCOUNT DATE(BAT)     *         
      *   05 :JPRM:_DAYS_T_MON.............DAYS TO EOM  AC_DATE(ONL)  *         
      *   05 :JPRM:_DAYB_T_MON.............DAYS TO EOM  AC_DATE(BAT)  *         
      *   03 :JPRM:_JRNL_IND...............USE WHICH JOURNAL (1/2)    *         
      *   03 :JPRM:_MAST_IND...............USE WHICH MASTER  (1/2)    *         
      *   03 :JPRM:_WDAY_FLAGS.                                       *         
      *      05 :JPRM:_WDAY_FLAG OCCURS 40 SPECIAL WORKDAY FLAG (Y/N) *         
      *                                  01 _ WORKDAY            (ONL)*         
      *                                  02 _ BEGIN  OF YEAR     (ONL)*         
      *                                  03 _ END    OF YEAR     (ONL)*         
      *                                  04 _ BEGIN  OF MONTH    (ONL)*         
      *                                  05 _ END    OF MONTH    (ONL)*         
      *                                  06 _ BEGIN  OF TEN_DAY       *         
      *                                  07 _ END    OF TEN_DAY       *         
      *                                  08 _ BEGIN  OF QUARTERLY(ONL)*         
      *                                  09 _ END    OF QUARTERLY(ONL)*         
      *                                  10 _ MIDDLE OF MONTH         *         
      *                                  11 _ MIDDLE OF MONTH         *         
      *                                       (POSTPONE FOR HOLIDAY)  *         
      *                                  12 _ HALF OF YEAR(END)  (ONL)*         
      *                                  13 _ INTEREST DATE           *         
      *                                  14 _ PRE_ACCRUE INT. DATE    *         
      *                                  15 _ BEGIN  OF WEEK          *         
      *                                  16 _ END    OF WEEK          *         
      *                                  17 _ TYPHOON DAY             *         
      *                                  18 _ HKMA REPORT DAY         *         
      *                                  19 _ HALF OF YEAR(BEGIN)(ONL)*         
      *                                  21 _ WORKDAY            (BAT)*         
      *                                  22 _ BEGIN  OF YEAR     (BAT)*         
      *                                  23 _ END    OF YEAR     (BAT)*         
      *                                  24 _ BEGIN  OF MONTH    (BAT)*         
      *                                  25 _ END    OF MONTH    (BAT)*         
      *                                  28 _ BEGIN  OF QUARTERLY(BAT)*         
      *                                  29 _ END    OF QUARTERLY(BAT)*         
      *                                  32 _ HALF OF YEAR(END)  (BAT)*         
      *                                  39 _ HALF OF YEAR(BEGIN)(BAT)*         
      *                               OTHER _ RESERVE                 *         
      *             ( VALUE = 1 : MEANS  'YES'                        *         
      *                       0 : MEANS  'NO'   )                     *         
      *   03 :JPRM:_INT_FLAGS.                                        *         
      *      05 :JPRM:_INT_FLAG OCCURS 10 SPECIAL INTDAY FLAG (Y/N)   *         
      *                                  01 _ RMB SAV INT DAY         *         
      *                                  02 _ FOREIGN CUR SAV INT DAY *         
      *                                  03 _ RMB DDA INT DAY         *         
      *                                  04 _ FOREIGN CUR DDA INT DAY *         
      *                               OTHER _ RESERVE                 *         
      *             ( VALUE = 1 : MEANS  'YES'                        *         
      *                       0 : MEANS  'NO'   )                     *         
      *   03 :JPRM:_TYPH_IND...............TYPHOON FLAG               *         
      *   03 :JPRM:_ECGO_IND...............ECGO TAPE FLAG             *         
      *   03 :JPRM:_LOCAL_CCY..............LOCAL CURRENCY             *         
      *   03 :JPRM:_HQ_BK..................BANK CODE                  *         
      *   03 :JPRM:_NC_POOL................NUM COUNTER POOL NAME      *         
      *   03 :JPRM:_HOLDAY_FLG.............Y_HOLDAY                   *         
      *   03 :JPRM:_COMMIT_INTERVAL........COMMIT INTERVAL            *         
      *   03 :JPRM:_COMMIT_INTERVAL2.......COMMIT INTERVAL2           *         
      *   03 :JPRM:_COMMIT_INTERVAL3.......COMMIT INTERVAL3           *         
      *   03 :JPRM:_COMMIT_INTERVAL4.......COMMIT INTERVAL4           *         
      *   03 :JPRM:_FILLER.................RESERVE                    *         
      *****************************************************************         
       01 SCR:JPRM:.                                                            
          05 :JPRM:_AC_DATE                 PIC 9(8).                           
          05 :JPRM:_NEXT_AC_DATE            PIC 9(8).                           
          05 :JPRM:_NEXT_AC_DATB            PIC 9(8).                           
          05 :JPRM:_NEXT_DAYS               PIC 9(2).                           
          05 :JPRM:_NEXT_DAYB               PIC 9(2).                           
          05 :JPRM:_LAST_AC_DATE            PIC 9(8).                           
          05 :JPRM:_LAST_AC_DATB            PIC 9(8).                           
          05 :JPRM:_LAST_DAYS               PIC 9(2).                           
          05 :JPRM:_LAST_DAYB               PIC 9(2).                           
          05 :JPRM:_EOM_DATE                PIC 9(8).                           
          05 :JPRM:_EOM_DATB                PIC 9(8).                           
          05 :JPRM:_DAYS_T_MON              PIC 9(2).                           
          05 :JPRM:_DAYB_T_MON              PIC 9(2).                           
          05 :JPRM:_JRN_IND                 PIC X(1).                           
          05 :JPRM:_MST_IND                 PIC X(1).                           
          05 :JPRM:_WDAY_FLAGS.                                                 
             07 :JPRM:_WDAY_FLAG OCCURS 40  PIC 9(1).                           
          05 :JPRM:_INT_FLAGS.                                                  
             07 :JPRM:_INT_FLAG  OCCURS  10 PIC 9(1).                           
          05 :JPRM:_TYPH_IND                PIC X(1).                           
          05 :JPRM:_ECGO_IND                PIC X(1).                           
          05 :JPRM:_LOCAL_CCY               PIC X(3).                           
          05 :JPRM:_HQ_BK                   PIC 9(3).                           
          05 :JPRM:_NC_POOL                 PIC X(08).                          
          05 :JPRM:_HOLDAY_FLG              PIC X(01).                          
          05 :JPRM:_COMMIT_INTERVAL         PIC 9(3).                           
          05 :JPRM:_COMMIT_INTERVAL2        PIC 9(3).                           
          05 :JPRM:_COMMIT_INTERVAL3        PIC 9(3).                           
          05 :JPRM:_COMMIT_INTERVAL4        PIC 9(3).                           
          05 :JPRM:_FILLER                  PIC X(11).                          
      *                                                                         
      *****************************************************************         
      *  COPYBOOK SPECIFICATION                                       *         
      *_______________________________________________________________*         
      *  COPYBOOK NAME. : SRCLMTCD                                    *         
      *  DESCRIPTION... : COPYBOOK OF 0087800                         *         
      *  LENGTH........ : 100                                         *         
      *  AUTHOR........ : DEVIBS                                      *         
      *  CREATED DATE.. : 2017/05/01                                  *         
      *  UPDATED DATE.. : 2017/05/01                                            
      *  VERSION NO.... : 1.0.0                                       *         
      *****************************************************************         
      *                                                                         
      *****************************************************************         
      * 01 SCR:LMTCD:                                                 *         
      *****************************************************************         
      *                                                                         
        01 SCR:LMTCD:.                                                          
           03 :LMTCD:_KEY.                                                      
              05 :LMTCD:_TYPE            DIC(PTYP_CD).                          
              05 :LMTCD:_CODE            DIC(PARA_CD).                          
           03 :LMTCD:_EFF_DATE           DIC(DT, P).                            
           03 :LMTCD:_EXP_DATE           DIC(DT, P).                            
           03 :LMTCD:_SDESC              DIC(DESC_20).                          
           03 :LMTCD:_CDESC              DIC(DESC_30).                          
           03 :LMTCD:_VAL_TXT.                                                  
              05 :LMTCD:_DESC            DIC(DESCE_60).                         
              05 :LMTCD:_XPSR1           DIC(NMR_DENR).                         
              05 :LMTCD:_XPSR2           DIC(NMR_DENR).                         
              05 :LMTCD:_CCY             DIC(CCY).                              
              05 :LMTCD:_CCF             DIC(NMR_DENR).                         
              05 :LMTCD:_RSK_WGHT        DIC(NMR_DENR).                         
              05 :LMTCD:_CNTY_XPSR       DIC(NMR_DENR).                         
              05 :LMTCD:_ON_BAL_FLAG     DIC(TYP).                              
              05 :LMTCD:_USAGE           DIC(TYP).                              
              05 :LMTCD:_AP_CODE         DIC(APP_CD).                           
              05 :LMTCD:_IND_DIRECT_MED  DIC(FLG).                              
              05 :LMTCD:_INTERFACE_ONLY  DIC(TYP).                              
              05 :LMTCD:_SYS_CD          DIC(FREE_CD5).                         
           03 :LMTCD:_UPD_DATE           DIC(DT, P).                            
           03 :LMTCD:_UPD_BR             DIC(BR, P).                            
           03 :LMTCD:_UPD_TLR            DIC(TLR_NO).                           
           03 :LMTCD:_TS                 PIC X(26).                             
       #IFNDEF TABLE_SCTLOB                                                     
       #DEFINE TABLE_SCTLOB                                                     
           EXEC SQL DECLARE SCTLOB TABLE                                        
           (                                                                    
             TABLE_NAME               CHAR(40) NOT NULL,                        
             COLUMN_NAME              CHAR(40) NOT NULL,                        
             COLUMN_TYPE              CHAR(10) NOT NULL,                        
             COLUMN_LENGTH            DEC(5, 0) NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTLOB                             *        
      ******************************************************************        
       01  SCR:LOB:.                                                            
           03 :LOB:_KEY.                                                        
              05 :LOB:_TABLE_NAME  PIC X(40).                                   
              05 :LOB:_COLUMN_NAME PIC X(40).                                   
           03 :LOB:_COLUMN_TYPE    PIC X(10).                                   
           03 :LOB:_COLUMN_LENGTH  PIC S9(5) COMP_3.                            
      *@*CHECKSUM 1828214637                                                    
       #IFNDEF TABLE_SCTPARMC                                                   
       #DEFINE TABLE_SCTPARMC                                                   
           EXEC SQL DECLARE SCTPARMC TABLE                                      
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             REMARKS                  VARCHAR(400) NOT NULL,                    
             OPEN_DATE                DEC(8, 0) NOT NULL,                       
             LST_DATE                 DEC(8, 0) NOT NULL,                       
             LST_TLT                  CHAR(8) NOT NULL,                         
             RBASE_TYP                CHAR(1) NOT NULL,                         
             CODE_NAME                CHAR(120) NOT NULL,                       
             CODE_NAME_S              CHAR(120) NOT NULL,                       
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPARMC                           *        
      ******************************************************************        
       01  SCR:PARMC:.                                                          
           03 :PARMC:_KEY.                                                      
              05 :PARMC:_TYPE      DIC(PTYP_CD).                                
              05 :PARMC:_CODE      DIC(PARA_CD).                                
           03 :PARMC:_EFF_DATE     DIC(DT, P).                                  
           03 :PARMC:_EXP_DATE     DIC(DT, P).                                  
           03 :PARMC:_DESC         DIC(DESC_20).                                
           03 :PARMC:_CDESC        DIC(DESC_30).                                
           03 :PARMC:_REMARKS.                                                  
              49 :PARMC:_REMARKS_LEN PIC S9(4) COMP.                            
              49 :PARMC:_REMARKS_TEXT DIC(TXT_BIG, L400).                       
           03 :PARMC:_OPEN_DATE    DIC(DT, P).                                  
           03 :PARMC:_LST_DATE     DIC(DT, P).                                  
           03 :PARMC:_LST_TLT      DIC(TLR_NO).                                 
           03 :PARMC:_RBASE_TYP    DIC(OPT).                                    
           03 :PARMC:_CODE_NAME    DIC(DESC_60).                                
           03 :PARMC:_CODE_NAME_S  DIC(DESC_60).                                
           03 :PARMC:_UPD_DATE     DIC(DT, P).                                  
           03 :PARMC:_UPD_BR       DIC(BR, P).                                  
           03 :PARMC:_UPD_TLR      DIC(TLR_NO).                                 
           03 :PARMC:_TS           PIC X(26).                                   
      *@*CHECKSUM 1286284174                                                    
       #IFNDEF TABLE_SCTPARMT                                                   
       #DEFINE TABLE_SCTPARMT                                                   
           EXEC SQL DECLARE SCTPARMT TABLE                                      
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             LVL                      CHAR(1) NOT NULL,                         
             UP_TYPE                  CHAR(5) NOT NULL,                         
             DOWNLOAD_FLG             CHAR(1) NOT NULL,                         
             REMARKS                  CHAR(120) NOT NULL,                       
             OPEN_DATE                DEC(8, 0) NOT NULL,                       
             LST_DATE                 DEC(8, 0) NOT NULL,                       
             LST_TLT                  CHAR(8) NOT NULL,                         
             LOWER_TYPE_CNT           DEC(5, 0) NOT NULL,                       
             LOWER_CODE_CNT           DEC(5, 0) NOT NULL,                       
             C_LST_DATE               DEC(8, 0) NOT NULL,                       
             CODE_MAX_LEN             DEC(2, 0) NOT NULL,                       
             DESCE_MAX_LEN            DEC(2, 0) NOT NULL,                       
             DESCC_MAX_LEN            DEC(2, 0) NOT NULL,                       
             MAINT_BR1                DEC(6, 0) NOT NULL,                       
             MAINT_BR2                DEC(6, 0) NOT NULL,                       
             MAINT_BR3                DEC(6, 0) NOT NULL,                       
             MAINT_BR4                DEC(6, 0) NOT NULL,                       
             MAINT_BR5                DEC(6, 0) NOT NULL,                       
             NAME                     CHAR(120) NOT NULL,                       
             CHG_NAME                 CHAR(120) NOT NULL,                       
             REP_FLG                  CHAR(1) NOT NULL,                         
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPARMT                           *        
      ******************************************************************        
       01  SCR:PARMT:.                                                          
           03 :PARMT:_KEY.                                                      
              05 :PARMT:_TYPE      DIC(PTYP_CD).                                
              05 :PARMT:_CODE      DIC(PARA_CD).                                
           03 :PARMT:_EFF_DATE     DIC(DT, P).                                  
           03 :PARMT:_EXP_DATE     DIC(DT, P).                                  
           03 :PARMT:_DESC         DIC(DESC_20).                                
           03 :PARMT:_CDESC        DIC(DESC_30).                                
           03 :PARMT:_LVL          DIC(TYP).                                    
           03 :PARMT:_UP_TYPE      DIC(PBCD_KND).                               
           03 :PARMT:_DOWNLOAD_FLG DIC(FLG).                                    
           03 :PARMT:_REMARKS      DIC(DESC_60).                                
           03 :PARMT:_OPEN_DATE    DIC(DT, P).                                  
           03 :PARMT:_LST_DATE     DIC(DT, P).                                  
           03 :PARMT:_LST_TLT      DIC(TLR_NO).                                 
           03 :PARMT:_LOWER_TYPE_CNT DIC(CNT, P).                               
           03 :PARMT:_LOWER_CODE_CNT DIC(CNT, P).                               
           03 :PARMT:_C_LST_DATE   DIC(DT, P).                                  
           03 :PARMT:_CODE_MAX_LEN DIC(NUM_2, P).                               
           03 :PARMT:_DESCE_MAX_LEN DIC(NUM_2, P).                              
           03 :PARMT:_DESCC_MAX_LEN DIC(NUM_2, P).                              
           03 :PARMT:_MAINT_BR1    DIC(BR, P).                                  
           03 :PARMT:_MAINT_BR2    DIC(BR, P).                                  
           03 :PARMT:_MAINT_BR3    DIC(BR, P).                                  
           03 :PARMT:_MAINT_BR4    DIC(BR, P).                                  
           03 :PARMT:_MAINT_BR5    DIC(BR, P).                                  
           03 :PARMT:_NAME         DIC(DESC_60).                                
           03 :PARMT:_CHG_NAME     DIC(DESC_60).                                
           03 :PARMT:_REP_FLG      DIC(FLG).                                    
           03 :PARMT:_UPD_DATE     DIC(DT, P).                                  
           03 :PARMT:_UPD_BR       DIC(BR, P).                                  
           03 :PARMT:_UPD_TLR      DIC(TLR_NO).                                 
           03 :PARMT:_TS           PIC X(26).                                   
      *@*CHECKSUM _1690810469                                                   
       #IFNDEF TABLE_SCTPBANK                                                   
       #DEFINE TABLE_SCTPBANK                                                   
           EXEC SQL DECLARE SCTPBANK TABLE                                      
           (                                                                    
             BNK                      CHAR(3) NOT NULL,                         
             EFF_DT                   DEC(8, 0) NOT NULL,                       
             EXP_DT                   DEC(8, 0) NOT NULL,                       
             CHN_NM                   CHAR(120) NOT NULL,                       
             ENG_NM                   CHAR(70) NOT NULL,                        
             AC_CHK                   CHAR(1) NOT NULL,                         
             CI_CHK                   CHAR(1) NOT NULL,                         
             FX_RATE                  CHAR(1) NOT NULL,                         
             MAX_LVL                  CHAR(1) NOT NULL,                         
             AUH_LVL                  CHAR(1) NOT NULL,                         
             HEAD_BR                  DEC(6, 0) NOT NULL,                       
             LOC_CCY1                 CHAR(3) NOT NULL,                         
             EVA_CCY                  CHAR(3) NOT NULL,                         
             TOT_CCY                  CHAR(3) NOT NULL,                         
             TAI_FEN                  CHAR(1) NOT NULL,                         
             TLR_COND                 CHAR(1) NOT NULL,                         
             CALD_BUI                 CHAR(4) NOT NULL,                         
             CALD_SYS                 CHAR(4) NOT NULL,                         
             INT_TAX                  CHAR(1) NOT NULL,                         
             COUN_CD                  CHAR(4) NOT NULL,                         
             SG_IN_CNT                DEC(3, 0) NOT NULL,                       
             CLS                      CHAR(1) NOT NULL,                         
             FEE_FLG                  CHAR(1) NOT NULL,                         
             OPN_TM                   DEC(6, 0) NOT NULL,                       
             CLS_TM                   DEC(6, 0) NOT NULL,                       
             HOPN_TM                  DEC(6, 0) NOT NULL,                       
             HCLS_TM                  DEC(6, 0) NOT NULL,                       
             CITY_CD                  CHAR(6) NOT NULL,                         
             O_CHK_FL                 CHAR(1) NOT NULL,                         
             V_CHK_FL                 CHAR(1) NOT NULL,                         
             AUDIT_FL                 CHAR(1) NOT NULL,                         
             H_E_TIME                 DEC(6, 0) NOT NULL,                       
             ERP_BRAN                 DEC(9, 0) NOT NULL,                       
             EX_RA                    CHAR(3) NOT NULL,                         
             CALD_PUB                 CHAR(4) NOT NULL,                         
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             CRT_TLR                  CHAR(8) NOT NULL,                         
             HKICL_BK                 CHAR(3) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPBANK                           *        
      ******************************************************************        
       01  SCR:PBANK:.                                                          
           03 :PBANK:_KEY.                                                      
              05 :PBANK:_BNK       DIC(BK).                                     
              05 :PBANK:_EFF_DT    DIC(DT, P).                                  
           03 :PBANK:_EXP_DT       DIC(DT, P).                                  
           03 :PBANK:_CHN_NM       DIC(BK_CNM).                                 
           03 :PBANK:_ENG_NM       DIC(BK_ENM).                                 
           03 :PBANK:_AC_CHK       DIC(OPT).                                    
           03 :PBANK:_CI_CHK       DIC(OPT).                                    
           03 :PBANK:_FX_RATE      DIC(OPT).                                    
           03 :PBANK:_MAX_LVL      DIC(TLR_LVL).                                
           03 :PBANK:_AUH_LVL      DIC(TX_LVL).                                 
           03 :PBANK:_HEAD_BR      DIC(BR, P).                                  
           03 :PBANK:_LOC_CCY1     DIC(CCY).                                    
           03 :PBANK:_EVA_CCY      DIC(CCY).                                    
           03 :PBANK:_TOT_CCY      DIC(CCY).                                    
           03 :PBANK:_TAI_FEN      DIC(FLG).                                    
           03 :PBANK:_TLR_COND     DIC(OPT).                                    
           03 :PBANK:_CALD_BUI     DIC(CAL_CD).                                 
           03 :PBANK:_CALD_SYS     DIC(CAL_CD).                                 
           03 :PBANK:_INT_TAX      DIC(FLG).                                    
           03 :PBANK:_COUN_CD      DIC(CNTYS_CD).                               
           03 :PBANK:_SG_IN_CNT    DIC(SEQ_3, P).                               
           03 :PBANK:_CLS          DIC(OPT).                                    
           03 :PBANK:_FEE_FLG      DIC(FLG).                                    
           03 :PBANK:_OPN_TM       DIC(TM, P).                                  
           03 :PBANK:_CLS_TM       DIC(TM, P).                                  
           03 :PBANK:_HOPN_TM      DIC(TM, P).                                  
           03 :PBANK:_HCLS_TM      DIC(TM, P).                                  
           03 :PBANK:_CITY_CD      DIC(CITY_CD).                                
           03 :PBANK:_O_CHK_FL     DIC(FLG).                                    
           03 :PBANK:_V_CHK_FL     DIC(FLG).                                    
           03 :PBANK:_AUDIT_FL     DIC(FLG).                                    
           03 :PBANK:_H_E_TIME     DIC(TM, P).                                  
           03 :PBANK:_ERP_BRAN     DIC(ERPBR_NO, P).                            
           03 :PBANK:_EX_RA        DIC(EXRA_CD).                                
           03 :PBANK:_CALD_PUB     DIC(CAL_CD).                                 
           03 :PBANK:_UPD_DATE     DIC(DT, P).                                  
           03 :PBANK:_UPD_TLR      DIC(TLR_NO).                                 
           03 :PBANK:_CRT_DATE     DIC(DT, P).                                  
           03 :PBANK:_CRT_TLR      DIC(TLR_NO).                                 
           03 :PBANK:_HKICL_BK     DIC(CLR_BK).                                 
           03 :PBANK:_TS           PIC X(26).                                   
      *@*CHECKSUM 893754299                                                     
       #IFNDEF TABLE_SCTPCAL                                                    
       #DEFINE TABLE_SCTPCAL                                                    
           EXEC SQL DECLARE SCTPCAL TABLE                                       
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             DATA                     VARCHAR(372) NOT NULL,                    
             CNTY_CODE                CHAR(4) NOT NULL,                         
             CITY_CODE                CHAR(6) NOT NULL,                         
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPCAL                            *        
      ******************************************************************        
       01  SCR:PCAL:.                                                           
           03 :PCAL:_KEY.                                                       
              05 :PCAL:_TYPE       DIC(PTYP_CD).                                
              05 :PCAL:_CODE       DIC(PARA_CD).                                
           03 :PCAL:_EFF_DATE      DIC(DT, P).                                  
           03 :PCAL:_EXP_DATE      DIC(DT, P).                                  
           03 :PCAL:_DESC          DIC(DESC_20).                                
           03 :PCAL:_CDESC         DIC(DESC_30).                                
           03 :PCAL:_DATA.                                                      
              49 :PCAL:_DATA_LEN   PIC S9(4) COMP.                              
              49 :PCAL:_DATA_TEXT  DIC(TXT_BIG, L372).                          
           03 :PCAL:_CNTY_CODE     DIC(CNTYS_CD).                               
           03 :PCAL:_CITY_CODE     DIC(CITY_CD).                                
           03 :PCAL:_UPD_DATE      DIC(DT, P).                                  
           03 :PCAL:_UPD_BR        DIC(BR, P).                                  
           03 :PCAL:_UPD_TLR       DIC(TLR_NO).                                 
           03 :PCAL:_TS            PIC X(26).                                   
      *@*CHECKSUM 1390618578                                                    
       #IFNDEF TABLE_SCTPCCY                                                    
       #DEFINE TABLE_SCTPCCY                                                    
           EXEC SQL DECLARE SCTPCCY TABLE                                       
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             CCY                      CHAR(3) NOT NULL,                         
             CCY_CD                   DEC(2, 0) NOT NULL,                       
             CUR_NM                   CHAR(48) NOT NULL,                        
             EFF_DT                   DEC(8, 0) NOT NULL,                       
             EXP_DT                   DEC(8, 0) NOT NULL,                       
             CNTY_CD                  CHAR(4) NOT NULL,                         
             CITY_CD                  CHAR(6) NOT NULL,                         
             UNIT_CURU_NAME           CHAR(20) NOT NULL,                        
             CENT_CURU_NAME           CHAR(20) NOT NULL,                        
             RGN_CCY                  CHAR(3) NOT NULL,                         
             DEC_MTH                  CHAR(1) NOT NULL,                         
             CASH_MTH                 CHAR(1) NOT NULL,                         
             RND_MTH                  CHAR(1) NOT NULL,                         
             TR_FLG                   CHAR(1) NOT NULL,                         
             CASH_FLG                 CHAR(1) NOT NULL,                         
             CHGU_MTH                 CHAR(1) NOT NULL,                         
             EXH_FLG                  CHAR(1) NOT NULL,                         
             CALR_STD                 CHAR(2) NOT NULL,                         
             CAL_CD                   CHAR(4) NOT NULL,                         
             UPT_DT                   DEC(8, 0) NOT NULL,                       
             UPT_TLR                  CHAR(8) NOT NULL,                         
             ISR_DAYS                 DEC(2, 0) NOT NULL,                       
             BAL_DAYS                 DEC(2, 0) NOT NULL,                       
             CHG_CCY                  CHAR(1) NOT NULL,                         
             CUR_CNM                  CHAR(48) NOT NULL,                        
             HANG_LMT_AMT             DEC(16, 2) NOT NULL,                      
             CCY_CD_INT               CHAR(3) NOT NULL,                         
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPCCY                            *        
      ******************************************************************        
       01  SCR:PCCY:.                                                           
           03 :PCCY:_KEY.                                                       
              05 :PCCY:_TYPE       DIC(PTYP_CD).                                
              05 :PCCY:_CODE       DIC(PARA_CD).                                
           03 :PCCY:_EFF_DATE      DIC(DT, P).                                  
           03 :PCCY:_EXP_DATE      DIC(DT, P).                                  
           03 :PCCY:_DESC          DIC(DESC_20).                                
           03 :PCCY:_CDESC         DIC(DESC_30).                                
           03 :PCCY:_CCY           DIC(CCY).                                    
           03 :PCCY:_CCY_CD        DIC(CCY_NO, P).                              
           03 :PCCY:_CUR_NM        DIC(CUR_NM).                                 
           03 :PCCY:_EFF_DT        DIC(DT, P).                                  
           03 :PCCY:_EXP_DT        DIC(DT, P).                                  
           03 :PCCY:_CNTY_CD       DIC(CNTYS_CD).                               
           03 :PCCY:_CITY_CD       DIC(CITY_CD).                                
           03 :PCCY:_UNIT_CURU_NAME DIC(CURU_NM).                               
           03 :PCCY:_CENT_CURU_NAME DIC(CURU_NM).                               
           03 :PCCY:_RGN_CCY       DIC(CCY).                                    
           03 :PCCY:_DEC_MTH       DIC(DEBY_MTH).                               
           03 :PCCY:_CASH_MTH      DIC(DEBY_MTH).                               
           03 :PCCY:_RND_MTH       DIC(RND_MTH).                                
           03 :PCCY:_TR_FLG        DIC(FLG).                                    
           03 :PCCY:_CASH_FLG      DIC(FLG).                                    
           03 :PCCY:_CHGU_MTH      DIC(CHGU_MTH).                               
           03 :PCCY:_EXH_FLG       DIC(FLG).                                    
           03 :PCCY:_CALR_STD      DIC(CALR_STD).                               
           03 :PCCY:_CAL_CD        DIC(CAL_CD).                                 
           03 :PCCY:_UPT_DT        DIC(DT, P).                                  
           03 :PCCY:_UPT_TLR       DIC(TLR_NO).                                 
           03 :PCCY:_ISR_DAYS      DIC(DAY, P).                                 
           03 :PCCY:_BAL_DAYS      DIC(DAY, P).                                 
           03 :PCCY:_CHG_CCY       DIC(FLG).                                    
           03 :PCCY:_CUR_CNM       DIC(CUR_NM).                                 
           03 :PCCY:_HANG_LMT_AMT  DIC(AMT, P).                                 
           03 :PCCY:_CCY_CD_INT    DIC(CCY).                                    
           03 :PCCY:_UPD_DATE      DIC(DT, P).                                  
           03 :PCCY:_UPD_BR        DIC(BR, P).                                  
           03 :PCCY:_UPD_TLR       DIC(TLR_NO).                                 
           03 :PCCY:_TS            PIC X(26).                                   
      *@*CHECKSUM 1919495339                                                    
       #IFNDEF TABLE_SCTPCITY                                                   
       #DEFINE TABLE_SCTPCITY                                                   
           EXEC SQL DECLARE SCTPCITY TABLE                                      
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             PDAYS                    DEC(3, 0) NOT NULL,                       
             P_CUTTIME                DEC(6, 0) NOT NULL,                       
             C_CUTTIME                DEC(6, 0) NOT NULL,                       
             CALR_CODE                CHAR(4) NOT NULL,                         
             TIMEZONE                 CHAR(3) NOT NULL,                         
             DESCE                    CHAR(30) NOT NULL,                        
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPCITY                           *        
      ******************************************************************        
       01  SCR:PCITY:.                                                          
           03 :PCITY:_KEY.                                                      
              05 :PCITY:_TYPE      DIC(PTYP_CD).                                
              05 :PCITY:_CODE      DIC(PARA_CD).                                
           03 :PCITY:_EFF_DATE     DIC(DT, P).                                  
           03 :PCITY:_EXP_DATE     DIC(DT, P).                                  
           03 :PCITY:_DESC         DIC(DESC_20).                                
           03 :PCITY:_CDESC        DIC(DESC_30).                                
           03 :PCITY:_PDAYS        DIC(DAYS, P).                                
           03 :PCITY:_P_CUTTIME    DIC(TM, P).                                  
           03 :PCITY:_C_CUTTIME    DIC(TM, P).                                  
           03 :PCITY:_CALR_CODE    DIC(CAL_CD).                                 
           03 :PCITY:_TIMEZONE     DIC(TMZ_CD).                                 
           03 :PCITY:_DESCE        DIC(DESCE_30).                               
           03 :PCITY:_UPD_DATE     DIC(DT, P).                                  
           03 :PCITY:_UPD_BR       DIC(BR, P).                                  
           03 :PCITY:_UPD_TLR      DIC(TLR_NO).                                 
           03 :PCITY:_TS           PIC X(26).                                   
      *@*CHECKSUM _900358431                                                    
       #IFNDEF TABLE_SCTPCNTY                                                   
       #DEFINE TABLE_SCTPCNTY                                                   
           EXEC SQL DECLARE SCTPCNTY TABLE                                      
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             PDAYS                    DEC(3, 0) NOT NULL,                       
             P_CUTTIME                DEC(6, 0) NOT NULL,                       
             C_CUTTIME                DEC(6, 0) NOT NULL,                       
             SWIFT_CODE               CHAR(11) NOT NULL,                        
             IBAN                     CHAR(34) NOT NULL,                        
             CALR_CODE                CHAR(4) NOT NULL,                         
             ISO_CODE                 CHAR(3) NOT NULL,                         
             ISO_NUMER                CHAR(6) NOT NULL,                         
             CUR                      CHAR(3) NOT NULL,                         
             TIMEZONE                 CHAR(3) NOT NULL,                         
             LANG_CODE                CHAR(2) NOT NULL,                         
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPCNTY                           *        
      ******************************************************************        
       01  SCR:PCNTY:.                                                          
           03 :PCNTY:_KEY.                                                      
              05 :PCNTY:_TYPE      DIC(PTYP_CD).                                
              05 :PCNTY:_CODE      DIC(PARA_CD).                                
           03 :PCNTY:_EFF_DATE     DIC(DT, P).                                  
           03 :PCNTY:_EXP_DATE     DIC(DT, P).                                  
           03 :PCNTY:_DESC         DIC(DESC_20).                                
           03 :PCNTY:_CDESC        DIC(DESC_30).                                
           03 :PCNTY:_PDAYS        DIC(DAYS, P).                                
           03 :PCNTY:_P_CUTTIME    DIC(TM, P).                                  
           03 :PCNTY:_C_CUTTIME    DIC(TM, P).                                  
           03 :PCNTY:_SWIFT_CODE   DIC(BIC_NO).                                 
           03 :PCNTY:_IBAN         DIC(IBAN).                                   
           03 :PCNTY:_CALR_CODE    DIC(CAL_CD).                                 
           03 :PCNTY:_ISO_CODE     DIC(CNTY_CD).                                
           03 :PCNTY:_ISO_NUMER    DIC(ICNTY_NO).                               
           03 :PCNTY:_CUR          DIC(CCY).                                    
           03 :PCNTY:_TIMEZONE     DIC(TMZ_CD).                                 
           03 :PCNTY:_LANG_CODE    DIC(LANG_CD).                                
           03 :PCNTY:_UPD_DATE     DIC(DT, P).                                  
           03 :PCNTY:_UPD_BR       DIC(BR, P).                                  
           03 :PCNTY:_UPD_TLR      DIC(TLR_NO).                                 
           03 :PCNTY:_TS           PIC X(26).                                   
      *@*CHECKSUM _1367852364                                                   
       #IFNDEF TABLE_SCTPORGM                                                   
       #DEFINE TABLE_SCTPORGM                                                   
           EXEC SQL DECLARE SCTPORGM TABLE                                      
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             SUPR_BR                  DEC(6, 0) NOT NULL,                       
             ATTR                     CHAR(1) NOT NULL,                         
             LVL                      CHAR(1) NOT NULL,                         
             ORG_TYPE                 CHAR(2) NOT NULL,                         
             ORG_EFF_DT               DEC(8, 0) NOT NULL,                       
             ORG_EXP_DT               DEC(8, 0) NOT NULL,                       
             CHN_NM                   CHAR(120) NOT NULL,                       
             CHN_ADDR                 CHAR(200) NOT NULL,                       
             ENG_NM                   CHAR(70) NOT NULL,                        
             ENG_ADDR                 CHAR(200) NOT NULL,                       
             ABBR                     CHAR(2) NOT NULL,                         
             LINK_MAN                 CHAR(140) NOT NULL,                       
             LINK_TEL                 CHAR(18) NOT NULL,                        
             POST                     CHAR(6) NOT NULL,                         
             TLR_MAX                  CHAR(1) NOT NULL,                         
             ATH_MAX                  CHAR(1) NOT NULL,                         
             FX_BUSI                  CHAR(2) NOT NULL,                         
             CNAP_NO                  DEC(12, 0) NOT NULL,                      
             ACCT_FLG                 CHAR(1) NOT NULL,                         
             OPN_DT                   DEC(8, 0) NOT NULL,                       
             RUN_HDAY                 CHAR(1) NOT NULL,                         
             RUN_MODE                 CHAR(1) NOT NULL,                         
             CALD_CD                  CHAR(4) NOT NULL,                         
             OPN_TM                   DEC(6, 0) NOT NULL,                       
             CLS_TM                   DEC(6, 0) NOT NULL,                       
             HOPN_TM                  DEC(6, 0) NOT NULL,                       
             HCLS_TM                  DEC(6, 0) NOT NULL,                       
             UPT_DT                   DEC(8, 0) NOT NULL,                       
             UPT_TLR                  CHAR(8) NOT NULL,                         
             FAX                      CHAR(18) NOT NULL,                        
             TELEX                    CHAR(18) NOT NULL,                        
             PRO_FLG                  CHAR(1) NOT NULL,                         
             COST_FLG                 CHAR(1) NOT NULL,                         
             GL_MST                   DEC(6, 0) NOT NULL,                       
             DEF_PTR                  CHAR(80) NOT NULL,                        
             PAY_PTR                  CHAR(80) NOT NULL,                        
             CFM_PTR                  CHAR(80) NOT NULL,                        
             SWF_ID                   CHAR(9) NOT NULL,                         
             BIC_NO                   CHAR(3) NOT NULL,                         
             IBAN_NO                  CHAR(34) NOT NULL,                        
             CI_LEN                   DEC(9, 0) NOT NULL,                       
             COUN_CD                  CHAR(4) NOT NULL,                         
             CITY_CD                  CHAR(6) NOT NULL,                         
             UNSCH_HOL                CHAR(1) NOT NULL,                         
             UNSCH_HOL_TM             DEC(6, 0) NOT NULL,                       
             OPN_CHECK_FLG            CHAR(1) NOT NULL,                         
             VOU_CHECK_FLG            CHAR(1) NOT NULL,                         
             INT_TAX_FLG              CHAR(1) NOT NULL,                         
             ERP_BRAN                 DEC(9, 0) NOT NULL,                       
             ORG_FLG                  CHAR(1) NOT NULL,                         
             BRANCH_BR                DEC(6, 0) NOT NULL,                       
             FTZ_CD                   CHAR(2) NOT NULL,                         
             BOP_CD                   CHAR(12) NOT NULL,                        
             CIC_CD                   CHAR(11) NOT NULL,                        
             BICBR                    CHAR(3) NOT NULL,                         
             FII_CD                   CHAR(15) NOT NULL,                        
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPORGM                           *        
      ******************************************************************        
       01  SCR:PORGM:.                                                          
           03 :PORGM:_KEY.                                                      
              05 :PORGM:_TYPE      DIC(PTYP_CD).                                
              05 :PORGM:_CODE      DIC(PARA_CD).                                
           03 :PORGM:_EFF_DATE     DIC(DT, P).                                  
           03 :PORGM:_EXP_DATE     DIC(DT, P).                                  
           03 :PORGM:_DESC         DIC(DESC_20).                                
           03 :PORGM:_CDESC        DIC(DESC_30).                                
           03 :PORGM:_SUPR_BR      DIC(BR, P).                                  
           03 :PORGM:_ATTR         DIC(OPT).                                    
           03 :PORGM:_LVL          DIC(ORG_LVL).                                
           03 :PORGM:_ORG_TYPE     DIC(TYPE).                                   
           03 :PORGM:_ORG_EFF_DT   DIC(DT, P).                                  
           03 :PORGM:_ORG_EXP_DT   DIC(DT, P).                                  
           03 :PORGM:_CHN_NM       DIC(BK_CNM).                                 
           03 :PORGM:_CHN_ADDR     DIC(C_ADDR).                                 
           03 :PORGM:_ENG_NM       DIC(BK_ENM).                                 
           03 :PORGM:_ENG_ADDR     DIC(X_200).                                  
           03 :PORGM:_ABBR         DIC(ABBR_CD).                                
           03 :PORGM:_LINK_MAN     DIC(CI_CNM).                                 
           03 :PORGM:_LINK_TEL     DIC(TEL_NO).                                 
           03 :PORGM:_POST         DIC(POST_CD).                                
           03 :PORGM:_TLR_MAX      DIC(TLR_LVL).                                
           03 :PORGM:_ATH_MAX      DIC(TX_LVL).                                 
           03 :PORGM:_FX_BUSI      DIC(STD).                                    
           03 :PORGM:_CNAP_NO      DIC(CNAPS_NO, P).                            
           03 :PORGM:_ACCT_FLG     DIC(FLG).                                    
           03 :PORGM:_OPN_DT       DIC(DT, P).                                  
           03 :PORGM:_RUN_HDAY     DIC(FLG).                                    
           03 :PORGM:_RUN_MODE     DIC(RUN_MOD).                                
           03 :PORGM:_CALD_CD      DIC(CAL_CD).                                 
           03 :PORGM:_OPN_TM       DIC(TM, P).                                  
           03 :PORGM:_CLS_TM       DIC(TM, P).                                  
           03 :PORGM:_HOPN_TM      DIC(TM, P).                                  
           03 :PORGM:_HCLS_TM      DIC(TM, P).                                  
           03 :PORGM:_UPT_DT       DIC(DT, P).                                  
           03 :PORGM:_UPT_TLR      DIC(TLR_NO).                                 
           03 :PORGM:_FAX          DIC(TEL_NO).                                 
           03 :PORGM:_TELEX        DIC(TEL_NO).                                 
           03 :PORGM:_PRO_FLG      DIC(FLG).                                    
           03 :PORGM:_COST_FLG     DIC(FLG).                                    
           03 :PORGM:_GL_MST       DIC(GL_MSTNO, P).                            
           03 :PORGM:_DEF_PTR      DIC(PRT_NM).                                 
           03 :PORGM:_PAY_PTR      DIC(PRT_NM).                                 
           03 :PORGM:_CFM_PTR      DIC(PRT_NM).                                 
           03 :PORGM:_SWF_ID       DIC(SWTER_NO).                               
           03 :PORGM:_BIC_NO       DIC(BICBR_NO).                               
           03 :PORGM:_IBAN_NO      DIC(IBAN).                                   
           03 :PORGM:_CI_LEN       DIC(LEN, P).                                 
           03 :PORGM:_COUN_CD      DIC(CNTYS_CD).                               
           03 :PORGM:_CITY_CD      DIC(CITY_CD).                                
           03 :PORGM:_UNSCH_HOL    DIC(FLG).                                    
           03 :PORGM:_UNSCH_HOL_TM DIC(TM, P).                                  
           03 :PORGM:_OPN_CHECK_FLG DIC(FLG).                                   
           03 :PORGM:_VOU_CHECK_FLG DIC(FLG).                                   
           03 :PORGM:_INT_TAX_FLG  DIC(FLG).                                    
           03 :PORGM:_ERP_BRAN     DIC(ERPBR_NO, P).                            
           03 :PORGM:_ORG_FLG      DIC(OPT).                                    
           03 :PORGM:_BRANCH_BR    DIC(BR, P).                                  
           03 :PORGM:_FTZ_CD       DIC(TYPE).                                   
           03 :PORGM:_BOP_CD       DIC(SAFE_BK).                                
           03 :PORGM:_CIC_CD       DIC(CIC_CD).                                 
           03 :PORGM:_BICBR        DIC(BICBR_NO).                               
           03 :PORGM:_FII_CD       DIC(FII_CD).                                 
           03 :PORGM:_UPD_DATE     DIC(DT, P).                                  
           03 :PORGM:_UPD_BR       DIC(BR, P).                                  
           03 :PORGM:_UPD_TLR      DIC(TLR_NO).                                 
           03 :PORGM:_TS           PIC X(26).                                   
      *@*CHECKSUM 763221292                                                     
       #IFNDEF TABLE_SCTPTRT                                                    
       #DEFINE TABLE_SCTPTRT                                                    
           EXEC SQL DECLARE SCTPTRT TABLE                                       
           (                                                                    
             TYPE                     CHAR(5) NOT NULL,                         
             CODE                     CHAR(40) NOT NULL,                        
             EFF_DATE                 DEC(8, 0) NOT NULL,                       
             EXP_DATE                 DEC(8, 0) NOT NULL,                       
             DESC                     CHAR(20) NOT NULL,                        
             CDESC                    CHAR(60) NOT NULL,                        
             TR_MMO                   CHAR(3) NOT NULL,                         
             STUS                     CHAR(1) NOT NULL,                         
             SYS_LVL                  CHAR(1) NOT NULL,                         
             RUN_MODE                 CHAR(1) NOT NULL,                         
             LOG_IND                  CHAR(1) NOT NULL,                         
             REEN_IND                 CHAR(1) NOT NULL,                         
             CLS                      DEC(2, 0) NOT NULL,                       
             SELF_GRNT                CHAR(1) NOT NULL,                         
             AUTH_LVL                 CHAR(2) NOT NULL,                         
             APVL_IND                 CHAR(1) NOT NULL,                         
             ODM_PRN_IND              CHAR(1) NOT NULL,                         
             HIS_REC_IND              CHAR(1) NOT NULL,                         
             ATTR_WORD                CHAR(32) NOT NULL,                        
             SUBS_TX_CODE             CHAR(7) NOT NULL,                         
             AWA_IND                  CHAR(1) NOT NULL,                         
             INP_FMT                  CHAR(4) NOT NULL,                         
             OUTP_FMT                 CHAR(4) NOT NULL,                         
             OUTP_CNTL                CHAR(32) NOT NULL,                        
             SPEC_CNTL                CHAR(32) NOT NULL,                        
             PGM_CNT                  DEC(5, 0) NOT NULL,                       
             PGM_NAME1                CHAR(8) NOT NULL,                         
             PGM_SCHE1                CHAR(1) NOT NULL,                         
             PGM_CTL1                 CHAR(8) NOT NULL,                         
             PGM_RMK1                 CHAR(20) NOT NULL,                        
             PGM_NAME2                CHAR(8) NOT NULL,                         
             PGM_SCHE2                CHAR(1) NOT NULL,                         
             PGM_CTL2                 CHAR(8) NOT NULL,                         
             PGM_RMK2                 CHAR(20) NOT NULL,                        
             PGM_NAME3                CHAR(8) NOT NULL,                         
             PGM_SCHE3                CHAR(1) NOT NULL,                         
             PGM_CTL3                 CHAR(8) NOT NULL,                         
             PGM_RMK3                 CHAR(20) NOT NULL,                        
             PGM_NAME4                CHAR(8) NOT NULL,                         
             PGM_SCHE4                CHAR(1) NOT NULL,                         
             PGM_CTL4                 CHAR(8) NOT NULL,                         
             PGM_RMK4                 CHAR(20) NOT NULL,                        
             PGM_NAME5                CHAR(8) NOT NULL,                         
             PGM_SCHE5                CHAR(1) NOT NULL,                         
             PGM_CTL5                 CHAR(8) NOT NULL,                         
             PGM_RMK5                 CHAR(20) NOT NULL,                        
             WAIT_BSP1                CHAR(7) NOT NULL,                         
             WAIT_BSP2                CHAR(7) NOT NULL,                         
             WAIT_BSP3                CHAR(7) NOT NULL,                         
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_BR                   DEC(6, 0) NOT NULL,                       
             UPD_TLR                  CHAR(8) NOT NULL,                         
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE SCTPTRT                            *        
      ******************************************************************        
       01  SCR:PTRT:.                                                           
           03 :PTRT:_KEY.                                                       
              05 :PTRT:_TYPE       DIC(PTYP_CD).                                
              05 :PTRT:_CODE       DIC(PARA_CD).                                
           03 :PTRT:_EFF_DATE      DIC(DT, P).                                  
           03 :PTRT:_EXP_DATE      DIC(DT, P).                                  
           03 :PTRT:_DESC          DIC(DESC_20).                                
           03 :PTRT:_CDESC         DIC(DESC_30).                                
           03 :PTRT:_TR_MMO        DIC(MMO).                                    
           03 :PTRT:_STUS          DIC(STS).                                    
           03 :PTRT:_SYS_LVL       DIC(SYS_LVL).                                
           03 :PTRT:_RUN_MODE      DIC(RUN_MOD).                                
           03 :PTRT:_LOG_IND       DIC(FLG).                                    
           03 :PTRT:_REEN_IND      DIC(FLG).                                    
           03 :PTRT:_CLS           DIC(LVL, P).                                 
           03 :PTRT:_SELF_GRNT     DIC(FLG).                                    
           03 :PTRT:_AUTH_LVL      DIC(ATHLV_CD).                               
           03 :PTRT:_APVL_IND      DIC(FLG).                                    
           03 :PTRT:_ODM_PRN_IND   DIC(FLG).                                    
           03 :PTRT:_HIS_REC_IND   DIC(FLG).                                    
           03 :PTRT:_ATTR_WORD     DIC(TRT_CTLW).                               
           03 :PTRT:_SUBS_TX_CODE  DIC(TX_CD).                                  
           03 :PTRT:_AWA_IND       DIC(FLG).                                    
           03 :PTRT:_INP_FMT       DIC(TABLE_NO).                               
           03 :PTRT:_OUTP_FMT      DIC(TABLE_NO).                               
           03 :PTRT:_OUTP_CNTL     DIC(OUT_CTLW).                               
           03 :PTRT:_SPEC_CNTL     DIC(SP_CTLW).                                
           03 :PTRT:_PGM_CNT       DIC(CNT, P).                                 
           03 :PTRT:_PGM_NAME1     DIC(PGM_ID).                                 
           03 :PTRT:_PGM_SCHE1     DIC(FLG).                                    
           03 :PTRT:_PGM_CTL1      DIC(FILE_ID).                                
           03 :PTRT:_PGM_RMK1      DIC(DESC_20).                                
           03 :PTRT:_PGM_NAME2     DIC(PGM_ID).                                 
           03 :PTRT:_PGM_SCHE2     DIC(FLG).                                    
           03 :PTRT:_PGM_CTL2      DIC(FILE_ID).                                
           03 :PTRT:_PGM_RMK2      DIC(DESC_20).                                
           03 :PTRT:_PGM_NAME3     DIC(PGM_ID).                                 
           03 :PTRT:_PGM_SCHE3     DIC(FLG).                                    
           03 :PTRT:_PGM_CTL3      DIC(FILE_ID).                                
           03 :PTRT:_PGM_RMK3      DIC(DESC_20).                                
           03 :PTRT:_PGM_NAME4     DIC(PGM_ID).                                 
           03 :PTRT:_PGM_SCHE4     DIC(FLG).                                    
           03 :PTRT:_PGM_CTL4      DIC(FILE_ID).                                
           03 :PTRT:_PGM_RMK4      DIC(DESC_20).                                
           03 :PTRT:_PGM_NAME5     DIC(PGM_ID).                                 
           03 :PTRT:_PGM_SCHE5     DIC(FLG).                                    
           03 :PTRT:_PGM_CTL5      DIC(FILE_ID).                                
           03 :PTRT:_PGM_RMK5      DIC(DESC_20).                                
           03 :PTRT:_WAIT_BSP1     DIC(SVR_CD).                                 
           03 :PTRT:_WAIT_BSP2     DIC(SVR_CD).                                 
           03 :PTRT:_WAIT_BSP3     DIC(SVR_CD).                                 
           03 :PTRT:_UPD_DATE      DIC(DT, P).                                  
           03 :PTRT:_UPD_BR        DIC(BR, P).                                  
           03 :PTRT:_UPD_TLR       DIC(TLR_NO).                                 
           03 :PTRT:_TS            PIC X(26).                                   
      *@*CHECKSUM 708771525                                                     
       #IFNDEF TABLE_WFTRMK                                                     
       #DEFINE TABLE_WFTRMK                                                     
           EXEC SQL DECLARE WFTRMK TABLE                                        
           (                                                                    
             REF                      CHAR(32) NOT NULL,                        
             SEQ                      DEC(5, 0) NOT NULL,                       
             AC_DT                    DEC(8, 0) NOT NULL,                       
             JRNNO                    DEC(12, 0) NOT NULL,                      
             JRN_SEQ                  DEC(4, 0) NOT NULL,                       
             TLT                      CHAR(8) NOT NULL,                         
             BR                       DEC(6, 0) NOT NULL,                       
             DATA                     CHAR(240) NOT NULL,                       
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE WFTRMK                             *        
      ******************************************************************        
       01  WFR:RMK:.                                                            
           03 :RMK:_KEY.                                                        
              05 :RMK:_REF         DIC(WF_NO).                                  
              05 :RMK:_SEQ         DIC(CNT, P).                                 
           03 :RMK:_AC_DT          DIC(DT, P).                                  
           03 :RMK:_JRNNO          DIC(JRNNO, P).                               
           03 :RMK:_JRN_SEQ        DIC(JRN_SEQ, P).                             
           03 :RMK:_TLT            DIC(TLR_NO).                                 
           03 :RMK:_BR             DIC(BR, P).                                  
           03 :RMK:_DATA           DIC(RMK_120).                                
           03 :RMK:_TS             PIC X(26).                                   
      *@*CHECKSUM 228336528                                                     
      *****************************************************************         
      *  COPYBOOK SPECIFICATION                                       *         
      *_______________________________________________________________*         
      *  COPYBOOK NAME. : BPCCHMAK                                    *         
      *  DESCRIPTION... : OUTPUT FOR 9999601 9999602 9999603 9999604  *         
      *  LENGTH........ :                                             *         
      *  AUTHOR........ : DEVCKY                                      *         
      *  CREATED DATE.. : 2017/06/14                                  *         
      *  VERSION NO.... : 0.0.1                                       *         
      *****************************************************************         
      *****************************************************************         
      *_______________________________________________________________*         
      *    SEQ   DESCRIPTION                           BY  DATE       *         
      *****************************************************************         
        01 BPCCHMAK.                                                            
           03 CHMAK_SEQ           DIC(JRN_SEQ).                                 
DSB001*    03 CHMAK_AC_DT         DIC(DT).                                      
DSB001     03 CHMAK_AC_DT         PIC X(10).                                    
           03 CHMAK_JRNNO         DIC(JRNNO).                                   
           03 CHMAK_JRN_SEQ       DIC(JRN_SEQ).                                 
DSB001*    03 CHMAK_TX_DT         DIC(DT).                                      
DSB001     03 CHMAK_TX_DT         PIC X(10).                                    
           03 CHMAK_TX_TM         DIC(TM).                                      
           03 CHMAK_TX_CD         DIC(TX_CD).                                   
           03 CHMAK_TX_TYPE       DIC(FRE_CD10).                                
           03 CHMAK_MAKER         DIC(TLR_NO).                                  
           03 CHMAK_CHECKER       DIC(TLR_NO).                                  
           03 CHMAK_FIELD_NAME    DIC(X20).                                     
           03 CHMAK_OLD_VALUE     DIC(DESC_50).                                 
           03 CHMAK_NEW_VALUE     DIC(DESC_50).                                 
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE BPTPARM                            *        
      ******************************************************************        
       01  BPR:PARM:.                                                           
           03 :PARM:_KEY.                                                       
              05 :PARM:_TYPE       DIC(PTYP_CD).                                
              05 :PARM:_CODE       DIC(PARA_CD).                                
           03 :PARM:_EFF_DATE      DIC(DT ,P).                                  
           03 :PARM:_EXP_DATE      DIC(DT ,P).                                  
           03 :PARM:_DESC          DIC(DESC_20).                                
           03 :PARM:_CDESC         DIC(DESC_30).                                
           03 :PARM:_UPD_DATE      DIC(DT ,P).                                  
           03 :PARM:_UPD_BR        DIC(BR ,P).                                  
           03 :PARM:_UPD_TLR       DIC(TLR_NO).                                 
           03 :PARM:_TS            PIC X(26).                                   
       01 BPCFPCD.                                                              
          03 FPCD_SOURCE         PIC X(01).                                     
          03 FPCD_TYPNM          PIC X(08).                                     
          03 FPCD_CHKSEQ         PIC 9(03).                                     
          03 FPCD_FLD            PIC X(40).                                     
          03 FPCD_FLDDESC        DIC(DESC_60).                                  
          03 FPCD_FLDDESC_C      DIC(DESC_60).                                  
          03 FPCD_EXP_DATE       DIC(DT).                                       
          03 FPCD_FAILURE_FLG    DIC(FLG).                                      
DEVFET*   03 FILLER              PIC X(01) VALUE X'0A'.                         
      *****************************************************************         
      *  FILE LAYOUT SPECIFICATION                                    *         
      *_______________________________________________________________*         
      *  RECORD NAME... : SCCPESEQ                                    *         
      *  DESCRIPTION... : COPYBOOK                                    *         
      *  KEY........... :                                             *         
      *  KEY LENGTH.... :                                             *         
      *  AUTHOR........ : DEVCKY                                      *         
      *  CREATED DATE.. : 2017/05/22                                  *         
      *  VERSION NO.... : 1.0.0                                       *         
      *****************************************************************         
       01  SCCPESEQ.                                                            
           03 PESEQ_TYPE        DIC(PTYP_CD).                                   
           03 PESEQ_CODE        DIC(PARA_CD).                                   
           03 PESEQ_EFF_DATE    DIC(DT).                                        
           03 PESEQ_EXP_DATE    DIC(DT).                                        
           03 PESEQ_DESC        DIC(DESC_20).                                   
           03 PESEQ_CDESC       DIC(DESC_30).                                   
           03 PESEQ_CCY_DATA  OCCURS 18 TIMES.                                  
              05 PESEQ_CCY      DIC(CCY).                                       
      ******************************************************************        
      * PARM RECORD _ EXCHANGE RATE TYPE                               *        
      ******************************************************************        
       01  BPR:EXRT:.                                                           
           03 :EXRT:_KEY.                                                       
              05 :EXRT:_TYP       DIC(PTYP_CD).                                 
                 88 :EXRT:_TYP_EXRT              VALUE 'EXRT'.                  
              05 :EXRT:_CD        DIC(PARA_CD).                                 
           03 :EXRT:_DESC         DIC(DESC_20).                                 
           03 :EXRT:_CDESC        DIC(DESC_30).                                 
           03 :EXRT:_DAT_LEN      DIC(LEN, P).                                  
           03 :EXRT:_DAT_TXT.                                                   
              05 :EXRT:_SUM_IND   DIC(QTP_KND).                                 
                 88 :EXRT:_SUM_IND_0             VALUE '0'.                     
                 88 :EXRT:_SUM_IND_1             VALUE '1'.                     
              05 :EXRT:_FWD_IND   DIC(QTPT_KND).                                
                 88 :EXRT:_FWD_IND_0             VALUE '0'.                     
                 88 :EXRT:_FWD_IND_1             VALUE '1'.                     
              05 :EXRT:_BASE_CCY  DIC(CCY).                                     
DEVLYF*       05 :EXRT:_PEOD      DIC(QTPP_STD).                                
DEVLYF        05 :EXRT:_GEN_MODE  DIC(FXSG_MTH).                                
DEVLYF           88 :EXRT:_GEN_TIME              VALUE '0'.                     
DEVLYF           88 :EXRT:_GEN_GET               VALUE '1'.                     
DEVLYF           88 :EXRT:_GEN_AUTO              VALUE '2'.                     
DEVLYF           88 :EXRT:_GEN_EXCEL             VALUE '3'.                     
DEVLYF        05 :EXRT:_UPD_IND   DIC(FXRF_FLG).                                
DEVLYF        05 :EXRT:_UPD_APPO_TM DIC(TM).                                    
DEVLYF        05 :EXRT:_UPD_SRT_TM  DIC(TM).                                    
DEVLYF        05 :EXRT:_UPD_END_TM  DIC(TM).                                    
DEVLYF        05 :EXRT:_UPD_CYC   DIC(PERM_KND).                                
DEVLYF        05 :EXRT:_UPD_FREQ  DIC(EXRT_FRQ).                                
DEVLYF        05 :EXRT:_UPD_SRC   DIC(EXRA_SRC).                                
              05 :EXRT:_RMK       DIC(SMR).                                     
      ************************************************                          
      * IBS DEL DATA TO ODS                          *                          
      ************************************************                          
       01  SCC:DELL:.                                                           
           03 :DELL:_TBNAME         PIC X(8).                                   
           03 :DELL:_KEYNAME_TEXT   PIC X(200).                                 
           03 :DELL:_KEYVALUE_TEXT  PIC X(200).                                 
       #IFNDEF TABLE_WFTWKFW                                                    
       #DEFINE TABLE_WFTWKFW                                                    
           EXEC SQL DECLARE WFTWKFW TABLE                                       
           (                                                                    
             REF                      CHAR(32) NOT NULL,                        
             SUB_BR                   DEC(6, 0) NOT NULL,                       
             SUB_LVL                  CHAR(1) NOT NULL,                         
             Q_STS                    CHAR(2) NOT NULL,                         
             WF_CODE                  CHAR(5) NOT NULL,                         
             AP_REF                   CHAR(35) NOT NULL,                        
             TR_CODE                  CHAR(7) NOT NULL,                         
             CRT_DATE                 DEC(8, 0) NOT NULL,                       
             VAL_DATE                 DEC(8, 0) NOT NULL,                       
             AP_RMK                   CHAR(240) NOT NULL,                       
             CRT_TLT                  CHAR(8) NOT NULL,                         
             CRT_TERM                 CHAR(12) NOT NULL,                        
             APR_SEQ                  DEC(1, 0) NOT NULL,                       
             CRT_JRN                  DEC(12, 0) NOT NULL,                      
             APR_DATA                 CHAR(108) NOT NULL,                       
             RECD_STAS                CHAR(1) NOT NULL,                         
             HOLD_TLT                 CHAR(8) NOT NULL,                         
             SUB_NO                   DEC(5, 0) NOT NULL,                       
             RESN_DATA                VARCHAR(570) NOT NULL,                    
             UPD_DATE                 DEC(8, 0) NOT NULL,                       
             UPD_TIME                 DEC(6, 0) NOT NULL,                       
             BW_DATA                  VARCHAR(300) NOT NULL,                    
             WK_DATA                  VARCHAR(600) NOT NULL,                    
             TS                       TIMESTAMP NOT NULL                        
           )                                                                    
           END_EXEC.                                                            
       #ENDIF                                                                   
      ******************************************************************        
      * COBOL DECLARATION FOR TABLE WFTWKFW                            *        
      ******************************************************************        
       01  WFR:WKFW:.                                                           
           03 :WKFW:_KEY.                                                       
              05 :WKFW:_REF        DIC(WF_NO).                                  
           03 :WKFW:_SUB_BR        DIC(BR, P).                                  
           03 :WKFW:_SUB_LVL       DIC(MSG_LVL).                                
           03 :WKFW:_Q_STS         DIC(STS_CD).                                 
           03 :WKFW:_WF_CODE       DIC(WF_CD).                                  
           03 :WKFW:_AP_REF        DIC(APREF_NO).                               
           03 :WKFW:_TR_CODE       DIC(TX_CD).                                  
           03 :WKFW:_CRT_DATE      DIC(DT, P).                                  
           03 :WKFW:_VAL_DATE      DIC(DT, P).                                  
           03 :WKFW:_AP_RMK        DIC(RMK_120).                                
           03 :WKFW:_CRT_TLT       DIC(TLR_NO).                                 
           03 :WKFW:_CRT_TERM      DIC(TRM_NO).                                 
           03 :WKFW:_APR_SEQ       DIC(WEEK_CD, P).                             
           03 :WKFW:_CRT_JRN       DIC(JRNNO, P).                               
           03 :WKFW:_APR_DATA      DIC(TXT_BIG, L108).                          
              03 FILLER REDEFINES :WKFW:_APR_DATA.                              
                 30 :WKFW:_APR_DATA_LIST OCCURS 9 TIMES.                        
                    40 :WKFW:_LVL       DIC(MSG_LVL).                           
                    40 :WKFW:_BR        DIC(BR).                                
           03 :WKFW:_RECD_STAS     DIC(TX_STS).                                 
           03 :WKFW:_HOLD_TLT      DIC(TLR_NO).                                 
           03 :WKFW:_SUB_NO        DIC(CNT, P).                                 
           03 :WKFW:_RESN_DATA.                                                 
              49 :WKFW:_RESN_DATA_LEN PIC S9(4) COMP.                           
              49 :WKFW:_RESN_DATA_TEXT DIC(TXT_BIG, L570).                      
           03 FILLER REDEFINES :WKFW:_RESN_DATA.                                
             20 :WKFW:_RESN_DATA_LEN1          PIC S9(4) USAGE COMP.            
             20 :WKFW:_RESN_DATA_TEXT1         PIC X(570).                      
             20 FILLER REDEFINES :WKFW:_RESN_DATA_TEXT1.                        
               30 :WKFW:_DATA_LIST OCCURS 30 TIMES.                             
                  40 :WKFW:_RESN             DIC(SYSMSGNO).                     
                  40 :WKFW:_AUTH_LVL         DIC(ATHLV_CD).                     
                  40 :WKFW:_ATUH_BR          DIC(BR).                           
           03 :WKFW:_UPD_DATE      DIC(DT, P).                                  
           03 :WKFW:_UPD_TIME      DIC(TM, P).                                  
           03 :WKFW:_BW_DATA.                                                   
              49 :WKFW:_BW_DATA_LEN PIC S9(4) COMP.                             
              49 :WKFW:_BW_DATA_TEXT DIC(TXT_BIG, L300).                        
           03 :WKFW:_WK_DATA.                                                   
              49 :WKFW:_WK_DATA_LEN PIC S9(4) COMP.                             
              49 :WKFW:_WK_DATA_TEXT DIC(TXT_BIG, L600).                        
           03 :WKFW:_TS            PIC X(26).                                   
      *@*CHECKSUM 811929376                                                     

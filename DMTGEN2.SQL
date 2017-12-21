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
       #IFNDEF TABLE_BPTEXRD
       #DEFINE TABLE_BPTEXRD
           EXEC SQL DECLARE BPTEXRD TABLE
           (
             EXR_TYP                  CHAR(3) NOT NULL,
             FWD_TENOR                CHAR(3) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             CORR_CCY                 CHAR(3) NOT NULL,
             UNT                      DEC(7, 0) NOT NULL,
             METH                     CHAR(1) NOT NULL,
             GEN_MOD                  CHAR(1) NOT NULL,
             BR_SPRD_IND              CHAR(1) NOT NULL,
             CI_SPRD_IND              CHAR(1) NOT NULL,
             EXR_PNT                  CHAR(1) NOT NULL,
             EXR_RND                  CHAR(1) NOT NULL,
             PNL_SQN                  DEC(4, 0) NOT NULL,
             RMK                      CHAR(120) NOT NULL,
             CRE_DT                   DEC(8, 0) NOT NULL,
             CRE_TM                   DEC(6, 0) NOT NULL,
             CRE_BR                   DEC(6, 0) NOT NULL,
             CRE_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPD_TM                   DEC(6, 0) NOT NULL,
             UPD_BR                   DEC(6, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL,
             CNF_DT                   DEC(8, 0) NOT NULL,
             CNF_TM                   DEC(6, 0) NOT NULL,
             CNF_BR                   DEC(6, 0) NOT NULL,
             CNF_TLR                  CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTEXRD                            *
      ******************************************************************
       01  BPR:EXRD:.
           03 :EXRD:_KEY.
              05 :EXRD:_EXR_TYP    DIC(EXRA_CD).
              05 :EXRD:_FWD_TENOR  DIC(FFTM_CD).
              05 :EXRD:_CCY        DIC(CCY).
              05 :EXRD:_CORR_CCY   DIC(CCY).
           03 :EXRD:_UNT           DIC(EXGUNIT, P).
           03 :EXRD:_METH          DIC(FXSP_MTH).
              88 :EXRD:_METH_DRT       VALUE '0'.
              88 :EXRD:_METH_IDR       VALUE '1'.
           03 :EXRD:_GEN_MOD       DIC(FXSG_MTH).
           03 :EXRD:_BR_SPRD_IND   DIC(FLG).
           03 :EXRD:_CI_SPRD_IND   DIC(FLG).
           03 :EXRD:_EXR_PNT       DIC(DEBY_MTH).
           03 :EXRD:_EXR_RND       DIC(RND_MTH).
           03 :EXRD:_PNL_SQN       DIC(NUM, P).
           03 :EXRD:_RMK           DIC(SMR).
           03 :EXRD:_CRE_DT        DIC(DT, P).
           03 :EXRD:_CRE_TM        DIC(TM, P).
           03 :EXRD:_CRE_BR        DIC(BR, P).
           03 :EXRD:_CRE_TLR       DIC(TLR_NO).
           03 :EXRD:_UPDTBL_DATE   DIC(DT, P).
           03 :EXRD:_UPD_TM        DIC(TM, P).
           03 :EXRD:_UPD_BR        DIC(BR, P).
           03 :EXRD:_UPD_TLR       DIC(TLR_NO).
           03 :EXRD:_CNF_DT        DIC(DT, P).
           03 :EXRD:_CNF_TM        DIC(TM, P).
           03 :EXRD:_CNF_BR        DIC(BR, P).
           03 :EXRD:_CNF_TLR       DIC(TLR_NO).
           03 :EXRD:_TS            PIC X(26).
      *@*CHECKSUM _1715511427
       #IFNDEF TABLE_BPTGRP
       #DEFINE TABLE_BPTGRP
           EXEC SQL DECLARE BPTGRP TABLE
           (
             ROLE_CD                  CHAR(4) NOT NULL,
             ROLE_CNNM                CHAR(120) NOT NULL,
             ROLE_ENNM                CHAR(70) NOT NULL,
             ROLE_CNMS                CHAR(60) NOT NULL,
             ROLE_ENMS                CHAR(35) NOT NULL,
             ATH_MOV_FLG              CHAR(1) NOT NULL,
             EFF_DT                   DEC(8, 0) NOT NULL,
             EXP_DT                   DEC(8, 0) NOT NULL,
             UPD_DT                   DEC(8, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTGRP                             *
      ******************************************************************
       01  BPR:GRP:.
           03 :GRP:_KEY.
              05 :GRP:_ROLE_CD     DIC(ROLE_CD).
           03 :GRP:_ROLE_CNNM      DIC(GEN_CNM).
           03 :GRP:_ROLE_ENNM      DIC(GEN_ENM).
           03 :GRP:_ROLE_CNMS      DIC(GEN_CNMS).
           03 :GRP:_ROLE_ENMS      DIC(GEN_ENMS).
           03 :GRP:_ATH_MOV_FLG    DIC(FLG).
              88 :GRP:_ATHMOV_Y    VALUE 'Y'.
              88 :GRP:_ATHMOV_N    VALUE 'N'.
           03 :GRP:_EFF_DT         DIC(DT, P).
           03 :GRP:_EXP_DT         DIC(DT, P).
           03 :GRP:_UPD_DT         DIC(DT, P).
           03 :GRP:_UPD_TLR        DIC(TLR_NO).
      *@*CHECKSUM _938001600
       #IFNDEF TABLE_BPTGRPL
       #DEFINE TABLE_BPTGRPL
           EXEC SQL DECLARE BPTGRPL TABLE
           (
             ASS_TYP                  CHAR(1) NOT NULL,
             ASS_ID                   CHAR(30) NOT NULL,
             ATH_TYP                  CHAR(1) NOT NULL,
             ROLE_CNT                 DEC(4, 0) NOT NULL,
             ROLE_TXT                 VARCHAR(4920) NOT NULL,
             UPD_DT                   DEC(8, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTGRPL                            *
      ******************************************************************
       01  BPR:GRPL:.
           03 :GRPL:_KEY.
              05 :GRPL:_ASS_TYP    DIC(ASS_TYP).
              88 :GRPL:_ASSTYP_O     VALUE 'O'.
              88 :GRPL:_ASSTYP_T     VALUE 'T'.
              88 :GRPL:_ASSTYP_C     VALUE 'C'.
              05 :GRPL:_ASS_ID     DIC(ROLA_NO).
              05 :GRPL:_ATH_TYP    DIC(AUTH_TYP).
              88 :GRPL:_ATHTYP_OPER  VALUE '0'.
              88 :GRPL:_ATHTYP_AUTH  VALUE '1'.
           03 :GRPL:_ROLE_CNT      DIC(NUM, P).
           03 :GRPL:_ROLE_TXT.
              49 :GRPL:_ROLE_TXT_LEN PIC S9(4) COMP.
              49 :GRPL:_ROLE_TXT_TEXT DIC(TXT_BIG, L4920).
           03 FILLER REDEFINES :GRPL:_ROLE_TXT.
              20 :GRPL:_ROLE_TXT_LEN1          PIC S9(4) COMP.
              20 :GRPL:_ROLE_TXT_TEXT1         PIC X(4920).
              20 FILLER REDEFINES :GRPL:_ROLE_TXT_TEXT1.
                 25 :GRPL:_ROLE_INFO OCCURS 117 TIMES.
                    27 :GRPL:_ROLE_CD          DIC(ROLE_CD).
                    27 :GRPL:_MOV_FLG          DIC(FLG).
                       88 :GRPL:_ATHMOV_Y     VALUE 'Y'.
                       88 :GRPL:_ATHMOV_N     VALUE 'N'.
                    27 :GRPL:_MOV_STS          DIC(AUMV_STS).
                       88 :GRPL:_MOVSTS_0     VALUE '0'.
                       88 :GRPL:_MOVSTS_1     VALUE '1'.
                       88 :GRPL:_MOVSTS_2     VALUE '2'.
                       88 :GRPL:_MOVSTS_3     VALUE '3'.
                    27 :GRPL:_MOV_EFF_DT       DIC(DT,P).
                    27 :GRPL:_MOV_EXP_DT       DIC(DT,P).
                    27 :GRPL:_MOV_EFF_TM       DIC(TM,P).
                    27 :GRPL:_MOV_EXP_TM       DIC(TM,P).
                    27 :GRPL:_EFF_DT           DIC(DT,P).
                    27 :GRPL:_EXP_DT           DIC(DT,P).
                    27 :GRPL:_MOV_TLR          DIC(TLR_NO).
           03 :GRPL:_UPD_DT        DIC(DT, P).
           03 :GRPL:_UPD_TLR       DIC(TLR_NO).
      *@*CHECKSUM 1268876037
       #IFNDEF TABLE_BPTNHISD
       #DEFINE TABLE_BPTNHISD
           EXEC SQL DECLARE BPTNHISD TABLE
           (
             AC_DT                    DEC(8, 0) NOT NULL,
             JRNNO                    DEC(12, 0) NOT NULL,
             JRN_SEQ                  DEC(4, 0) NOT NULL,
             FMT_ID                   CHAR(8) NOT NULL,
             FLD_SEQ                  DEC(4, 0) NOT NULL,
             FLD_NM                   CHAR(20) NOT NULL,
             FLD_CDESC                CHAR(120) NOT NULL,
             FLD_EDESC                CHAR(120) NOT NULL,
             FLD_LEN                  DEC(9, 0) NOT NULL,
             FLD_DAT_OLD              VARCHAR(1000) NOT NULL,
             FLD_DAT_NEW              VARCHAR(1000) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTNHISD                           *
      ******************************************************************
       01  BPR:NHISD:.
           03 :NHISD:_KEY.
              05 :NHISD:_AC_DT     DIC(DT, P).
              05 :NHISD:_JRNNO     DIC(JRNNO, P).
              05 :NHISD:_JRN_SEQ   DIC(JRN_SEQ, P).
              05 :NHISD:_FMT_ID    DIC(FILE_ID).
              05 :NHISD:_FLD_SEQ   DIC(JRN_SEQ, P).
           03 :NHISD:_FLD_NM       DIC(X20).
           03 :NHISD:_FLD_CDESC    DIC(DESC_60).
           03 :NHISD:_FLD_EDESC    DIC(DESC_60).
           03 :NHISD:_FLD_LEN      DIC(LEN, P).
           03 :NHISD:_FLD_DAT_OLD.
              49 :NHISD:_FLD_DAT_OLD_LEN PIC S9(4) COMP.
              49 :NHISD:_FLD_DAT_OLD_TEXT DIC(TXT_BIG, L1000).
           03 :NHISD:_FLD_DAT_NEW.
              49 :NHISD:_FLD_DAT_NEW_LEN PIC S9(4) COMP.
              49 :NHISD:_FLD_DAT_NEW_TEXT DIC(TXT_BIG, L1000).
           03 :NHISD:_TS           PIC X(26).
      *@*CHECKSUM 746392342
       #IFNDEF TABLE_BPTNHIST
       #DEFINE TABLE_BPTNHIST
           EXEC SQL DECLARE BPTNHIST TABLE
           (
             AC_DT                    DEC(8, 0) NOT NULL,
             JRNNO                    DEC(12, 0) NOT NULL,
             JRN_SEQ                  DEC(4, 0) NOT NULL,
             TX_BR                    DEC(6, 0) NOT NULL,
             TX_DP                    DEC(3, 0) NOT NULL,
             TX_DT                    DEC(8, 0) NOT NULL,
             TX_TM                    DEC(6, 0) NOT NULL,
             TX_TYP                   CHAR(1) NOT NULL,
             TX_TYP_CD                CHAR(10) NOT NULL,
             TX_CHNL                  CHAR(4) NOT NULL,
             TX_REQFM                 CHAR(4) NOT NULL,
             REF_NO                   CHAR(16) NOT NULL,
             APP_MMO                  CHAR(3) NOT NULL,
             TX_CD                    CHAR(7) NOT NULL,
             AC                       CHAR(25) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             TX_TOOL                  CHAR(32) NOT NULL,
             TX_STS                   CHAR(1) NOT NULL,
             TX_RMK                   CHAR(128) NOT NULL,
             TX_TLR                   CHAR(8) NOT NULL,
             SUP1                     CHAR(8) NOT NULL,
             SUP2                     CHAR(8) NOT NULL,
             MAKER_TLR                CHAR(8) NOT NULL,
             TX_REV_DT                DEC(8, 0) NOT NULL,
             ORG_AC_DT                DEC(8, 0) NOT NULL,
             ORG_JRNNO                DEC(12, 0) NOT NULL,
             UPDATE_DT                DEC(8, 0) NOT NULL,
             FMT_ID                   CHAR(8) NOT NULL,
             FMT_LEN                  DEC(9, 0) NOT NULL,
             NEW_DATA                 VARCHAR(10240) NOT NULL,
             OLD_DATA                 VARCHAR(10240) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTNHIST                           *
      ******************************************************************
       01  BPR:NHIST:.
           03 :NHIST:_KEY.
              05 :NHIST:_AC_DT     DIC(DT, P).
              05 :NHIST:_JRNNO     DIC(JRNNO, P).
              05 :NHIST:_JRN_SEQ   DIC(JRN_SEQ, P).
           03 :NHIST:_TX_BR        DIC(BR, P).
           03 :NHIST:_TX_DP        DIC(DP, P).
           03 :NHIST:_TX_DT        DIC(DT, P).
           03 :NHIST:_TX_TM        DIC(TM, P).
           03 :NHIST:_TX_TYP       DIC(TYP).
              88 :NHIST:_TX_TYP_A         VALUE 'A'.
              88 :NHIST:_TX_TYP_M         VALUE 'M'.
              88 :NHIST:_TX_TYP_D         VALUE 'D'.
              88 :NHIST:_TX_TYP_O         VALUE 'O'.
           03 :NHIST:_TX_TYP_CD    DIC(PBCD_NO).
           03 :NHIST:_TX_CHNL      DIC(CHNL_NO).
           03 :NHIST:_TX_REQFM     DIC(REQFM_NO).
           03 :NHIST:_REF_NO       DIC(REF_NO).
           03 :NHIST:_APP_MMO      DIC(EXT_APP).
           03 :NHIST:_TX_CD        DIC(TX_CD).
           03 :NHIST:_AC           DIC(AC).
           03 :NHIST:_CI_NO        DIC(CI_NO).
           03 :NHIST:_TX_TOOL      DIC(TTOOL_NO).
           03 :NHIST:_TX_STS       DIC(STS).
              88 :NHIST:_TX_STS_N  VALUE 'N'.
              88 :NHIST:_TX_STS_R  VALUE 'R'.
              88 :NHIST:_TX_STS_C  VALUE 'C'.
           03 :NHIST:_TX_RMK       DIC(DESC_64).
           03 :NHIST:_TX_TLR       DIC(TLR_NO).
           03 :NHIST:_SUP1         DIC(TLR_NO).
           03 :NHIST:_SUP2         DIC(TLR_NO).
           03 :NHIST:_MAKER_TLR    DIC(TLR_NO).
           03 :NHIST:_TX_REV_DT    DIC(DT, P).
           03 :NHIST:_ORG_AC_DT    DIC(DT, P).
           03 :NHIST:_ORG_JRNNO    DIC(JRNNO, P).
           03 :NHIST:_UPDATE_DT    DIC(DT, P).
           03 :NHIST:_FMT_ID       DIC(FILE_ID).
           03 :NHIST:_FMT_LEN      DIC(LEN, P).
           03 :NHIST:_NEW_DATA.
              49 :NHIST:_NEW_DATA_LEN PIC S9(4) COMP.
              49 :NHIST:_NEW_DATA_TEXT DIC(TXT_BIG, L10240).
           03 :NHIST:_OLD_DATA.
              49 :NHIST:_OLD_DATA_LEN PIC S9(4) COMP.
              49 :NHIST:_OLD_DATA_TEXT DIC(TXT_BIG, L10240).
           03 :NHIST:_TS           PIC X(26).
      *@*CHECKSUM _2078620635
       #IFNDEF TABLE_BPTORGR
       #DEFINE TABLE_BPTORGR
           EXEC SQL DECLARE BPTORGR TABLE
           (
             BNK                      CHAR(3) NOT NULL,
             TYP                      CHAR(2) NOT NULL,
             BR                       DEC(6, 0) NOT NULL,
             REL_BR                   DEC(6, 0) NOT NULL,
             EFF_DT                   DEC(8, 0) NOT NULL,
             EXP_DT                   DEC(8, 0) NOT NULL,
             UPT_DT                   DEC(8, 0) NOT NULL,
             UPT_TLR                  CHAR(8) NOT NULL,
             REMARK                   CHAR(120) NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTORGR                            *
      ******************************************************************
       01  BPR:ORGR:.
           03 :ORGR:_KEY.
              05 :ORGR:_BNK        DIC(BK).
              05 :ORGR:_TYP        DIC(TYPE).
              05 :ORGR:_BR         DIC(BR, P).
           03 :ORGR:_REL_BR        DIC(BR, P).
           03 :ORGR:_EFF_DT        DIC(DT, P).
           03 :ORGR:_EXP_DT        DIC(DT, P).
           03 :ORGR:_UPT_DT        DIC(DT, P).
           03 :ORGR:_UPT_TLR       DIC(TLR_NO).
           03 :ORGR:_REMARK        DIC(RMK_60).
      *@*CHECKSUM 1517469235
       #IFNDEF TABLE_BPTPARM
       #DEFINE TABLE_BPTPARM
           EXEC SQL DECLARE BPTPARM TABLE
           (
             TYPE                     CHAR(5) NOT NULL,
             CODE                     CHAR(40) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             DESC                     CHAR(20) NOT NULL,
             CDESC                    CHAR(60) NOT NULL,
             VAL                      VARCHAR(9500) NOT NULL,
             UPD_DATE                 DEC(8, 0) NOT NULL,
             UPD_BR                   DEC(6, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTPARM                            *
      ******************************************************************
       01  BPR:PARM:.
           03 :PARM:_KEY.
              05 :PARM:_TYPE       DIC(PTYP_CD).
              05 :PARM:_CODE       DIC(PARA_CD).
           03 :PARM:_EFF_DATE      DIC(DT, P).
           03 :PARM:_EXP_DATE      DIC(DT, P).
           03 :PARM:_DESC          DIC(DESC_20).
           03 :PARM:_CDESC         DIC(DESC_30).
           03 :PARM:_VAL.
              49 :PARM:_VAL_LEN    PIC S9(4) COMP.
              49 :PARM:_VAL_TEXT   DIC(TXT_BIG, L9500).
           03 :PARM:_UPD_DATE      DIC(DT, P).
           03 :PARM:_UPD_BR        DIC(BR, P).
           03 :PARM:_UPD_TLR       DIC(TLR_NO).
           03 :PARM:_TS            PIC X(26).
      *@*CHECKSUM _751536576
       #IFNDEF TABLE_BPTPDME
       #DEFINE TABLE_BPTPDME
           EXEC SQL DECLARE BPTPDME TABLE
           (
             PRDT_CODE                CHAR(8) NOT NULL,
             PRDT_NAME                CHAR(120) NOT NULL,
             BUSI_TYPE                CHAR(3) NOT NULL,
             CTRACT_GROUP             CHAR(3) NOT NULL,
             PRDT_MODEL               CHAR(4) NOT NULL,
             PRDT_MODEL1              CHAR(4) NOT NULL,
             PRDT_MODEL2              CHAR(4) NOT NULL,
             PRDT_MODEL3              CHAR(4) NOT NULL,
             PRDT_MODEL4              CHAR(4) NOT NULL,
             PRDT_MODEL5              CHAR(4) NOT NULL,
             STS                      CHAR(1) NOT NULL,
             PRDT_IND                 CHAR(1) NOT NULL,
             DESC                     CHAR(240) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             STOP_SOLD_DATE           DEC(8, 0) NOT NULL,
             PARM_CODE                CHAR(8) NOT NULL,
             AC_RULE                  CHAR(3) NOT NULL,
             ACCR_TYPE                CHAR(1) NOT NULL,
             RISK_LVL                 CHAR(6) NOT NULL,
             PRDT_MANEGER             CHAR(10) NOT NULL,
             ASS_BR                   DEC(6, 0) NOT NULL,
             OPEN_DATE                DEC(8, 0) NOT NULL,
             LAST_DATE                DEC(8, 0) NOT NULL,
             LAST_TLT                 CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTPDME                            *
      ******************************************************************
       01  BPR:PDME:.
           03 :PDME:_KEY.
              05 :PDME:_PRDT_CODE  DIC(PROD_CD).
           03 :PDME:_PRDT_NAME     DIC(DESC_60).
           03 :PDME:_BUSI_TYPE     DIC(PRDB_TYP).
           03 :PDME:_CTRACT_GROUP  DIC(EXT_APP).
           03 :PDME:_PRDT_MODEL    DIC(PRDMO_CD).
           03 :PDME:_PRDT_MODEL1   DIC(PRDMO_CD).
           03 :PDME:_PRDT_MODEL2   DIC(PRDMO_CD).
           03 :PDME:_PRDT_MODEL3   DIC(PRDMO_CD).
           03 :PDME:_PRDT_MODEL4   DIC(PRDMO_CD).
           03 :PDME:_PRDT_MODEL5   DIC(PRDMO_CD).
           03 :PDME:_STS           DIC(FLG).
           03 :PDME:_PRDT_IND      DIC(OPT).
           03 :PDME:_DESC          DIC(RMK_120).
           03 :PDME:_EFF_DATE      DIC(DT, P).
           03 :PDME:_EXP_DATE      DIC(DT, P).
           03 :PDME:_STOP_SOLD_DATE DIC(DT, P).
           03 :PDME:_PARM_CODE     DIC(PRDCP_CD).
           03 :PDME:_AC_RULE       DIC(PRDAC_CD).
           03 :PDME:_ACCR_TYPE     DIC(FLG).
           03 :PDME:_RISK_LVL      DIC(RISK_CD).
           03 :PDME:_PRDT_MANEGER  DIC(STAF_NO).
           03 :PDME:_ASS_BR        DIC(BR, P).
           03 :PDME:_OPEN_DATE     DIC(DT, P).
           03 :PDME:_LAST_DATE     DIC(DT, P).
           03 :PDME:_LAST_TLT      DIC(TLR_NO).
           03 :PDME:_TS            PIC X(26).
      *@*CHECKSUM _722161752
       #IFNDEF TABLE_BPTSEQ
       #DEFINE TABLE_BPTSEQ
           EXEC SQL DECLARE BPTSEQ TABLE
           (
             TYPE                     CHAR(5) NOT NULL,
             NAME                     CHAR(10) NOT NULL,
             DESC                     CHAR(120) NOT NULL,
             SEQ_NO                   DEC(15, 0) NOT NULL,
             OLD_SEQ_NO               DEC(15, 0) NOT NULL,
             FIRST_NUM                DEC(15, 0) NOT NULL,
             INIT_ZERO                CHAR(1) NOT NULL,
             SKIP_FLG                 CHAR(1) NOT NULL,
             OBL_FLG                  CHAR(1) NOT NULL,
             VIP_FLG                  CHAR(1) NOT NULL,
             VAL_DATE                 DEC(8, 0) NOT NULL,
             STEP_NUM                 DEC(9, 0) NOT NULL,
             MAX_SEQ_NO               DEC(15, 0) NOT NULL,
             MAX_FLG                  CHAR(1) NOT NULL,
             WARN_SEQ_NO              DEC(15, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             BR                       DEC(6, 0) NOT NULL,
             DP                       DEC(6, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTSEQ                             *
      ******************************************************************
       01  BPR:SEQ:.
           03 :SEQ:_KEY.
              05 :SEQ:_TYPE        DIC(PBCD_KND).
              05 :SEQ:_NAME        DIC(PBCD_NO).
           03 :SEQ:_DESC           DIC(DESC_60).
           03 :SEQ:_SEQ_NO         DIC(L_SEQNO, P).
           03 :SEQ:_OLD_SEQ_NO     DIC(L_SEQNO, P).
           03 :SEQ:_FIRST_NUM      DIC(L_SEQNO, P).
           03 :SEQ:_INIT_ZERO      DIC(FLG).
           03 :SEQ:_SKIP_FLG       DIC(FLG).
           03 :SEQ:_OBL_FLG        DIC(FLG).
           03 :SEQ:_VIP_FLG        DIC(FLG).
           03 :SEQ:_VAL_DATE       DIC(DT, P).
           03 :SEQ:_STEP_NUM       DIC(NUM_9, P).
           03 :SEQ:_MAX_SEQ_NO     DIC(L_SEQNO, P).
           03 :SEQ:_MAX_FLG        DIC(FLG).
           03 :SEQ:_WARN_SEQ_NO    DIC(L_SEQNO, P).
           03 :SEQ:_LAST_UPD_TLR   DIC(TLR_NO).
           03 :SEQ:_LAST_UPD_DATE  DIC(DT, P).
           03 :SEQ:_BR             DIC(BR, P).
           03 :SEQ:_DP             DIC(BR, P).
           03 :SEQ:_TS             PIC X(26).
      *@*CHECKSUM _522537857
       #IFNDEF TABLE_BPTTHOL
       #DEFINE TABLE_BPTTHOL
           EXEC SQL DECLARE BPTTHOL TABLE
           (
             CAL_CD                   CHAR(4) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             HOL_TXT                  VARCHAR(3400) NOT NULL,
             LAST_DATE                DEC(8, 0) NOT NULL,
             LAST_TELLER              CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTTHOL                            *
      ******************************************************************
       01  BPR:THOL:.
           03 :THOL:_KEY.
              05 :THOL:_CAL_CD     DIC(CAL_CD).
              05 :THOL:_EFF_DATE   DIC(DT, P).
           03 :THOL:_HOL_TXT.
              49 :THOL:_HOL_TXT_LEN PIC S9(4) COMP.
              49 :THOL:_HOL_TXT_TEXT DIC(TXT_BIG, L3400).
           03 FILLER REDEFINES :THOL:_HOL_TXT.
              20 :THOL:_HOL_TXT_LEN1           PIC S9(4) USAGE COMP.
              20 :THOL:_HOL_TXT_TEXT1          PIC X(3400).
              20 FILLER REDEFINES :THOL:_HOL_TXT_TEXT1.
                 23 :THOL:_HOL_DATA OCCURS 50 TIMES.
                    25  :THOL:_HOL_DT    DIC(MMDD).
                    25  :THOL:_HOL_CNT   DIC(NUM_2).
                    25  :THOL:_HOL_NAME  DIC(DESC_30).
                    25  :THOL:_HOL_TPY   DIC(TYP).
                    25  :THOL:_HOL_OPT   DIC(OPT).
           03 :THOL:_LAST_DATE     DIC(DT, P).
           03 :THOL:_LAST_TELLER   DIC(TLR_NO).
           03 :THOL:_TS            PIC X(26).
      *@*CHECKSUM 890615959
       #IFNDEF TABLE_BPTTLT
       #DEFINE TABLE_BPTTLT
           EXEC SQL DECLARE BPTTLT TABLE
           (
             TLR                      CHAR(8) NOT NULL,
             TLR_BR                   DEC(6, 0) NOT NULL,
             TLR_TKS                  DEC(3, 0) NOT NULL,
             STAF_NO                  CHAR(10) NOT NULL,
             TLR_CN_NM                CHAR(120) NOT NULL,
             TLR_EN_NM                CHAR(70) NOT NULL,
             EFF_DT                   DEC(8, 0) NOT NULL,
             EXP_DT                   DEC(8, 0) NOT NULL,
             UPD_DT                   DEC(8, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL,
             TLR_TYP                  CHAR(1) NOT NULL,
             TLR_LVL                  CHAR(1) NOT NULL,
             TX_LVL                   CHAR(1) NOT NULL,
             ATH_LVL                  CHAR(1) NOT NULL,
             ATH_RGN                  CHAR(1) NOT NULL,
             TMP_TX_LVL               CHAR(1) NOT NULL,
             TMP_ATH_LVL              CHAR(1) NOT NULL,
             TX_MODE                  CHAR(1) NOT NULL,
             SIGN_STS                 CHAR(1) NOT NULL,
             TLR_STS                  CHAR(1) NOT NULL,
             SIGN_DT                  DEC(8, 0) NOT NULL,
             CRO_BR_SIGN              CHAR(1) NOT NULL,
             SIGN_TIMES               DEC(9, 0) NOT NULL,
             PSW_RETRY                DEC(9, 0) NOT NULL,
             TRM_TYP                  CHAR(1) NOT NULL,
             SIGN_TRM                 CHAR(12) NOT NULL,
             PRT_IP                   CHAR(15) NOT NULL,
             TLR_STSW                 CHAR(64) NOT NULL,
             LAST_JRN                 DEC(12, 0) NOT NULL,
             ACC_VCH_NO               CHAR(12) NOT NULL,
             TLR_CRD_NO               CHAR(6) NOT NULL,
             TLR_CRD_PSW              CHAR(20) NOT NULL,
             CRD_PSW_DT               DEC(8, 0) NOT NULL,
             KB_PSW                   CHAR(20) NOT NULL,
             KB_PSW_DT                DEC(8, 0) NOT NULL,
             LAST_KB_PSW              CHAR(200) NOT NULL,
             TELE                     CHAR(18) NOT NULL,
             PST_ADDRESS              CHAR(100) NOT NULL,
             SIGN_TRM_FLG             CHAR(1) NOT NULL,
             TRM_INFO                 CHAR(120) NOT NULL,
             PSW_TYP                  CHAR(1) NOT NULL,
             IDEN_DEV_ID              CHAR(120) NOT NULL,
             NEW_BR                   DEC(6, 0) NOT NULL,
             NEW_BR_EFF               DEC(8, 0) NOT NULL,
             TM_OUT_LMT               DEC(6, 0) NOT NULL,
             ACC_SEN_CUS              CHAR(1) NOT NULL,
             ACC_SEN_GL               CHAR(1) NOT NULL,
             SUPER_FLG                CHAR(1) NOT NULL,
             EXCEL_FLG                CHAR(1) NOT NULL,
             DPT_NO                   CHAR(3) NOT NULL,
             ATH_CARD                 CHAR(25) NOT NULL,
             LDAP_ID                  CHAR(20) NOT NULL,
             PRT_NAME1                CHAR(80) NOT NULL,
             PRT_NAME2                CHAR(80) NOT NULL,
             PRT_NAME3                CHAR(80) NOT NULL,
             CT00_USER_ID             CHAR(8) NOT NULL,
             TFE_USER_ID              CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTTLT                             *
      ******************************************************************
       01  BPR:TLT:.
           03 :TLT:_KEY.
              05 :TLT:_TLR         DIC(TLR_NO).
           03 :TLT:_TLR_BR         DIC(BR, P).
           03 :TLT:_TLR_TKS        DIC(DP, P).
           03 :TLT:_STAF_NO        DIC(STAF_NO).
           03 :TLT:_TLR_CN_NM      DIC(GEN_CNM).
           03 :TLT:_TLR_EN_NM      DIC(GEN_ENM).
           03 :TLT:_EFF_DT         DIC(DT, P).
           03 :TLT:_EXP_DT         DIC(DT, P).
           03 :TLT:_UPD_DT         DIC(DT, P).
           03 :TLT:_UPD_TLR        DIC(TLR_NO).
           03 :TLT:_TLR_TYP        DIC(TLR_TYP).
              88 :TLT:_TLR_T_T    VALUE 'T'.
              88 :TLT:_TLR_T_S    VALUE 'S'.
              88 :TLT:_TLR_T_C    VALUE 'C'.
           03 :TLT:_TLR_LVL        DIC(TLR_LVL).
              88 :TLT:_TLR_L_0     VALUE '0'.
              88 :TLT:_TLR_L_1     VALUE '1'.
              88 :TLT:_TLR_L_2     VALUE '2'.
              88 :TLT:_TLR_L_3     VALUE '3'.
              88 :TLT:_TLR_L_4     VALUE '4'.
              88 :TLT:_TLR_L_5     VALUE '5'.
              88 :TLT:_TLR_L_6     VALUE '6'.
              88 :TLT:_TLR_L_7     VALUE '7'.
              88 :TLT:_TLR_L_8     VALUE '8'.
              88 :TLT:_TLR_L_9     VALUE '9'.
           03 :TLT:_TX_LVL         DIC(TX_LVL).
             88 :TLT:_TX_L_0           VALUE '0'.
             88 :TLT:_TX_L_1           VALUE '1'.
             88 :TLT:_TX_L_2           VALUE '2'.
             88 :TLT:_TX_L_3           VALUE '3'.
             88 :TLT:_TX_L_4           VALUE '4'.
             88 :TLT:_TX_L_5           VALUE '5'.
             88 :TLT:_TX_L_6           VALUE '6'.
             88 :TLT:_TX_L_7           VALUE '7'.
             88 :TLT:_TX_L_8           VALUE '8'.
             88 :TLT:_TX_L_9           VALUE '9'.
           03 :TLT:_ATH_LVL        DIC(TX_LVL).
             88 :TLT:_ATH_L_0           VALUE '0'.
             88 :TLT:_ATH_L_1           VALUE '1'.
             88 :TLT:_ATH_L_2           VALUE '2'.
             88 :TLT:_ATH_L_3           VALUE '3'.
             88 :TLT:_ATH_L_4           VALUE '4'.
             88 :TLT:_ATH_L_5           VALUE '5'.
             88 :TLT:_ATH_L_6           VALUE '6'.
             88 :TLT:_ATH_L_7           VALUE '7'.
             88 :TLT:_ATH_L_8           VALUE '8'.
             88 :TLT:_ATH_L_9           VALUE '9'.
           03 :TLT:_ATH_RGN        DIC(ATH_RGN).
             88 :TLT:_ATH_RGN_0           VALUE '0'.
             88 :TLT:_ATH_RGN_1           VALUE '1'.
             88 :TLT:_ATH_RGN_2           VALUE '2'.
           03 :TLT:_TMP_TX_LVL     DIC(TX_LVL).
           03 :TLT:_TMP_ATH_LVL    DIC(TX_LVL).
           03 :TLT:_TX_MODE        DIC(RUN_MOD).
             88 :TLT:_TX_M_D           VALUE 'D'.
             88 :TLT:_TX_M_N           VALUE 'N'.
           03 :TLT:_SIGN_STS       DIC(SIGN_STS).
             88 :TLT:_SIGN_S_F         VALUE 'F'.
             88 :TLT:_SIGN_S_O         VALUE 'O'.
             88 :TLT:_SIGN_S_T         VALUE 'T'.
             88 :TLT:_SIGN_S_C         VALUE 'C'.
           03 :TLT:_TLR_STS        DIC(TLR_STS).
             88 :TLT:_TLR_S_N          VALUE 'N'.
             88 :TLT:_TLR_S_L          VALUE 'L'.
             88 :TLT:_TLR_S_D          VALUE 'D'.
             88 :TLT:_TLR_S_H          VALUE 'H'.
             88 :TLT:_TLR_S_O          VALUE 'O'.
             88 :TLT:_TLR_S_S          VALUE 'S'.
           03 :TLT:_SIGN_DT        DIC(DT, P).
           03 :TLT:_CRO_BR_SIGN    DIC(FLG).
             88 :TLT:_CRO_BR_0         VALUE '0'.
             88 :TLT:_CRO_BR_1         VALUE '1'.
           03 :TLT:_SIGN_TIMES     DIC(TMS, P).
           03 :TLT:_PSW_RETRY      DIC(TMS, P).
           03 :TLT:_TRM_TYP        DIC(TRM_TYP).
             88 :TLT:_TRM_T_1          VALUE '1'.
             88 :TLT:_TRM_T_2          VALUE '2'.
             88 :TLT:_TRM_T_3          VALUE '3'.
             88 :TLT:_TRM_T_4          VALUE '4'.
           03 :TLT:_SIGN_TRM       DIC(TRM_NO).
           03 :TLT:_PRT_IP         DIC(IP_ADDR).
           03 :TLT:_TLR_STSW       DIC(STSW).
           03 :TLT:_LAST_JRN       DIC(JRNNO, P).
           03 :TLT:_ACC_VCH_NO     DIC(VCHNO).
           03 :TLT:_TLR_CRD_NO     DIC(TLR_CARD).
           03 :TLT:_TLR_CRD_PSW    DIC(TLRC_PSW).
           03 :TLT:_CRD_PSW_DT     DIC(DT, P).
           03 :TLT:_KB_PSW         DIC(TLRK_PSW).
           03 :TLT:_KB_PSW_DT      DIC(DT, P).
           03 :TLT:_LAST_KB_PSW    DIC(TXT_BIG, L200).
            03 FILLER REDEFINES :TLT:_LAST_KB_PSW.
               20 :TLT:_LAST_KB_PSW_DATA OCCURS 10 TIMES.
                   30 :TLT:_LAST_KBPSW    DIC(TLRK_PSW).
           03 :TLT:_TELE           DIC(TEL_NO).
           03 :TLT:_PST_ADDRESS    DIC(PST_ADDR).
           03 :TLT:_SIGN_TRM_FLG   DIC(FLG).
           03 :TLT:_TRM_INFO       DIC(TXT_BIG, L120).
            03 FILLER REDEFINES :TLT:_TRM_INFO.
               20 :TLT:_TRM_INFO_DATA OCCURS 10 TIMES.
                   30 :TLT:_TRM_NUM    DIC(TRM_NO).
           03 :TLT:_PSW_TYP        DIC(TYP).
           03 :TLT:_IDEN_DEV_ID    DIC(RMK_60).
           03 :TLT:_NEW_BR         DIC(BR, P).
           03 :TLT:_NEW_BR_EFF     DIC(DT, P).
           03 :TLT:_TM_OUT_LMT     DIC(TM, P).
           03 :TLT:_ACC_SEN_CUS    DIC(FLG).
           03 :TLT:_ACC_SEN_GL     DIC(FLG).
           03 :TLT:_SUPER_FLG      DIC(FLG).
           03 :TLT:_EXCEL_FLG      DIC(FLG).
           03 :TLT:_DPT_NO         DIC(DPT_NO).
           03 :TLT:_ATH_CARD       DIC(TD_AC).
           03 :TLT:_LDAP_ID        DIC(LDAP_ID).
           03 :TLT:_PRT_NAME1      DIC(PRT_NM).
           03 :TLT:_PRT_NAME2      DIC(PRT_NM).
           03 :TLT:_PRT_NAME3      DIC(PRT_NM).
           03 :TLT:_CT00_USER_ID   DIC(TLR_NO).
           03 :TLT:_TFE_USER_ID    DIC(TLR_NO).
           03 :TLT:_TS             PIC X(26).
      *@*CHECKSUM _582268635
       #IFNDEF TABLE_BPTTQP
       #DEFINE TABLE_BPTTQP
           EXEC SQL DECLARE BPTTQP TABLE
           (
             EXR_TYP                  CHAR(3) NOT NULL,
             FWD_TENOR                CHAR(3) NOT NULL,
             BR                       DEC(6, 0) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             CORR_CCY                 CHAR(3) NOT NULL,
             EFF_DT                   DEC(8, 0) NOT NULL,
             EFF_TM                   DEC(6, 0) NOT NULL,
             BR_BUY                   DEC(14, 8) NOT NULL,
             BR_SELL                  DEC(14, 8) NOT NULL,
             CS_BUY                   DEC(14, 8) NOT NULL,
             CS_SELL                  DEC(14, 8) NOT NULL,
             FX_BUY                   DEC(14, 8) NOT NULL,
             FX_SELL                  DEC(14, 8) NOT NULL,
             HCS_BUY                  DEC(14, 8) NOT NULL,
             HCS_SELL                 DEC(14, 8) NOT NULL,
             HFX_BUY                  DEC(14, 8) NOT NULL,
             HFX_SELL                 DEC(14, 8) NOT NULL,
             CCS_BUY                  DEC(14, 8) NOT NULL,
             CCS_SELL                 DEC(14, 8) NOT NULL,
             CFX_BUY                  DEC(14, 8) NOT NULL,
             CFX_SELL                 DEC(14, 8) NOT NULL,
             ELT_CCY                  CHAR(3) NOT NULL,
             MKT_BUY                  DEC(14, 8) NOT NULL,
             MKT_SELL                 DEC(14, 8) NOT NULL,
             LOC_MID                  DEC(14, 8) NOT NULL,
             FOR_MID                  DEC(14, 8) NOT NULL,
             CS_BUY_ORG               DEC(14, 8) NOT NULL,
             CS_SELL_ORG              DEC(14, 8) NOT NULL,
             FX_BUY_ORG               DEC(14, 8) NOT NULL,
             FX_SELL_ORG              DEC(14, 8) NOT NULL,
             FST_FLG                  CHAR(1) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPD_TM                   DEC(6, 0) NOT NULL,
             UPD_BR                   DEC(6, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTTQP                             *
      ******************************************************************
       01  BPR:TQP:.
           03 :TQP:_KEY.
              05 :TQP:_EXR_TYP     DIC(EXRA_CD).
              05 :TQP:_FWD_TENOR   DIC(FFTM_CD).
              05 :TQP:_BR          DIC(BR, P).
              05 :TQP:_CCY         DIC(CCY).
              05 :TQP:_CORR_CCY    DIC(CCY).
              05 :TQP:_EFF_DT      DIC(DT, P).
              05 :TQP:_EFF_TM      DIC(TM, P).
           03 :TQP:_BR_BUY         DIC(EX_RAT, P).
           03 :TQP:_BR_SELL        DIC(EX_RAT, P).
           03 :TQP:_CS_BUY         DIC(EX_RAT, P).
           03 :TQP:_CS_SELL        DIC(EX_RAT, P).
           03 :TQP:_FX_BUY         DIC(EX_RAT, P).
           03 :TQP:_FX_SELL        DIC(EX_RAT, P).
           03 :TQP:_HCS_BUY        DIC(EX_RAT, P).
           03 :TQP:_HCS_SELL       DIC(EX_RAT, P).
           03 :TQP:_HFX_BUY        DIC(EX_RAT, P).
           03 :TQP:_HFX_SELL       DIC(EX_RAT, P).
           03 :TQP:_CCS_BUY        DIC(EX_RAT, P).
           03 :TQP:_CCS_SELL       DIC(EX_RAT, P).
           03 :TQP:_CFX_BUY        DIC(EX_RAT, P).
           03 :TQP:_CFX_SELL       DIC(EX_RAT, P).
           03 :TQP:_ELT_CCY        DIC(CCY).
           03 :TQP:_MKT_BUY        DIC(EX_RAT, P).
           03 :TQP:_MKT_SELL       DIC(EX_RAT, P).
           03 :TQP:_LOC_MID        DIC(EX_RAT, P).
           03 :TQP:_FOR_MID        DIC(EX_RAT, P).
           03 :TQP:_CS_BUY_ORG     DIC(EX_RAT, P).
           03 :TQP:_CS_SELL_ORG    DIC(EX_RAT, P).
           03 :TQP:_FX_BUY_ORG     DIC(EX_RAT, P).
           03 :TQP:_FX_SELL_ORG    DIC(EX_RAT, P).
           03 :TQP:_FST_FLG        DIC(FLG).
           03 :TQP:_UPDTBL_DATE    DIC(DT, P).
           03 :TQP:_UPD_TM         DIC(TM, P).
           03 :TQP:_UPD_BR         DIC(BR, P).
           03 :TQP:_UPD_TLR        DIC(TLR_NO).
           03 :TQP:_TS             PIC X(26).
      *@*CHECKSUM 991639221
       #IFNDEF TABLE_BPTTQPH
       #DEFINE TABLE_BPTTQPH
           EXEC SQL DECLARE BPTTQPH TABLE
           (
             EXP_DT                   DEC(8, 0) NOT NULL,
             EXP_TM                   DEC(6, 0) NOT NULL,
             EXR_TYP                  CHAR(3) NOT NULL,
             FWD_TENOR                CHAR(3) NOT NULL,
             BR                       DEC(6, 0) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             CORR_CCY                 CHAR(3) NOT NULL,
             EFF_DT                   DEC(8, 0) NOT NULL,
             EFF_TM                   DEC(6, 0) NOT NULL,
             BR_BUY                   DEC(14, 8) NOT NULL,
             BR_SELL                  DEC(14, 8) NOT NULL,
             CS_BUY                   DEC(14, 8) NOT NULL,
             CS_SELL                  DEC(14, 8) NOT NULL,
             FX_BUY                   DEC(14, 8) NOT NULL,
             FX_SELL                  DEC(14, 8) NOT NULL,
             HCS_BUY                  DEC(14, 8) NOT NULL,
             HCS_SELL                 DEC(14, 8) NOT NULL,
             HFX_BUY                  DEC(14, 8) NOT NULL,
             HFX_SELL                 DEC(14, 8) NOT NULL,
             CCS_BUY                  DEC(14, 8) NOT NULL,
             CCS_SELL                 DEC(14, 8) NOT NULL,
             CFX_BUY                  DEC(14, 8) NOT NULL,
             CFX_SELL                 DEC(14, 8) NOT NULL,
             ELT_CCY                  CHAR(3) NOT NULL,
             MKT_BUY                  DEC(14, 8) NOT NULL,
             MKT_SELL                 DEC(14, 8) NOT NULL,
             LOC_MID                  DEC(14, 8) NOT NULL,
             FOR_MID                  DEC(14, 8) NOT NULL,
             CS_BUY_ORG               DEC(14, 8) NOT NULL,
             CS_SELL_ORG              DEC(14, 8) NOT NULL,
             FX_BUY_ORG               DEC(14, 8) NOT NULL,
             FX_SELL_ORG              DEC(14, 8) NOT NULL,
             FST_FLG                  CHAR(1) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPD_TM                   DEC(6, 0) NOT NULL,
             UPD_BR                   DEC(6, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTTQPH                            *
      ******************************************************************
       01  BPR:TQPH:.
           03 :TQPH:_KEY.
              05 :TQPH:_EXP_DT     DIC(DT, P).
              05 :TQPH:_EXP_TM     DIC(TM, P).
              05 :TQPH:_EXR_TYP    DIC(EXRA_CD).
              05 :TQPH:_FWD_TENOR  DIC(FFTM_CD).
              05 :TQPH:_BR         DIC(BR, P).
              05 :TQPH:_CCY        DIC(CCY).
              05 :TQPH:_CORR_CCY   DIC(CCY).
           03 :TQPH:_EFF_DT        DIC(DT, P).
           03 :TQPH:_EFF_TM        DIC(TM, P).
           03 :TQPH:_BR_BUY        DIC(EX_RAT, P).
           03 :TQPH:_BR_SELL       DIC(EX_RAT, P).
           03 :TQPH:_CS_BUY        DIC(EX_RAT, P).
           03 :TQPH:_CS_SELL       DIC(EX_RAT, P).
           03 :TQPH:_FX_BUY        DIC(EX_RAT, P).
           03 :TQPH:_FX_SELL       DIC(EX_RAT, P).
           03 :TQPH:_HCS_BUY       DIC(EX_RAT, P).
           03 :TQPH:_HCS_SELL      DIC(EX_RAT, P).
           03 :TQPH:_HFX_BUY       DIC(EX_RAT, P).
           03 :TQPH:_HFX_SELL      DIC(EX_RAT, P).
           03 :TQPH:_CCS_BUY       DIC(EX_RAT, P).
           03 :TQPH:_CCS_SELL      DIC(EX_RAT, P).
           03 :TQPH:_CFX_BUY       DIC(EX_RAT, P).
           03 :TQPH:_CFX_SELL      DIC(EX_RAT, P).
           03 :TQPH:_ELT_CCY       DIC(CCY).
           03 :TQPH:_MKT_BUY       DIC(EX_RAT, P).
           03 :TQPH:_MKT_SELL      DIC(EX_RAT, P).
           03 :TQPH:_LOC_MID       DIC(EX_RAT, P).
           03 :TQPH:_FOR_MID       DIC(EX_RAT, P).
           03 :TQPH:_CS_BUY_ORG    DIC(EX_RAT, P).
           03 :TQPH:_CS_SELL_ORG   DIC(EX_RAT, P).
           03 :TQPH:_FX_BUY_ORG    DIC(EX_RAT, P).
           03 :TQPH:_FX_SELL_ORG   DIC(EX_RAT, P).
           03 :TQPH:_FST_FLG       DIC(FLG).
           03 :TQPH:_UPDTBL_DATE   DIC(DT, P).
           03 :TQPH:_UPD_TM        DIC(TM, P).
           03 :TQPH:_UPD_BR        DIC(BR, P).
           03 :TQPH:_UPD_TLR       DIC(TLR_NO).
           03 :TQPH:_TS            PIC X(26).
      *@*CHECKSUM _167563208
       #IFNDEF TABLE_BPTTROL
       #DEFINE TABLE_BPTTROL
           EXEC SQL DECLARE BPTTROL TABLE
           (
             IN_FLG                   CHAR(1) NOT NULL,
             SYS_MMO                  CHAR(4) NOT NULL,
             TX_CD                    CHAR(7) NOT NULL,
             ATH_TYP                  CHAR(1) NOT NULL,
             ROLE_CD                  CHAR(4) NOT NULL,
             EFF_DT                   DEC(8, 0) NOT NULL,
             EXP_DT                   DEC(8, 0) NOT NULL,
             UPD_DT                   DEC(8, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTTROL                            *
      ******************************************************************
       01  BPR:TROL:.
           03 :TROL:_KEY.
              05 :TROL:_IN_FLG     DIC(TXN_TYP).
              88 :TROL:_INOUT_IN     VALUE 'I'.
              88 :TROL:_INOUT_OUT    VALUE 'O'.
              88 :TROL:_INOUT_WF     VALUE 'F'.
              05 :TROL:_SYS_MMO    DIC(CHNL_NO).
              05 :TROL:_TX_CD      DIC(TX_CD).
              05 :TROL:_ATH_TYP    DIC(AUTH_TYP).
              88 :TROL:_ATHTYP_OPER  VALUE '0'.
              88 :TROL:_ATHTYP_AUTH  VALUE '1'.
              05 :TROL:_ROLE_CD    DIC(ROLE_CD).
           03 :TROL:_EFF_DT        DIC(DT, P).
           03 :TROL:_EXP_DT        DIC(DT, P).
           03 :TROL:_UPD_DT        DIC(DT, P).
           03 :TROL:_UPD_TLR       DIC(TLR_NO).
      *@*CHECKSUM _562222253
       #IFNDEF TABLE_BPTTWND
       #DEFINE TABLE_BPTTWND
           EXEC SQL DECLARE BPTTWND TABLE
           (
             CAL_CD                   CHAR(4) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             WND_TXT                  CHAR(14) NOT NULL,
             LAST_DATE                DEC(8, 0) NOT NULL,
             LAST_TELLER              CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTTWND                            *
      ******************************************************************
       01  BPR:TWND:.
           03 :TWND:_KEY.
              05 :TWND:_CAL_CD     DIC(CAL_CD).
              05 :TWND:_EFF_DATE   DIC(DT, P).
           03 :TWND:_WND_TXT       DIC(TXT_BIG, L14).
           03 FILLER REDEFINES :TWND:_WND_TXT.
              05 :TWND:_WND_DATA OCCURS 7 TIMES.
                 07 :TWND:_WND_NO   DIC(WEEK_CD).
                 07 :TWND:_WND_OPT  DIC(OPT).
           03 :TWND:_LAST_DATE     DIC(DT, P).
           03 :TWND:_LAST_TELLER   DIC(TLR_NO).
           03 :TWND:_TS            PIC X(26).
      *@*CHECKSUM _1174224300
       #IFNDEF TABLE_BPTTXIF
       #DEFINE TABLE_BPTTXIF
           EXEC SQL DECLARE BPTTXIF TABLE
           (
             IN_FLG                   CHAR(1) NOT NULL,
             SYS_MMO                  CHAR(4) NOT NULL,
             TX_CD                    CHAR(7) NOT NULL,
             STS                      CHAR(1) NOT NULL,
             TX_LVL                   CHAR(1) NOT NULL,
             ATH_LVL1                 CHAR(1) NOT NULL,
             ATH_LVL2                 CHAR(1) NOT NULL,
             SELF_ATH_FLG             CHAR(1) NOT NULL,
             COR_ALW_FLG              CHAR(1) NOT NULL,
             BAT_ATH_FLG              CHAR(1) NOT NULL,
             SATH_FLG                 CHAR(1) NOT NULL,
             STSW                     CHAR(64) NOT NULL,
             RUN_MODE                 CHAR(1) NOT NULL,
             TAB_CD                   CHAR(4) NOT NULL,
             EDESC                    CHAR(120) NOT NULL,
             CDESC                    VARCHAR(320) NOT NULL,
             UPD_DT                   DEC(8, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE BPTTXIF                            *
      ******************************************************************
       01  BPR:TXIF:.
           03 :TXIF:_KEY.
              05 :TXIF:_IN_FLG     DIC(TXN_TYP).
              88 :TXIF:_INOUT_IN     VALUE 'I'.
              88 :TXIF:_INOUT_OUT    VALUE 'O'.
              88 :TXIF:_INOUT_WF     VALUE 'F'.
              05 :TXIF:_SYS_MMO    DIC(CHNL_NO).
              05 :TXIF:_TX_CD      DIC(TX_CD).
           03 :TXIF:_STS           DIC(REC_STS).
              88 :TXIF:_STS_AVAIL    VALUE 'Y'.
              88 :TXIF:_STS_NAVAIL   VALUE 'N'.
           03 :TXIF:_TX_LVL        DIC(TX_LVL).
           03 :TXIF:_ATH_LVL1      DIC(TX_LVL).
           03 :TXIF:_ATH_LVL2      DIC(TX_LVL).
           03 :TXIF:_SELF_ATH_FLG  DIC(FLG).
              88 :TXIF:_SELFGR_Y     VALUE 'Y'.
              88 :TXIF:_SELFGR_N     VALUE 'N'.
           03 :TXIF:_COR_ALW_FLG   DIC(FLG).
              88 :TXIF:_ALWCOR_Y     VALUE 'Y'.
              88 :TXIF:_ALWCOR_N     VALUE 'N'.
           03 :TXIF:_BAT_ATH_FLG   DIC(TCHK_MTH).
              88 :TXIF:_BATATH_0     VALUE '0'.
              88 :TXIF:_BATATH_1     VALUE '1'.
              88 :TXIF:_BATATH_2     VALUE '2'.
           03 :TXIF:_SATH_FLG      DIC(FLG).
              88 :TXIF:_SATHCHK_Y    VALUE 'Y'.
              88 :TXIF:_SATHCHK_N    VALUE 'N'.
           03 :TXIF:_STSW          DIC(STSW).
           03 :TXIF:_RUN_MODE      DIC(RUN_MOD).
              88 :TXIF:_RUNMOD_D     VALUE 'D'.
              88 :TXIF:_RUNMOD_N     VALUE 'N'.
           03 :TXIF:_TAB_CD        DIC(ACTRL_NO).
           03 :TXIF:_EDESC         DIC(DESC_120).
           03 :TXIF:_CDESC.
              49 :TXIF:_CDESC_LEN  PIC S9(4) COMP.
              49 :TXIF:_CDESC_TEXT DIC(DESC_160).
           03 :TXIF:_UPD_DT        DIC(DT, P).
           03 :TXIF:_UPD_TLR       DIC(TLR_NO).
      *@*CHECKSUM 1275235001
       #IFNDEF TABLE_CITACR
       #DEFINE TABLE_CITACR
           EXEC SQL DECLARE CITACR TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             TYPE                     CHAR(2) NOT NULL,
             ACT_NO                   CHAR(25) NOT NULL,
             PRD_CODE                 CHAR(8) NOT NULL,
             PRD_SUB_CD               CHAR(8) NOT NULL,
             SGC_NO                   DEC(2, 0) NOT NULL,
             CSTC_NO                  DEC(2, 0) NOT NULL,
             ASTC_NO                  DEC(2, 0) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             ADDR_NO                  DEC(2, 0) NOT NULL,
             ADDR_NO2                 DEC(2, 0) NOT NULL,
             ADDR_NO3                 DEC(2, 0) NOT NULL,
             ADDR_NO4                 DEC(2, 0) NOT NULL,
             ADDR_NO5                 DEC(2, 0) NOT NULL,
             PRI_CINO                 CHAR(12) NOT NULL,
             SPECIAL_ACT              CHAR(1) NOT NULL,
             IBAC_TYPE                CHAR(1) NOT NULL,
             CLS_STATUS               CHAR(1) NOT NULL,
             OIC_NO                   CHAR(10) NOT NULL,
             OIC_BR                   DEC(6, 0) NOT NULL,
             OIC_UPD                  CHAR(10) NOT NULL,
             OIC_UPD_BR               DEC(6, 0) NOT NULL,
             OIC_OLD                  CHAR(10) NOT NULL,
             OIC_OLD_BR               DEC(6, 0) NOT NULL,
             UPD_OIC_DT               DEC(8, 0) NOT NULL,
             BOOK_BCH                 DEC(6, 0) NOT NULL,
             BOOK_BCH_UPD             DEC(6, 0) NOT NULL,
             BOOK_BCH_OLD             DEC(6, 0) NOT NULL,
             UPD_BR_DT                DEC(8, 0) NOT NULL,
             DELV_OPT                 CHAR(1) NOT NULL,
             DELV_BCH                 DEC(6, 0) NOT NULL,
             LAST_PRINT_DATE1         DEC(8, 0) NOT NULL,
             LAST_PRINT_DATE2         DEC(8, 0) NOT NULL,
             USAGE_ALL                CHAR(3) NOT NULL,
             USAGE_DATA               CHAR(14) NOT NULL,
             THEIR_ACT                CHAR(35) NOT NULL,
             CHNL_NO                  CHAR(4) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CLS_DATE                 DEC(8, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             UNCFM_CAT                CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             ARRANG_1                 CHAR(2) NOT NULL,
             UPDATE_DATE              DEC(8, 0) NOT NULL,
             UPDATE_TIME              DEC(6, 0) NOT NULL,
             UPDATE_BR                DEC(6, 0) NOT NULL,
             UPD_TLR                  CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITACR                             *
      ******************************************************************
       01  CIR:ACR:.
           03 :ACR:_KEY.
              05 :ACR:_CI_NO       DIC(CI_NO).
              05 :ACR:_TYPE        DIC(TYPE).
              05 :ACR:_ACT_NO      DIC(AC).
           03 :ACR:_PRD_CODE       DIC(PROD_CD).
           03 :ACR:_PRD_SUB_CD     DIC(PROD_CD).
           03 :ACR:_SGC_NO         DIC(SEQ_2, P).
           03 :ACR:_CSTC_NO        DIC(SEQ_2, P).
           03 :ACR:_ASTC_NO        DIC(SEQ_2, P).
           03 :ACR:_CCY            DIC(CCY).
           03 :ACR:_ADDR_NO        DIC(SEQ_2, P).
           03 :ACR:_ADDR_NO2       DIC(SEQ_2, P).
           03 :ACR:_ADDR_NO3       DIC(SEQ_2, P).
           03 :ACR:_ADDR_NO4       DIC(SEQ_2, P).
           03 :ACR:_ADDR_NO5       DIC(SEQ_2, P).
           03 :ACR:_PRI_CINO       DIC(CI_NO).
           03 :ACR:_SPECIAL_ACT    DIC(TYP).
           03 :ACR:_IBAC_TYPE      DIC(TYP).
           03 :ACR:_CLS_STATUS     DIC(FLG).
           03 :ACR:_OIC_NO         DIC(OIC_NO).
           03 :ACR:_OIC_BR         DIC(BR, P).
           03 :ACR:_OIC_UPD        DIC(OIC_NO).
           03 :ACR:_OIC_UPD_BR     DIC(BR, P).
           03 :ACR:_OIC_OLD        DIC(OIC_NO).
           03 :ACR:_OIC_OLD_BR     DIC(BR, P).
           03 :ACR:_UPD_OIC_DT     DIC(DT, P).
           03 :ACR:_BOOK_BCH       DIC(BR, P).
           03 :ACR:_BOOK_BCH_UPD   DIC(BR, P).
           03 :ACR:_BOOK_BCH_OLD   DIC(BR, P).
           03 :ACR:_UPD_BR_DT      DIC(DT, P).
           03 :ACR:_DELV_OPT       DIC(TYP).
           03 :ACR:_DELV_BCH       DIC(BR, P).
           03 :ACR:_LAST_PRINT_DATE1 DIC(DT, P).
           03 :ACR:_LAST_PRINT_DATE2 DIC(DT, P).
           03 :ACR:_USAGE_ALL      DIC(CICC_TYP).
           03 :ACR:_USAGE_DATA     DIC(TXT_BIG, L14).
           03 FILLER REDEFINES :ACR:_USAGE_DATA.
              10 :ACR:_MSG_USAGE_FILLER OCCURS 7 TIMES.
                 20 :ACR:_USAGE_AP       DIC(TYPE).
           03 :ACR:_THEIR_ACT      DIC(OSH_AC).
           03 :ACR:_CHNL_NO        DIC(CHNL_NO).
           03 :ACR:_CREATE_UNIT    DIC(BR, P).
           03 :ACR:_CREATE_TLR     DIC(TLR_NO).
           03 :ACR:_CREATE_DATE    DIC(DT, P).
           03 :ACR:_CREATE_TIME    DIC(TM, P).
           03 :ACR:_CLS_DATE       DIC(DT, P).
           03 :ACR:_LAST_UPD_TLR   DIC(TLR_NO).
           03 :ACR:_CHK_STATUS     DIC(FLG).
           03 :ACR:_UNCFM_CAT      DIC(FLG).
           03 :ACR:_LAST_UPD_DATE  DIC(DT, P).
           03 :ACR:_ARRANG_1       DIC(TYPE).
           03 :ACR:_UPDATE_DATE    DIC(DT, P).
           03 :ACR:_UPDATE_TIME    DIC(TM, P).
           03 :ACR:_UPDATE_BR      DIC(BR, P).
           03 :ACR:_UPD_TLR        DIC(TLR_NO).
           03 :ACR:_TS             PIC X(26).
      *@*CHECKSUM _988578091
       #IFNDEF TABLE_CITADR
       #DEFINE TABLE_CITADR
           EXEC SQL DECLARE CITADR TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             ADDR_NO                  DEC(2, 0) NOT NULL,
             TYPE                     CHAR(1) NOT NULL,
             POBOX_FLG                CHAR(1) NOT NULL,
             ENG_FLG                  CHAR(1) NOT NULL,
             FORMAT_FLG               CHAR(1) NOT NULL,
             POST_CTY                 CHAR(6) NOT NULL,
             POST_AREA                CHAR(6) NOT NULL,
             DEFAULT_FLAG             CHAR(1) NOT NULL,
             ENG_ADDR1                CHAR(30) NOT NULL,
             ENG_ADDR2                CHAR(30) NOT NULL,
             ENG_ADDR3                CHAR(30) NOT NULL,
             ENG_ADDR4                CHAR(30) NOT NULL,
             ENG_ADDR5                CHAR(30) NOT NULL,
             ENG_ADDR6                CHAR(30) NOT NULL,
             ENG_FLAT_CD              CHAR(1) NOT NULL,
             ENG_FLAT                 CHAR(30) NOT NULL,
             ENG_FLOOR                CHAR(30) NOT NULL,
             ENG_BLOCK                CHAR(50) NOT NULL,
             ENG_BUILDING             CHAR(80) NOT NULL,
             ENG_STREET               CHAR(60) NOT NULL,
             ENG_DISTRICT             CHAR(5) NOT NULL,
             ENG_CITY                 CHAR(5) NOT NULL,
             ENG_COUNTRY              CHAR(4) NOT NULL,
             LOCAL_ADDR1              CHAR(80) NOT NULL,
             LOCAL_ADDR2              CHAR(80) NOT NULL,
             LOCAL_ADDR3              CHAR(80) NOT NULL,
             LOCAL_ADDR4              CHAR(80) NOT NULL,
             LOCAL_ADDR5              CHAR(80) NOT NULL,
             LOCAL_ADDR6              CHAR(80) NOT NULL,
             L_CNTY                   CHAR(4) NOT NULL,
             L_PROV                   CHAR(6) NOT NULL,
             L_CITY                   CHAR(6) NOT NULL,
             L_COUNTRY                CHAR(6) NOT NULL,
             L_DETIAL                 CHAR(120) NOT NULL,
             EMAIL                    CHAR(50) NOT NULL,
             TEL_CNTY_NO              CHAR(6) NOT NULL,
             TEL_NO                   CHAR(18) NOT NULL,
             TEL_STATUS               CHAR(1) NOT NULL,
             TEL_INV_FLG              CHAR(1) NOT NULL,
             FAX_CNTY_NO              CHAR(6) NOT NULL,
             FAX_NO                   CHAR(18) NOT NULL,
             FAX_INV_FLG              CHAR(1) NOT NULL,
             REPLACE_NO               DEC(2, 0) NOT NULL,
             VAL_DATE                 DEC(8, 0) NOT NULL,
             VER_FLAG                 CHAR(1) NOT NULL,
             REMARK                   CHAR(120) NOT NULL,
             HOLD_FLAG                CHAR(1) NOT NULL,
             HOLD_EXP_DATE            DEC(8, 0) NOT NULL,
             APPLC_DT                 DEC(8, 0) NOT NULL,
             DEF_FLD1                 CHAR(25) NOT NULL,
             DEF_FLD2                 CHAR(25) NOT NULL,
             DEF_FLD3                 CHAR(25) NOT NULL,
             DEF_FLD4                 CHAR(25) NOT NULL,
             DEF_FLD5                 CHAR(25) NOT NULL,
             DEF_FLD6                 CHAR(25) NOT NULL,
             DEF_FLD7                 CHAR(25) NOT NULL,
             DEF_FLD8                 CHAR(25) NOT NULL,
             DEF_FLD9                 CHAR(25) NOT NULL,
             DEF_FLD10                CHAR(25) NOT NULL,
             CHNL_NO                  CHAR(4) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITADR                             *
      ******************************************************************
       01  CIR:ADR:.
           03 :ADR:_KEY.
              05 :ADR:_CI_NO       DIC(CI_NO).
              05 :ADR:_ADDR_NO     DIC(SEQ_2, P).
           03 :ADR:_TYPE           DIC(TYP).
           03 :ADR:_POBOX_FLG      DIC(TYP).
           03 :ADR:_ENG_FLG        DIC(FLG).
           03 :ADR:_FORMAT_FLG     DIC(FLG).
           03 :ADR:_POST_CTY       DIC(ICNTY_NO).
           03 :ADR:_POST_AREA      DIC(POST_CD).
           03 :ADR:_DEFAULT_FLAG   DIC(FLG).
           03 :ADR:_ENG_ADDR1      DIC(CMP_ADDR).
           03 :ADR:_ENG_ADDR2      DIC(CMP_ADDR).
           03 :ADR:_ENG_ADDR3      DIC(CMP_ADDR).
           03 :ADR:_ENG_ADDR4      DIC(CMP_ADDR).
           03 :ADR:_ENG_ADDR5      DIC(CMP_ADDR).
           03 :ADR:_ENG_ADDR6      DIC(CMP_ADDR).
           03 :ADR:_ENG_FLAT_CD    DIC(FLG).
           03 :ADR:_ENG_FLAT       DIC(RMK_15).
           03 :ADR:_ENG_FLOOR      DIC(RMK_15).
           03 :ADR:_ENG_BLOCK      DIC(RMK_25).
           03 :ADR:_ENG_BUILDING   DIC(ES_ADDR).
           03 :ADR:_ENG_STREET     DIC(RMK_30).
           03 :ADR:_ENG_DISTRICT   DIC(FREE_CD5).
           03 :ADR:_ENG_CITY       DIC(FREE_CD5).
           03 :ADR:_ENG_COUNTRY    DIC(CNTYS_CD).
           03 :ADR:_LOCAL_ADDR1    DIC(CMP_ADRL).
           03 :ADR:_LOCAL_ADDR2    DIC(CMP_ADRL).
           03 :ADR:_LOCAL_ADDR3    DIC(CMP_ADRL).
           03 :ADR:_LOCAL_ADDR4    DIC(CMP_ADRL).
           03 :ADR:_LOCAL_ADDR5    DIC(CMP_ADRL).
           03 :ADR:_LOCAL_ADDR6    DIC(CMP_ADRL).
           03 :ADR:_L_CNTY         DIC(CNTYS_CD).
           03 :ADR:_L_PROV         DIC(PROV_CD).
           03 :ADR:_L_CITY         DIC(CITY_CD).
           03 :ADR:_L_COUNTRY      DIC(COUNTY).
           03 :ADR:_L_DETIAL       DIC(GEN_ADDR).
           03 :ADR:_EMAIL          DIC(EMAIL).
           03 :ADR:_TEL_CNTY_NO    DIC(ICNTY_NO).
           03 :ADR:_TEL_NO         DIC(TEL_NO).
           03 :ADR:_TEL_STATUS     DIC(TYP).
           03 :ADR:_TEL_INV_FLG    DIC(FLG).
           03 :ADR:_FAX_CNTY_NO    DIC(ICNTY_NO).
           03 :ADR:_FAX_NO         DIC(TEL_NO).
           03 :ADR:_FAX_INV_FLG    DIC(FLG).
           03 :ADR:_REPLACE_NO     DIC(SEQ_2, P).
           03 :ADR:_VAL_DATE       DIC(DT, P).
           03 :ADR:_VER_FLAG       DIC(FLG).
           03 :ADR:_REMARK         DIC(RMK_60).
           03 :ADR:_HOLD_FLAG      DIC(FLG).
           03 :ADR:_HOLD_EXP_DATE  DIC(DT, P).
           03 :ADR:_APPLC_DT       DIC(DT, P).
           03 :ADR:_DEF_FLD1       DIC(STAT_CD).
           03 :ADR:_DEF_FLD2       DIC(STAT_CD).
           03 :ADR:_DEF_FLD3       DIC(STAT_CD).
           03 :ADR:_DEF_FLD4       DIC(STAT_CD).
           03 :ADR:_DEF_FLD5       DIC(STAT_CD).
           03 :ADR:_DEF_FLD6       DIC(STAT_CD).
           03 :ADR:_DEF_FLD7       DIC(STAT_CD).
           03 :ADR:_DEF_FLD8       DIC(STAT_CD).
           03 :ADR:_DEF_FLD9       DIC(STAT_CD).
           03 :ADR:_DEF_FLD10      DIC(STAT_CD).
           03 :ADR:_CHNL_NO        DIC(CHNL_NO).
           03 :ADR:_CREATE_UNIT    DIC(BR, P).
           03 :ADR:_CREATE_TLR     DIC(TLR_NO).
           03 :ADR:_CREATE_DATE    DIC(DT, P).
           03 :ADR:_CREATE_TIME    DIC(TM, P).
           03 :ADR:_CHK_STATUS     DIC(FLG).
           03 :ADR:_LAST_UPD_DATE  DIC(DT, P).
           03 :ADR:_UPDTBL_DATE    DIC(DT, P).
           03 :ADR:_TS             PIC X(26).
      *@*CHECKSUM 51516208
       #IFNDEF TABLE_CITAGR
       #DEFINE TABLE_CITAGR
           EXEC SQL DECLARE CITAGR TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             AGR_NO                   DEC(2, 0) NOT NULL,
             TYPE                     CHAR(5) NOT NULL,
             AGR_CODE                 CHAR(10) NOT NULL,
             FAX_INDE_INDTOR          CHAR(1) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             REVW_DATE                DEC(8, 0) NOT NULL,
             DESC                     VARCHAR(400) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITAGR                             *
      ******************************************************************
       01  CIR:AGR:.
           03 :AGR:_KEY.
              05 :AGR:_CI_NO       DIC(CI_NO).
              05 :AGR:_AGR_NO      DIC(SEQ_2, P).
           03 :AGR:_TYPE           DIC(FREE_CD5).
           03 :AGR:_AGR_CODE       DIC(PBCD_NO).
           03 :AGR:_FAX_INDE_INDTOR DIC(FLG).
           03 :AGR:_EFF_DATE       DIC(DT, P).
           03 :AGR:_EXP_DATE       DIC(DT, P).
           03 :AGR:_REVW_DATE      DIC(DT, P).
           03 :AGR:_DESC.
              49 :AGR:_DESC_LEN    PIC S9(4) COMP.
              49 :AGR:_DESC_TEXT   DIC(RMK_200).
           03 :AGR:_CREATE_UNIT    DIC(BR, P).
           03 :AGR:_CREATE_TLR     DIC(TLR_NO).
           03 :AGR:_CREATE_DATE    DIC(DT, P).
           03 :AGR:_CREATE_TIME    DIC(TM, P).
           03 :AGR:_CHK_STATUS     DIC(TYP).
           03 :AGR:_LAST_UPD_DATE  DIC(DT, P).
           03 :AGR:_UPDTBL_DATE    DIC(DT, P).
           03 :AGR:_TS             PIC X(26).
      *@*CHECKSUM _416016019
       #IFNDEF TABLE_CITBKRPT
       #DEFINE TABLE_CITBKRPT
           EXEC SQL DECLARE CITBKRPT TABLE
           (
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             BK_CD                    CHAR(1) NOT NULL,
             BANKRUPTCY_DT            DEC(8, 0) NOT NULL,
             DISCHARGE_DT             DEC(8, 0) NOT NULL,
             BANKRUPTCY_NO            CHAR(50) NOT NULL,
             UPLOADED_DT              DEC(8, 0) NOT NULL,
             L_TYP                    CHAR(5) NOT NULL,
             STS                      CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITBKRPT                           *
      ******************************************************************
       01  CIR:BKRPT:.
           03 :BKRPT:_KEY.
              05 :BKRPT:_ID_TYPE   DIC(ID_TYP).
              05 :BKRPT:_ID_NO     DIC(ID_NO).
           03 :BKRPT:_BK_CD        DIC(TYP).
           03 :BKRPT:_BANKRUPTCY_DT DIC(DT, P).
           03 :BKRPT:_DISCHARGE_DT DIC(DT, P).
           03 :BKRPT:_BANKRUPTCY_NO DIC(X50).
           03 :BKRPT:_UPLOADED_DT  DIC(DT, P).
           03 :BKRPT:_L_TYP        DIC(FREE_CD5).
           03 :BKRPT:_STS          DIC(TYP).
           03 :BKRPT:_CREATE_UNIT  DIC(BR, P).
           03 :BKRPT:_CREATE_TLR   DIC(TLR_NO).
           03 :BKRPT:_CREATE_DATE  DIC(DT, P).
           03 :BKRPT:_CREATE_TIME  DIC(TM, P).
           03 :BKRPT:_TS           PIC X(26).
      *@*CHECKSUM 168451914
       #IFNDEF TABLE_CITBUEXC
       #DEFINE TABLE_CITBUEXC
           EXEC SQL DECLARE CITBUEXC TABLE
           (
             AC_DATE                  DEC(8, 0) NOT NULL,
             FILE_TYPE                CHAR(2) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             CI_INFO                  CHAR(30) NOT NULL,
             RESULT                   CHAR(1) NOT NULL,
             FAIL_REASON              CHAR(2) NOT NULL,
             USER_ID                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITBUEXC                           *
      ******************************************************************
       01  CIR:BUEXC:.
           03 :BUEXC:_KEY.
              05 :BUEXC:_AC_DATE   DIC(DT, P).
              05 :BUEXC:_FILE_TYPE DIC(TYPE).
              05 :BUEXC:_CI_NO     DIC(CI_NO).
           03 :BUEXC:_CI_INFO      DIC(X30).
           03 :BUEXC:_RESULT       DIC(FLG).
           03 :BUEXC:_FAIL_REASON  DIC(TYPE).
           03 :BUEXC:_USER_ID      DIC(TLR_NO).
           03 :BUEXC:_UPDTBL_DATE  DIC(DT, P).
           03 :BUEXC:_TS           PIC X(26).
      *@*CHECKSUM _529416013
       #IFNDEF TABLE_CITCARD
       #DEFINE TABLE_CITCARD
           EXEC SQL DECLARE CITCARD TABLE
           (
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             CARD_NO                  CHAR(19) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             OPEN_DT                  DEC(8, 0) NOT NULL,
             STS_CODE                 CHAR(1) NOT NULL,
             CUST_ORG                 DEC(3, 0) NOT NULL,
             CUST_NO                  DEC(16, 0) NOT NULL,
             CARD_STS                 CHAR(1) NOT NULL,
             AML_I_IND                CHAR(1) NOT NULL,
             AC_TYP                   CHAR(2) NOT NULL,
             AC_STS                   CHAR(1) NOT NULL,
             PRINCIPAL_CUST_ID        CHAR(20) NOT NULL,
             CARD_TYPE                CHAR(2) NOT NULL,
             CARD_ORG_NO              DEC(3, 0) NOT NULL,
             CARD_TYPE_NO             DEC(3, 0) NOT NULL,
             CORP_CARD_IND            CHAR(1) NOT NULL,
             TRANSFER_AC              DEC(16, 0) NOT NULL,
             TRANSFER_AC_IND          CHAR(1) NOT NULL,
             AC_BALANCE               DEC(16, 2) NOT NULL,
             CREDIT_LIMIT             DEC(16, 2) NOT NULL,
             OUTSTAND_AMO             DEC(16, 2) NOT NULL,
             AVAILABLE_CREDIT         DEC(16, 2) NOT NULL,
             PASS_AMO                 DEC(16, 2) NOT NULL,
             STAFF_IND                CHAR(1) NOT NULL,
             COMBINE_IND              CHAR(1) NOT NULL,
             EXPIRE_DT                DEC(6, 0) NOT NULL,
             CLOSE_IND                CHAR(1) NOT NULL,
             STAT_FLG                 DEC(1, 0) NOT NULL,
             L_PAYMENT_DT             DEC(8, 0) NOT NULL,
             CHARGE_IND               CHAR(1) NOT NULL,
             L_DUE_DT                 DEC(8, 0) NOT NULL,
             CYCLE_DUE                DEC(1, 0) NOT NULL,
             DELINQUENT_HISTORY       CHAR(24) NOT NULL,
             BLOCK_CD                 CHAR(1) NOT NULL,
             ALTERNATE_B_CD           CHAR(1) NOT NULL,
             B_CD_DT                  DEC(8, 0) NOT NULL,
             CARD_CATEGORY            CHAR(1) NOT NULL,
             L_ACTIVE_DT              DEC(8, 0) NOT NULL,
             A_CNTY_CODE              CHAR(2) NOT NULL,
             A_DTRICT_CD              CHAR(3) NOT NULL,
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
      * COBOL DECLARATION FOR TABLE CITCARD                            *
      ******************************************************************
       01  CIR:CARD:.
           03 :CARD:_KEY.
              05 :CARD:_ID_TYPE    DIC(ID_TYP).
              05 :CARD:_ID_NO      DIC(ID_NO).
              05 :CARD:_CARD_NO    DIC(DR_CARD).
           03 :CARD:_CI_NO         DIC(CI_NO).
           03 :CARD:_OPEN_DT       DIC(DT, P).
           03 :CARD:_STS_CODE      DIC(FLG).
           03 :CARD:_CUST_ORG      DIC(N03, P).
           03 :CARD:_CUST_NO       DIC(N16, P).
           03 :CARD:_CARD_STS      DIC(FLG).
           03 :CARD:_AML_I_IND     DIC(TYP).
           03 :CARD:_AC_TYP        DIC(TYPE).
           03 :CARD:_AC_STS        DIC(TYP).
           03 :CARD:_PRINCIPAL_CUST_ID DIC(X20).
           03 :CARD:_CARD_TYPE     DIC(TYPE).
           03 :CARD:_CARD_ORG_NO   DIC(N03, P).
           03 :CARD:_CARD_TYPE_NO  DIC(N03, P).
           03 :CARD:_CORP_CARD_IND DIC(FLG).
           03 :CARD:_TRANSFER_AC   DIC(N16, P).
           03 :CARD:_TRANSFER_AC_IND DIC(FLG).
           03 :CARD:_AC_BALANCE    DIC(AMT_S, P).
           03 :CARD:_CREDIT_LIMIT  DIC(AMT_S, P).
           03 :CARD:_OUTSTAND_AMO  DIC(AMT_S, P).
           03 :CARD:_AVAILABLE_CREDIT DIC(AMT_S, P).
           03 :CARD:_PASS_AMO      DIC(AMT_S, P).
           03 :CARD:_STAFF_IND     DIC(FLG).
           03 :CARD:_COMBINE_IND   DIC(TYP).
           03 :CARD:_EXPIRE_DT     DIC(YYYYMM, P).
           03 :CARD:_CLOSE_IND     DIC(FLG).
           03 :CARD:_STAT_FLG      DIC(SEQ_1, P).
           03 :CARD:_L_PAYMENT_DT  DIC(DT, P).
           03 :CARD:_CHARGE_IND    DIC(FLG).
           03 :CARD:_L_DUE_DT      DIC(DT, P).
           03 :CARD:_CYCLE_DUE     DIC(SEQ_1, P).
           03 :CARD:_DELINQUENT_HISTORY DIC(X24).
           03 :CARD:_BLOCK_CD      DIC(TYP).
           03 :CARD:_ALTERNATE_B_CD DIC(TYP).
           03 :CARD:_B_CD_DT       DIC(DT, P).
           03 :CARD:_CARD_CATEGORY DIC(TYP).
           03 :CARD:_L_ACTIVE_DT   DIC(DT, P).
           03 :CARD:_A_CNTY_CODE   DIC(TYPE).
           03 :CARD:_A_DTRICT_CD   DIC(CNTY_CD).
           03 :CARD:_CREATE_UNIT   DIC(BR, P).
           03 :CARD:_CREATE_TLR    DIC(TLR_NO).
           03 :CARD:_CREATE_DATE   DIC(DT, P).
           03 :CARD:_CREATE_TIME   DIC(TM, P).
           03 :CARD:_UPDTBL_DATE   DIC(DT, P).
           03 :CARD:_TS            PIC X(26).
      *@*CHECKSUM 1521137061
       #IFNDEF TABLE_CITCCRA
       #DEFINE TABLE_CITCCRA
           EXEC SQL DECLARE CITCCRA TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             CONST_DT                 DEC(8, 0) NOT NULL,
             REV_NOTIC_DT             DEC(8, 0) NOT NULL,
             REV_EFF_DT               DEC(8, 0) NOT NULL,
             FACL_CANL_STS            CHAR(1) NOT NULL,
             FCLTY_CANCEL_DATE        DEC(8, 0) NOT NULL,
             LST_UPD_CD               DEC(8, 0) NOT NULL,
             WRT_OFF_AMT              DEC(16, 2) NOT NULL,
             WRT_ACC_MONTH            DEC(18, 2) NOT NULL,
             WRT_ACC_TOTAL            DEC(18, 2) NOT NULL,
             WRT_ACC_LSTMT_TOT        DEC(18, 2) NOT NULL,
             REC_AMT                  DEC(16, 2) NOT NULL,
             REC_ACC_MONTH            DEC(18, 2) NOT NULL,
             REC_ACC_TOT              DEC(18, 2) NOT NULL,
             REC_ACC_LSTMT_TOT        DEC(18, 2) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCCRA                            *
      ******************************************************************
       01  CIR:CCRA:.
           03 :CCRA:_KEY.
              05 :CCRA:_CI_NO      DIC(CI_NO).
           03 :CCRA:_CONST_DT      DIC(DT, P).
           03 :CCRA:_REV_NOTIC_DT  DIC(DT, P).
           03 :CCRA:_REV_EFF_DT    DIC(DT, P).
           03 :CCRA:_FACL_CANL_STS DIC(TYP).
           03 :CCRA:_FCLTY_CANCEL_DATE DIC(DT, P).
           03 :CCRA:_LST_UPD_CD    DIC(DT, P).
           03 :CCRA:_WRT_OFF_AMT   DIC(AMT_S, P).
           03 :CCRA:_WRT_ACC_MONTH DIC(TAMT_S, P).
           03 :CCRA:_WRT_ACC_TOTAL DIC(TAMT_S, P).
           03 :CCRA:_WRT_ACC_LSTMT_TOT DIC(TAMT_S, P).
           03 :CCRA:_REC_AMT       DIC(AMT_S, P).
           03 :CCRA:_REC_ACC_MONTH DIC(TAMT_S, P).
           03 :CCRA:_REC_ACC_TOT   DIC(TAMT_S, P).
           03 :CCRA:_REC_ACC_LSTMT_TOT DIC(TAMT_S, P).
           03 :CCRA:_CHK_STATUS    DIC(FLG).
           03 :CCRA:_CREATE_UNIT   DIC(BR, P).
           03 :CCRA:_CREATE_TLR    DIC(TLR_NO).
           03 :CCRA:_CREATE_DATE   DIC(DT, P).
           03 :CCRA:_CREATE_TIME   DIC(TM, P).
           03 :CCRA:_LAST_UPD_DATE DIC(DT, P).
           03 :CCRA:_LAST_UPD_TIME DIC(TM, P).
           03 :CCRA:_UPDTBL_DATE   DIC(DT, P).
           03 :CCRA:_TS            PIC X(26).
      *@*CHECKSUM 1105642969
       #IFNDEF TABLE_CITCDEM
       #DEFINE TABLE_CITCDEM
           EXEC SQL DECLARE CITCDEM TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             BIC_CODE                 CHAR(11) NOT NULL,
             INST_SECTOR              CHAR(3) NOT NULL,
             INDUSTRY_CN              CHAR(5) NOT NULL,
             INDUSTRY_LC              CHAR(5) NOT NULL,
             INDUSTRY_PB              CHAR(5) NOT NULL,
             INDUSTRY_OT              CHAR(5) NOT NULL,
             INDUSTRY_HKMA            CHAR(5) NOT NULL,
             INDUSTRY_GMJJ            CHAR(5) NOT NULL,
             INDUSTRY_EAST            CHAR(5) NOT NULL,
             FIN_GRP                  CHAR(5) NOT NULL,
             SASAC_TYP                CHAR(1) NOT NULL,
             BUSINESS_GRP             CHAR(5) NOT NULL,
             LISTED_PLACE             CHAR(5) NOT NULL,
             STOCK_CODE               CHAR(8) NOT NULL,
             LISTED_PLACE2            CHAR(5) NOT NULL,
             STOCK_CODE2              CHAR(8) NOT NULL,
             LISTED_PLACE3            CHAR(5) NOT NULL,
             STOCK_CODE3              CHAR(8) NOT NULL,
             LISTED_PLACE4            CHAR(5) NOT NULL,
             STOCK_CODE4              CHAR(8) NOT NULL,
             LISTED_PLACE5            CHAR(5) NOT NULL,
             STOCK_CODE5              CHAR(8) NOT NULL,
             SUB_LISTED               CHAR(5) NOT NULL,
             SUB_STOCK                CHAR(8) NOT NULL,
             SUB_NAME                 CHAR(140) NOT NULL,
             SEGMENT                  CHAR(5) NOT NULL,
             PRO_FIN_DATE             DEC(8, 0) NOT NULL,
             PB_IND                   CHAR(1) NOT NULL,
             PAY_PER_SIGN             CHAR(1) NOT NULL,
             SME_HK                   CHAR(1) NOT NULL,
             LINE_BUSI                CHAR(5) NOT NULL,
             CORP_TAX                 CHAR(15) NOT NULL,
             TAX_LIAB                 DEC(16, 2) NOT NULL,
             TAX_LIAB_REPAY           DEC(16, 2) NOT NULL,
             SUP_DORM                 CHAR(1) NOT NULL,
             CORP_SIZE                CHAR(1) NOT NULL,
             BOND_CODE                CHAR(20) NOT NULL,
             INST_ORG_TYP             CHAR(2) NOT NULL,
             MERCHANT_CAT             CHAR(4) NOT NULL,
             ASSOC_TYPE               CHAR(2) NOT NULL,
             LOC_FIN_FLG              CHAR(1) NOT NULL,
             CTS_FLG                  CHAR(1) NOT NULL,
             CTS_EXPDT                DEC(8, 0) NOT NULL,
             SUP_BUSS_FLG             CHAR(1) NOT NULL,
             NAME_OF_MEGA_COR         CHAR(5) NOT NULL,
             PERSON_NUM               DEC(6, 0) NOT NULL,
             SIGN_EXP_FLG             CHAR(1) NOT NULL,
             REL_LN_FLG               CHAR(1) NOT NULL,
             LOAN_CARD_NO             CHAR(19) NOT NULL,
             MONEY_LENDER             CHAR(1) NOT NULL,
             EPRLB                    CHAR(1) NOT NULL,
             LPRLB                    CHAR(1) NOT NULL,
             REG_CAP_CCY              CHAR(3) NOT NULL,
             REG_CAP_AMT              DEC(16, 2) NOT NULL,
             SCOPE_BUSS               CHAR(240) NOT NULL,
             SUP_LEGAL_UNIT_NM        CHAR(140) NOT NULL,
             SUP_DP_LIC_NO            CHAR(240) NOT NULL,
             SUP_REG_FIN_CD           CHAR(240) NOT NULL,
             PAID_UP_CAP              DEC(16, 2) NOT NULL,
             SHARE_ISSU_NUM           DEC(11, 0) NOT NULL,
             ISSU_SHARE_CCY           CHAR(3) NOT NULL,
             ISSU_SHARE_AMT           DEC(16, 2) NOT NULL,
             BEARER_SHARE_FLG         CHAR(1) NOT NULL,
             SH_COM_IND               CHAR(1) NOT NULL,
             LISTED_FLG               CHAR(1) NOT NULL,
             AI_TYPE                  CHAR(5) NOT NULL,
             MAIN_CNTY1               CHAR(4) NOT NULL,
             MAIN_CNTY2               CHAR(4) NOT NULL,
             MAIN_CNTY3               CHAR(4) NOT NULL,
             MAIN_CNTY4               CHAR(4) NOT NULL,
             MAIN_CNTY5               CHAR(4) NOT NULL,
             MAIN_CNTY6               CHAR(4) NOT NULL,
             MAIN_CNTY7               CHAR(4) NOT NULL,
             MAIN_CNTY8               CHAR(4) NOT NULL,
             MAIN_CNTY9               CHAR(4) NOT NULL,
             MAIN_CNTY10              CHAR(4) NOT NULL,
             MAIN_CNTY11              CHAR(4) NOT NULL,
             MAIN_CNTY12              CHAR(4) NOT NULL,
             MAIN_CNTY13              CHAR(4) NOT NULL,
             MAIN_CNTY14              CHAR(4) NOT NULL,
             MAIN_CNTY15              CHAR(4) NOT NULL,
             MAIN_CNTY16              CHAR(4) NOT NULL,
             MAIN_CNTY17              CHAR(4) NOT NULL,
             MAIN_CNTY18              CHAR(4) NOT NULL,
             MAIN_CNTY19              CHAR(4) NOT NULL,
             MAIN_CNTY20              CHAR(4) NOT NULL,
             BUSINESS_PROV            CHAR(6) NOT NULL,
             LST_COM_SRCH_DT          DEC(8, 0) NOT NULL,
             BEX                      CHAR(5) NOT NULL,
             BIC_ADR                  CHAR(11) NOT NULL,
             CITYPE_BASEL             CHAR(2) NOT NULL,
             CHNL_NO                  CHAR(4) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCDEM                            *
      ******************************************************************
       01  CIR:CDEM:.
           03 :CDEM:_KEY.
              05 :CDEM:_CI_NO      DIC(CI_NO).
           03 :CDEM:_BIC_CODE      DIC(BIC_NO).
           03 :CDEM:_INST_SECTOR   DIC(CIORG_CD).
           03 :CDEM:_INDUSTRY_CN   DIC(CIIND_CD).
           03 :CDEM:_INDUSTRY_LC   DIC(CIIND_CD).
           03 :CDEM:_INDUSTRY_PB   DIC(CIIND_CD).
           03 :CDEM:_INDUSTRY_OT   DIC(CIIND_CD).
           03 :CDEM:_INDUSTRY_HKMA DIC(CIIND_CD).
           03 :CDEM:_INDUSTRY_GMJJ DIC(CIIND_CD).
           03 :CDEM:_INDUSTRY_EAST DIC(CIIND_CD).
           03 :CDEM:_FIN_GRP       DIC(PTYP_CD).
           03 :CDEM:_SASAC_TYP     DIC(TYP).
           03 :CDEM:_BUSINESS_GRP  DIC(CIIND_CD).
           03 :CDEM:_LISTED_PLACE  DIC(FREE_CD5).
           03 :CDEM:_STOCK_CODE    DIC(STK_NO).
           03 :CDEM:_LISTED_PLACE2 DIC(FREE_CD5).
           03 :CDEM:_STOCK_CODE2   DIC(STK_NO).
           03 :CDEM:_LISTED_PLACE3 DIC(FREE_CD5).
           03 :CDEM:_STOCK_CODE3   DIC(STK_NO).
           03 :CDEM:_LISTED_PLACE4 DIC(FREE_CD5).
           03 :CDEM:_STOCK_CODE4   DIC(STK_NO).
           03 :CDEM:_LISTED_PLACE5 DIC(FREE_CD5).
           03 :CDEM:_STOCK_CODE5   DIC(STK_NO).
           03 :CDEM:_SUB_LISTED    DIC(FREE_CD5).
           03 :CDEM:_SUB_STOCK     DIC(STK_NO).
           03 :CDEM:_SUB_NAME      DIC(CI_CNM).
           03 :CDEM:_SEGMENT       DIC(FREE_CD5).
           03 :CDEM:_PRO_FIN_DATE  DIC(DT, P).
           03 :CDEM:_PB_IND        DIC(FLG).
           03 :CDEM:_PAY_PER_SIGN  DIC(FLG).
           03 :CDEM:_SME_HK        DIC(TYP).
           03 :CDEM:_LINE_BUSI     DIC(FREE_CD5).
           03 :CDEM:_CORP_TAX      DIC(TAX_NO).
           03 :CDEM:_TAX_LIAB      DIC(TAX, P).
           03 :CDEM:_TAX_LIAB_REPAY DIC(TAX, P).
           03 :CDEM:_SUP_DORM      DIC(FLG).
           03 :CDEM:_CORP_SIZE     DIC(TYP).
           03 :CDEM:_BOND_CODE     DIC(INS_NO).
           03 :CDEM:_INST_ORG_TYP  DIC(TYPE).
           03 :CDEM:_MERCHANT_CAT  DIC(BUSI_KND).
           03 :CDEM:_ASSOC_TYPE    DIC(TYPE).
           03 :CDEM:_LOC_FIN_FLG   DIC(FLG).
           03 :CDEM:_CTS_FLG       DIC(FLG).
           03 :CDEM:_CTS_EXPDT     DIC(DT, P).
           03 :CDEM:_SUP_BUSS_FLG  DIC(TYP).
           03 :CDEM:_NAME_OF_MEGA_COR DIC(FREE_CD5).
           03 :CDEM:_PERSON_NUM    DIC(NUM_6, P).
           03 :CDEM:_SIGN_EXP_FLG  DIC(FLG).
           03 :CDEM:_REL_LN_FLG    DIC(FLG).
           03 :CDEM:_LOAN_CARD_NO  DIC(CARD).
           03 :CDEM:_MONEY_LENDER  DIC(FLG).
           03 :CDEM:_EPRLB         DIC(FLG).
           03 :CDEM:_LPRLB         DIC(FLG).
           03 :CDEM:_REG_CAP_CCY   DIC(CCY).
           03 :CDEM:_REG_CAP_AMT   DIC(AMT, P).
           03 :CDEM:_SCOPE_BUSS    DIC(RMK_120).
           03 :CDEM:_SUP_LEGAL_UNIT_NM DIC(CI_CNM).
           03 :CDEM:_SUP_DP_LIC_NO DIC(RMK_120).
           03 :CDEM:_SUP_REG_FIN_CD DIC(RMK_120).
           03 :CDEM:_PAID_UP_CAP   DIC(AMT, P).
           03 :CDEM:_SHARE_ISSU_NUM DIC(N11, P).
           03 :CDEM:_ISSU_SHARE_CCY DIC(CCY).
           03 :CDEM:_ISSU_SHARE_AMT DIC(AMT, P).
           03 :CDEM:_BEARER_SHARE_FLG DIC(FLG).
           03 :CDEM:_SH_COM_IND    DIC(FLG).
           03 :CDEM:_LISTED_FLG    DIC(FLG).
           03 :CDEM:_AI_TYPE       DIC(FREE_CD5).
           03 :CDEM:_MAIN_CNTY1    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY2    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY3    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY4    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY5    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY6    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY7    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY8    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY9    DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY10   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY11   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY12   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY13   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY14   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY15   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY16   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY17   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY18   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY19   DIC(CNTYS_CD).
           03 :CDEM:_MAIN_CNTY20   DIC(CNTYS_CD).
           03 :CDEM:_BUSINESS_PROV DIC(PROV_CD).
           03 :CDEM:_LST_COM_SRCH_DT DIC(DT, P).
           03 :CDEM:_BEX           DIC(FREE_CD5).
           03 :CDEM:_BIC_ADR       DIC(BIC_NO).
           03 :CDEM:_CITYPE_BASEL  DIC(TYPE).
           03 :CDEM:_CHNL_NO       DIC(CHNL_NO).
           03 :CDEM:_CREATE_UNIT   DIC(BR, P).
           03 :CDEM:_CREATE_TLR    DIC(TLR_NO).
           03 :CDEM:_CREATE_DATE   DIC(DT, P).
           03 :CDEM:_CREATE_TIME   DIC(TM, P).
           03 :CDEM:_CHK_STATUS    DIC(FLG).
           03 :CDEM:_LAST_UPD_DATE DIC(DT, P).
           03 :CDEM:_UPDTBL_DATE   DIC(DT, P).
           03 :CDEM:_TS            PIC X(26).
      *@*CHECKSUM 1642917918
       #IFNDEF TABLE_CITCISTS
       #DEFINE TABLE_CITCISTS
           EXEC SQL DECLARE CITCISTS TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             STS_CODE                 CHAR(2) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_AUTH_UNIT         DEC(6, 0) NOT NULL,
             CREATE_AUTH_TLR          CHAR(8) NOT NULL,
             CREATE_DT                DEC(8, 0) NOT NULL,
             DELETE_UNIT              DEC(6, 0) NOT NULL,
             DELETE_TLR               CHAR(8) NOT NULL,
             DELETE_AUTH_UNIT         DEC(6, 0) NOT NULL,
             DELETE_AUTH_TLR          CHAR(8) NOT NULL,
             DELETE_DT                DEC(8, 0) NOT NULL,
             UPDATE_UNIT              DEC(6, 0) NOT NULL,
             UPDATE_TLR               CHAR(8) NOT NULL,
             UPDATE_AUTH_UNIT         DEC(6, 0) NOT NULL,
             UPDATE_AUTH_TLR          CHAR(8) NOT NULL,
             UPDATE_DT                DEC(8, 0) NOT NULL,
             REMARK_1                 CHAR(240) NOT NULL,
             REMARK_2                 CHAR(240) NOT NULL,
             SUP_TLR                  CHAR(8) NOT NULL,
             FIELD1                   CHAR(20) NOT NULL,
             FIELD2                   CHAR(20) NOT NULL,
             FIELD3                   CHAR(20) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCISTS                           *
      ******************************************************************
       01  CIR:CISTS:.
           03 :CISTS:_KEY.
              05 :CISTS:_CI_NO     DIC(CI_NO).
              05 :CISTS:_STS_CODE  DIC(STS_CD).
           03 :CISTS:_CREATE_UNIT  DIC(BR, P).
           03 :CISTS:_CREATE_TLR   DIC(TLR_NO).
           03 :CISTS:_CREATE_AUTH_UNIT DIC(BR, P).
           03 :CISTS:_CREATE_AUTH_TLR DIC(TLR_NO).
           03 :CISTS:_CREATE_DT    DIC(DT, P).
           03 :CISTS:_DELETE_UNIT  DIC(BR, P).
           03 :CISTS:_DELETE_TLR   DIC(TLR_NO).
           03 :CISTS:_DELETE_AUTH_UNIT DIC(BR, P).
           03 :CISTS:_DELETE_AUTH_TLR DIC(TLR_NO).
           03 :CISTS:_DELETE_DT    DIC(DT, P).
           03 :CISTS:_UPDATE_UNIT  DIC(BR, P).
           03 :CISTS:_UPDATE_TLR   DIC(TLR_NO).
           03 :CISTS:_UPDATE_AUTH_UNIT DIC(BR, P).
           03 :CISTS:_UPDATE_AUTH_TLR DIC(TLR_NO).
           03 :CISTS:_UPDATE_DT    DIC(DT, P).
           03 :CISTS:_REMARK_1     DIC(RMK_120).
           03 :CISTS:_REMARK_2     DIC(RMK_120).
           03 :CISTS:_SUP_TLR      DIC(TLR_NO).
           03 :CISTS:_FIELD1       DIC(DESC_20).
           03 :CISTS:_FIELD2       DIC(DESC_20).
           03 :CISTS:_FIELD3       DIC(DESC_20).
           03 :CISTS:_UPDTBL_DATE  DIC(DT, P).
           03 :CISTS:_TS           PIC X(26).
      *@*CHECKSUM 1264266822
       #IFNDEF TABLE_CITCNPT
       #DEFINE TABLE_CITCNPT
           EXEC SQL DECLARE CITCNPT TABLE
           (
             ID_TYPE1                 CHAR(5) NOT NULL,
             ID_NO1                   CHAR(30) NOT NULL,
             ID_TYPE2                 CHAR(5) NOT NULL,
             ID_NO2                   CHAR(30) NOT NULL,
             REL_ID_TYPE              CHAR(5) NOT NULL,
             REL_ID_NO                CHAR(30) NOT NULL,
             ENAME1                   CHAR(140) NOT NULL,
             CNAME1                   CHAR(140) NOT NULL,
             PNAME1                   CHAR(140) NOT NULL,
             ENAME2                   CHAR(140) NOT NULL,
             CNAME2                   CHAR(140) NOT NULL,
             PNAME2                   CHAR(140) NOT NULL,
             REL_ENAME                CHAR(140) NOT NULL,
             REL_CNAME                CHAR(140) NOT NULL,
             REL_PNAME                CHAR(140) NOT NULL,
             INCORP_PLACE1            CHAR(4) NOT NULL,
             REL_DSB1                 CHAR(5) NOT NULL,
             DIVISION1                CHAR(6) NOT NULL,
             INCORP_PLACE2            CHAR(4) NOT NULL,
             CNTL_POWER               CHAR(1) NOT NULL,
             RELATION                 CHAR(5) NOT NULL,
             ROLE_ENTRY2              CHAR(5) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCNPT                            *
      ******************************************************************
       01  CIR:CNPT:.
           03 :CNPT:_KEY.
              05 :CNPT:_ID_TYPE1   DIC(ID_TYP).
              05 :CNPT:_ID_NO1     DIC(ID_NO).
              05 :CNPT:_ID_TYPE2   DIC(ID_TYP).
              05 :CNPT:_ID_NO2     DIC(ID_NO).
           03 :CNPT:_REL_ID_TYPE   DIC(ID_TYP).
           03 :CNPT:_REL_ID_NO     DIC(ID_NO).
           03 :CNPT:_ENAME1        DIC(CI_ENM).
           03 :CNPT:_CNAME1        DIC(CI_CNM).
           03 :CNPT:_PNAME1        DIC(CI_ENM).
           03 :CNPT:_ENAME2        DIC(CI_ENM).
           03 :CNPT:_CNAME2        DIC(CI_CNM).
           03 :CNPT:_PNAME2        DIC(CI_ENM).
           03 :CNPT:_REL_ENAME     DIC(CI_ENM).
           03 :CNPT:_REL_CNAME     DIC(CI_CNM).
           03 :CNPT:_REL_PNAME     DIC(CI_ENM).
           03 :CNPT:_INCORP_PLACE1 DIC(CNTYS_CD).
           03 :CNPT:_REL_DSB1      DIC(FREE_CD5).
           03 :CNPT:_DIVISION1     DIC(X06).
           03 :CNPT:_INCORP_PLACE2 DIC(CNTYS_CD).
           03 :CNPT:_CNTL_POWER    DIC(TYP).
           03 :CNPT:_RELATION      DIC(FREE_CD5).
           03 :CNPT:_ROLE_ENTRY2   DIC(FREE_CD5).
           03 :CNPT:_CHK_STATUS    DIC(FLG).
           03 :CNPT:_CREATE_UNIT   DIC(BR, P).
           03 :CNPT:_CREATE_TLR    DIC(TLR_NO).
           03 :CNPT:_CREATE_DATE   DIC(DT, P).
           03 :CNPT:_CREATE_TIME   DIC(TM, P).
           03 :CNPT:_LAST_UPD_TLR  DIC(TLR_NO).
           03 :CNPT:_LAST_UPD_DATE DIC(DT, P).
           03 :CNPT:_UPDTBL_DATE   DIC(DT, P).
           03 :CNPT:_TS            PIC X(26).
      *@*CHECKSUM 1214762784
       #IFNDEF TABLE_CITCONP
       #DEFINE TABLE_CITCONP
           EXEC SQL DECLARE CITCONP TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             CONT_NO                  DEC(2, 0) NOT NULL,
             TYPE                     CHAR(5) NOT NULL,
             REBK_DIREC_IDTY          CHAR(5) NOT NULL,
             REBK_DIREC_IDNO          CHAR(30) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             REMARK                   CHAR(120) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCONP                            *
      ******************************************************************
       01  CIR:CONP:.
           03 :CONP:_KEY.
              05 :CONP:_CI_NO      DIC(CI_NO).
              05 :CONP:_CONT_NO    DIC(SEQ_2, P).
           03 :CONP:_TYPE          DIC(FREE_CD5).
           03 :CONP:_REBK_DIREC_IDTY DIC(ID_TYP).
           03 :CONP:_REBK_DIREC_IDNO DIC(ID_NO).
           03 :CONP:_EFF_DATE      DIC(DT, P).
           03 :CONP:_EXP_DATE      DIC(DT, P).
           03 :CONP:_REMARK        DIC(SMR).
           03 :CONP:_CREATE_UNIT   DIC(BR, P).
           03 :CONP:_CREATE_TLR    DIC(TLR_NO).
           03 :CONP:_CREATE_DATE   DIC(DT, P).
           03 :CONP:_CREATE_TIME   DIC(TM, P).
           03 :CONP:_CHK_STATUS    DIC(TYP).
           03 :CONP:_LAST_UPD_DATE DIC(DT, P).
           03 :CONP:_UPDTBL_DATE   DIC(DT, P).
           03 :CONP:_TS            PIC X(26).
      *@*CHECKSUM 1857698116
       #IFNDEF TABLE_CITCONT
       #DEFINE TABLE_CITCONT
           EXEC SQL DECLARE CITCONT TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             CONT_NO                  DEC(2, 0) NOT NULL,
             CONTYPE                  CHAR(1) NOT NULL,
             ENG_NAME                 CHAR(140) NOT NULL,
             LOCAL_NAME               CHAR(140) NOT NULL,
             MACAO_NAME               CHAR(140) NOT NULL,
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             OCCUP_CODE               CHAR(20) NOT NULL,
             NATION                   CHAR(4) NOT NULL,
             TEL_CNTY_NO              CHAR(6) NOT NULL,
             TEL_ARE_CODE             CHAR(10) NOT NULL,
             TEL_NO                   CHAR(18) NOT NULL,
             TEL_STATUS               CHAR(1) NOT NULL,
             TEL_USE                  CHAR(120) NOT NULL,
             TEL_RMK                  CHAR(120) NOT NULL,
             TEL_CNTY_NO2             CHAR(6) NOT NULL,
             TEL_ARE_CODE2            CHAR(10) NOT NULL,
             TEL_NO2                  CHAR(18) NOT NULL,
             TEL_STATUS2              CHAR(1) NOT NULL,
             TEL_USE2                 CHAR(120) NOT NULL,
             TEL_RMK2                 CHAR(120) NOT NULL,
             TEL_EXTEN_NO             CHAR(18) NOT NULL,
             MOB_CNTY_NO              CHAR(6) NOT NULL,
             MOB_ARE_CODE             CHAR(10) NOT NULL,
             MOB_NO                   CHAR(18) NOT NULL,
             MOB_STATUS               CHAR(1) NOT NULL,
             MOB_USE                  CHAR(120) NOT NULL,
             MOB_RMK                  CHAR(120) NOT NULL,
             MOB_CNTY_NO2             CHAR(6) NOT NULL,
             MOB_ARE_CODE2            CHAR(10) NOT NULL,
             MOB_NO2                  CHAR(18) NOT NULL,
             MOB_STATUS2              CHAR(1) NOT NULL,
             MOB_USE2                 CHAR(120) NOT NULL,
             MOB_RMK2                 CHAR(120) NOT NULL,
             MOB_CNTY_NO3             CHAR(6) NOT NULL,
             MOB_ARE_CODE3            CHAR(10) NOT NULL,
             MOB_NO3                  CHAR(18) NOT NULL,
             MOB_STATUS3              CHAR(1) NOT NULL,
             MOB_USE3                 CHAR(120) NOT NULL,
             MOB_RMK3                 CHAR(120) NOT NULL,
             FAX_CNTY_NO              CHAR(6) NOT NULL,
             FAX_ARE_CODE             CHAR(10) NOT NULL,
             FAX_NO                   CHAR(18) NOT NULL,
             FAX_STATUS               CHAR(1) NOT NULL,
             FAX_USE                  CHAR(120) NOT NULL,
             FAX_RMK                  CHAR(120) NOT NULL,
             PAGER_CNTY_NO            CHAR(6) NOT NULL,
             PAGER_ARE_CODE           CHAR(10) NOT NULL,
             PAGER_NO                 CHAR(18) NOT NULL,
             PAGER_STATUS             CHAR(1) NOT NULL,
             PAGER_USE                CHAR(120) NOT NULL,
             PAGER_RMK                CHAR(120) NOT NULL,
             PAGER_EXTEN_NO           CHAR(18) NOT NULL,
             TEMP_EMAIL               CHAR(50) NOT NULL,
             PERM_EMAIL               CHAR(50) NOT NULL,
             EMAIL                    CHAR(50) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             FACEBOOK                 CHAR(18) NOT NULL,
             QQ                       CHAR(18) NOT NULL,
             WECHAT                   CHAR(18) NOT NULL,
             WHATSAPP                 CHAR(18) NOT NULL,
             APP_DATE                 DEC(8, 0) NOT NULL,
             CHNL_NO                  CHAR(4) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       CHAR(26) NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCONT                            *
      ******************************************************************
       01  CIR:CONT:.
           03 :CONT:_KEY.
              05 :CONT:_CI_NO      DIC(CI_NO).
              05 :CONT:_CONT_NO    DIC(SEQ_2, P).
           03 :CONT:_CONTYPE       DIC(TYP).
           03 :CONT:_ENG_NAME      DIC(CI_ENM).
           03 :CONT:_LOCAL_NAME    DIC(CI_CNM).
           03 :CONT:_MACAO_NAME    DIC(CI_ENM).
           03 :CONT:_ID_TYPE       DIC(ID_TYP).
           03 :CONT:_ID_NO         DIC(ID_NO).
           03 :CONT:_OCCUP_CODE    DIC(X20).
           03 :CONT:_NATION        DIC(CNTYS_CD).
           03 :CONT:_TEL_CNTY_NO   DIC(ICNTY_NO).
           03 :CONT:_TEL_ARE_CODE  DIC(X10).
           03 :CONT:_TEL_NO        DIC(TEL_NO).
           03 :CONT:_TEL_STATUS    DIC(TYP).
           03 :CONT:_TEL_USE       DIC(RMK_60).
           03 :CONT:_TEL_RMK       DIC(RMK_60).
           03 :CONT:_TEL_CNTY_NO2  DIC(ICNTY_NO).
           03 :CONT:_TEL_ARE_CODE2 DIC(X10).
           03 :CONT:_TEL_NO2       DIC(TEL_NO).
           03 :CONT:_TEL_STATUS2   DIC(TYP).
           03 :CONT:_TEL_USE2      DIC(RMK_60).
           03 :CONT:_TEL_RMK2      DIC(RMK_60).
           03 :CONT:_TEL_EXTEN_NO  DIC(TEL_NO).
           03 :CONT:_MOB_CNTY_NO   DIC(ICNTY_NO).
           03 :CONT:_MOB_ARE_CODE  DIC(X10).
           03 :CONT:_MOB_NO        DIC(TEL_NO).
           03 :CONT:_MOB_STATUS    DIC(TYP).
           03 :CONT:_MOB_USE       DIC(RMK_60).
           03 :CONT:_MOB_RMK       DIC(RMK_60).
           03 :CONT:_MOB_CNTY_NO2  DIC(ICNTY_NO).
           03 :CONT:_MOB_ARE_CODE2 DIC(X10).
           03 :CONT:_MOB_NO2       DIC(TEL_NO).
           03 :CONT:_MOB_STATUS2   DIC(TYP).
           03 :CONT:_MOB_USE2      DIC(RMK_60).
           03 :CONT:_MOB_RMK2      DIC(RMK_60).
           03 :CONT:_MOB_CNTY_NO3  DIC(ICNTY_NO).
           03 :CONT:_MOB_ARE_CODE3 DIC(X10).
           03 :CONT:_MOB_NO3       DIC(TEL_NO).
           03 :CONT:_MOB_STATUS3   DIC(TYP).
           03 :CONT:_MOB_USE3      DIC(RMK_60).
           03 :CONT:_MOB_RMK3      DIC(RMK_60).
           03 :CONT:_FAX_CNTY_NO   DIC(ICNTY_NO).
           03 :CONT:_FAX_ARE_CODE  DIC(X10).
           03 :CONT:_FAX_NO        DIC(TEL_NO).
           03 :CONT:_FAX_STATUS    DIC(TYP).
           03 :CONT:_FAX_USE       DIC(RMK_60).
           03 :CONT:_FAX_RMK       DIC(RMK_60).
           03 :CONT:_PAGER_CNTY_NO DIC(ICNTY_NO).
           03 :CONT:_PAGER_ARE_CODE DIC(X10).
           03 :CONT:_PAGER_NO      DIC(TEL_NO).
           03 :CONT:_PAGER_STATUS  DIC(TYP).
           03 :CONT:_PAGER_USE     DIC(RMK_60).
           03 :CONT:_PAGER_RMK     DIC(RMK_60).
           03 :CONT:_PAGER_EXTEN_NO DIC(TEL_NO).
           03 :CONT:_TEMP_EMAIL    DIC(EMAIL).
           03 :CONT:_PERM_EMAIL    DIC(EMAIL).
           03 :CONT:_EMAIL         DIC(EMAIL).
           03 :CONT:_EFF_DATE      DIC(DT, P).
           03 :CONT:_EXP_DATE      DIC(DT, P).
           03 :CONT:_FACEBOOK      DIC(TEL_NO).
           03 :CONT:_QQ            DIC(TEL_NO).
           03 :CONT:_WECHAT        DIC(TEL_NO).
           03 :CONT:_WHATSAPP      DIC(TEL_NO).
           03 :CONT:_APP_DATE      DIC(DT, P).
           03 :CONT:_CHNL_NO       DIC(CHNL_NO).
           03 :CONT:_CREATE_UNIT   DIC(BR, P).
           03 :CONT:_CREATE_TLR    DIC(TLR_NO).
           03 :CONT:_CREATE_DATE   DIC(DT, P).
           03 :CONT:_CREATE_TIME   DIC(TM, P).
           03 :CONT:_CHK_STATUS    DIC(TYP).
           03 :CONT:_LAST_UPD_DATE DIC(DT, P).
           03 :CONT:_UPDTBL_DATE   DIC(DT, P).
           03 :CONT:_TS            DIC(TS).
      *@*CHECKSUM _884107166
       #IFNDEF TABLE_CITCRG
       #DEFINE TABLE_CITCRG
           EXEC SQL DECLARE CITCRG TABLE
           (
             ID                       CHAR(12) NOT NULL,
             MEMBER                   CHAR(12) NOT NULL,
             MEMBER_FLAG              CHAR(1) NOT NULL,
             TOP_GRP_ID               CHAR(12) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             UPDATE_DATE              DEC(8, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_WAY               CHAR(1) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCRG                             *
      ******************************************************************
       01  CIR:CRG:.
           03 :CRG:_KEY.
              05 :CRG:_ID          DIC(CI_NO).
              05 :CRG:_MEMBER      DIC(CI_NO).
           03 :CRG:_MEMBER_FLAG    DIC(OPT).
           03 :CRG:_TOP_GRP_ID     DIC(CI_NO).
           03 :CRG:_CREATE_UNIT    DIC(BR, P).
           03 :CRG:_CREATE_TLR     DIC(TLR_NO).
           03 :CRG:_CREATE_DATE    DIC(DT, P).
           03 :CRG:_CREATE_TIME    DIC(TM, P).
           03 :CRG:_UPDATE_DATE    DIC(DT, P).
           03 :CRG:_CHK_STATUS     DIC(OPT).
           03 :CRG:_CREATE_WAY     DIC(OPT).
           03 :CRG:_UPDTBL_DATE    DIC(DT, P).
           03 :CRG:_TS             PIC X(26).
      *@*CHECKSUM _1228743291
       #IFNDEF TABLE_CITCUS
       #DEFINE TABLE_CITCUS
           EXEC SQL DECLARE CITCUS TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             ID_ISSUE_LOC             CHAR(4) NOT NULL,
             ID_ISSUE_DATE            DEC(8, 0) NOT NULL,
             ID_EXP_DATE              DEC(8, 0) NOT NULL,
             ID_TYPE_2                CHAR(5) NOT NULL,
             ID_NO_2                  CHAR(30) NOT NULL,
             ID_ISSUE_LOC2            CHAR(4) NOT NULL,
             ID_ISSUE_DATE2           DEC(8, 0) NOT NULL,
             ID_EXP_DATE2             DEC(8, 0) NOT NULL,
             ID_TYPE_3                CHAR(5) NOT NULL,
             ID_NO_3                  CHAR(30) NOT NULL,
             ID_ISSUE_LOC3            CHAR(4) NOT NULL,
             ID_ISSUE_DATE3           DEC(8, 0) NOT NULL,
             ID_EXP_DATE3             DEC(8, 0) NOT NULL,
             ID_TYPE_4                CHAR(5) NOT NULL,
             ID_NO_4                  CHAR(30) NOT NULL,
             ID_ISSUE_LOC4            CHAR(4) NOT NULL,
             ID_ISSUE_DATE4           DEC(8, 0) NOT NULL,
             ID_EXP_DATE4             DEC(8, 0) NOT NULL,
             INDUSTRY_MAIN_CD         CHAR(5) NOT NULL,
             INDUSTRY_SECT_SUB        CHAR(5) NOT NULL,
             SOURCE_CODE              CHAR(7) NOT NULL,
             BR_NEXT_REW_DT           DEC(8, 0) NOT NULL,
             DUP_ID                   CHAR(1) NOT NULL,
             TRUSTEE_FLAG             CHAR(1) NOT NULL,
             JT_FLAG                  CHAR(1) NOT NULL,
             ENG_NAME                 CHAR(140) NOT NULL,
             CHN_NAME                 CHAR(140) NOT NULL,
             MACAO_NAME               CHAR(140) NOT NULL,
             EN_TRANS_FLAG            CHAR(1) NOT NULL,
             FRGN_NAME_IND            CHAR(1) NOT NULL,
             COMP_NAME                CHAR(140) NOT NULL,
             FRGN_NAME                CHAR(140) NOT NULL,
             ABBR_NAME                CHAR(30) NOT NULL,
             CNTY_CODE                CHAR(4) NOT NULL,
             CITY_CODE                CHAR(6) NOT NULL,
             SURNAME                  CHAR(10) NOT NULL,
             GIVEN_NAME               CHAR(40) NOT NULL,
             ALIAS                    CHAR(50) NOT NULL,
             CUST_TYPE                CHAR(1) NOT NULL,
             INTEL_TYPE               CHAR(2) NOT NULL,
             OIC_NO                   CHAR(10) NOT NULL,
             OIC_BR                   DEC(6, 0) NOT NULL,
             OIC_NO_NEW               CHAR(10) NOT NULL,
             OIC_BR_NEW               DEC(6, 0) NOT NULL,
             OIC_VAL_DATE             DEC(8, 0) NOT NULL,
             BOOK_BCH                 DEC(6, 0) NOT NULL,
             SOURCE                   CHAR(1) NOT NULL,
             REFERED                  CHAR(40) NOT NULL,
             RISK_DECLARA             CHAR(1) NOT NULL,
             RISK                     CHAR(1) NOT NULL,
             RISK_CHG_RESON           VARCHAR(240) NOT NULL,
             BLACK_FLAG               CHAR(1) NOT NULL,
             AML_FLAG                 CHAR(1) NOT NULL,
             PEP_FLAG                 CHAR(1) NOT NULL,
             RISK_CNTRY               CHAR(4) NOT NULL,
             CH_DIST_CODE             CHAR(6) NOT NULL,
             REG_CTY                  CHAR(4) NOT NULL,
             REG_DATE                 DEC(8, 0) NOT NULL,
             RESIDENCE                CHAR(4) NOT NULL,
             ORI_CTY                  CHAR(4) NOT NULL,
             LEGAL_STS                CHAR(2) NOT NULL,
             ROUT_CODE                CHAR(1) NOT NULL,
             ROUT_VALDATE             DEC(8, 0) NOT NULL,
             ROUT_ENDDATE             DEC(8, 0) NOT NULL,
             PRIVACY_IND              CHAR(1) NOT NULL,
             STATUS                   CHAR(80) NOT NULL,
             EMAIL_PSW                CHAR(6) NOT NULL,
             OPN_DATE                 DEC(8, 0) NOT NULL,
             CLS_DATE                 DEC(8, 0) NOT NULL,
             REOPN_DATE               DEC(8, 0) NOT NULL,
             REMARK                   VARCHAR(400) NOT NULL,
             OS_FLG                   CHAR(1) NOT NULL,
             SAVEING_FLG              CHAR(1) NOT NULL,
             USA_CITIZEN              CHAR(1) NOT NULL,
             INVEST_MIG               CHAR(1) NOT NULL,
             CIF_TYPE                 CHAR(1) NOT NULL,
             NON_BANK_CI_FLG          CHAR(1) NOT NULL,
             CRS_BOR_LINK_FLG         CHAR(1) NOT NULL,
             CUS_VALUE                CHAR(1) NOT NULL,
             SPEC_ZONE                CHAR(1) NOT NULL,
             FTZ_CODE                 CHAR(2) NOT NULL,
             FTZ_FLG                  CHAR(1) NOT NULL,
             RISK_EXP                 CHAR(5) NOT NULL,
             INV_RISK_FLG             CHAR(5) NOT NULL,
             INV_VAL_DATE             DEC(8, 0) NOT NULL,
             INV_EXP_DATE             DEC(8, 0) NOT NULL,
             LPI_FLG                  CHAR(1) NOT NULL,
             PROM_FLAG                CHAR(1) NOT NULL,
             PBP_IND                  CHAR(1) NOT NULL,
             THD_PT_PR_IND            CHAR(1) NOT NULL,
             DIRECT_MAIL_DP           CHAR(1) NOT NULL,
             DIRECT_MAIL_LN           CHAR(1) NOT NULL,
             DIRECT_MAIL_INS          CHAR(1) NOT NULL,
             DIRECT_MAIL_INV          CHAR(1) NOT NULL,
             DIRECT_MAIL_CARD         CHAR(1) NOT NULL,
             SMS_DP                   CHAR(1) NOT NULL,
             SMS_LN                   CHAR(1) NOT NULL,
             SMS_INS                  CHAR(1) NOT NULL,
             SMS_INV                  CHAR(1) NOT NULL,
             SMS_CARD                 CHAR(1) NOT NULL,
             EMAIL_DP                 CHAR(1) NOT NULL,
             EMAIL_LN                 CHAR(1) NOT NULL,
             EMAIL_INS                CHAR(1) NOT NULL,
             EMAIL_INV                CHAR(1) NOT NULL,
             EMAIL_CARD               CHAR(1) NOT NULL,
             FAX_DP                   CHAR(1) NOT NULL,
             FAX_LN                   CHAR(1) NOT NULL,
             FAX_INS                  CHAR(1) NOT NULL,
             FAX_INV                  CHAR(1) NOT NULL,
             FAX_CARD                 CHAR(1) NOT NULL,
             TEL_DP                   CHAR(1) NOT NULL,
             TEL_LN                   CHAR(1) NOT NULL,
             TEL_INS                  CHAR(1) NOT NULL,
             TEL_INV                  CHAR(1) NOT NULL,
             TEL_CARD                 CHAR(1) NOT NULL,
             IN_REMIT_SERV            CHAR(1) NOT NULL,
             OUT_REMIT_SERV           CHAR(1) NOT NULL,
             SMS_SIGN_FLG             CHAR(1) NOT NULL,
             SMS_NUM                  CHAR(18) NOT NULL,
             REC_DY_SMS_FLG           CHAR(1) NOT NULL,
             AML_REF_NO               CHAR(16) NOT NULL,
             CI_LAST_UP_DT            DEC(8, 0) NOT NULL,
             DEF_FLD1                 CHAR(25) NOT NULL,
             DEF_FLD2                 CHAR(25) NOT NULL,
             DEF_FLD3                 CHAR(25) NOT NULL,
             DEF_FLD4                 CHAR(25) NOT NULL,
             DEF_FLD5                 CHAR(25) NOT NULL,
             DEF_FLD6                 CHAR(25) NOT NULL,
             DEF_FLD7                 CHAR(25) NOT NULL,
             DEF_FLD8                 CHAR(25) NOT NULL,
             DEF_FLD9                 CHAR(25) NOT NULL,
             DEF_FLD10                CHAR(25) NOT NULL,
             CNPTY_CLS                CHAR(10) NOT NULL,
             PI_EXPDT                 DEC(8, 0) NOT NULL,
             TRU_CLIENT               CHAR(1) NOT NULL,
             LEI                      CHAR(25) NOT NULL,
             GIIN                     CHAR(25) NOT NULL,
             HKTR_MEMBER_CD           CHAR(25) NOT NULL,
             DS_MATCH_CD              CHAR(25) NOT NULL,
             KN_SHORT_NM              CHAR(10) NOT NULL,
             MARKIT                   CHAR(25) NOT NULL,
             RMA_FLG                  CHAR(1) NOT NULL,
             REL_SRT_DT               DEC(8, 0) NOT NULL,
             DELETE_IND               CHAR(1) NOT NULL,
             MTC_ACCEPT               CHAR(1) NOT NULL,
             MTC_VE                   CHAR(10) NOT NULL,
             MTC_DT                   DEC(8, 0) NOT NULL,
             CONS_FLG                 CHAR(1) NOT NULL,
             CONS_DT                  DEC(8, 0) NOT NULL,
             STMT_SA_CYL_DT           DEC(2, 0) NOT NULL,
             FACE_TO_FACE             CHAR(1) NOT NULL,
             FX_TIER                  CHAR(1) NOT NULL,
             NBCETC                   CHAR(5) NOT NULL,
             LARGE_EXP1               CHAR(20) NOT NULL,
             LARGE_EXP2               CHAR(20) NOT NULL,
             LARGE_EXP3               CHAR(20) NOT NULL,
             AUTH_BY1                 CHAR(8) NOT NULL,
             AUTH_BY2                 CHAR(8) NOT NULL,
             CHNL_NO                  CHAR(4) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_UNIT            DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UNCFM_CAT                CHAR(60) NOT NULL,
             OPN_INF                  CHAR(20) NOT NULL,
             CREATE_WAY               CHAR(1) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITCUS                             *
      ******************************************************************
       01  CIR:CUS:.
           03 :CUS:_KEY.
              05 :CUS:_CI_NO       DIC(CI_NO).
           03 :CUS:_ID_TYPE        DIC(ID_TYP).
           03 :CUS:_ID_NO          DIC(ID_NO).
           03 :CUS:_ID_ISSUE_LOC   DIC(CNTYS_CD).
           03 :CUS:_ID_ISSUE_DATE  DIC(DT, P).
           03 :CUS:_ID_EXP_DATE    DIC(DT, P).
           03 :CUS:_ID_TYPE_2      DIC(ID_TYP).
           03 :CUS:_ID_NO_2        DIC(ID_NO).
           03 :CUS:_ID_ISSUE_LOC2  DIC(CNTYS_CD).
           03 :CUS:_ID_ISSUE_DATE2 DIC(DT, P).
           03 :CUS:_ID_EXP_DATE2   DIC(DT, P).
           03 :CUS:_ID_TYPE_3      DIC(ID_TYP).
           03 :CUS:_ID_NO_3        DIC(ID_NO).
           03 :CUS:_ID_ISSUE_LOC3  DIC(CNTYS_CD).
           03 :CUS:_ID_ISSUE_DATE3 DIC(DT, P).
           03 :CUS:_ID_EXP_DATE3   DIC(DT, P).
           03 :CUS:_ID_TYPE_4      DIC(ID_TYP).
           03 :CUS:_ID_NO_4        DIC(ID_NO).
           03 :CUS:_ID_ISSUE_LOC4  DIC(CNTYS_CD).
           03 :CUS:_ID_ISSUE_DATE4 DIC(DT, P).
           03 :CUS:_ID_EXP_DATE4   DIC(DT, P).
           03 :CUS:_INDUSTRY_MAIN_CD DIC(CIIND_CD).
           03 :CUS:_INDUSTRY_SECT_SUB DIC(CIIND_CD).
           03 :CUS:_SOURCE_CODE    DIC(X07).
           03 :CUS:_BR_NEXT_REW_DT DIC(DT, P).
           03 :CUS:_DUP_ID         DIC(FLG).
           03 :CUS:_TRUSTEE_FLAG   DIC(FLG).
           03 :CUS:_JT_FLAG        DIC(FLG).
           03 :CUS:_ENG_NAME       DIC(CI_ENM).
           03 :CUS:_CHN_NAME       DIC(CI_CNM).
           03 :CUS:_MACAO_NAME     DIC(CI_ENM).
           03 :CUS:_EN_TRANS_FLAG  DIC(FLG).
           03 :CUS:_FRGN_NAME_IND  DIC(FLG).
           03 :CUS:_COMP_NAME      DIC(CI_ENM).
           03 :CUS:_FRGN_NAME      DIC(CI_ENM).
           03 :CUS:_ABBR_NAME      DIC(CI_ENMS).
           03 :CUS:_CNTY_CODE      DIC(CNTYS_CD).
           03 :CUS:_CITY_CODE      DIC(CITY_CD).
           03 :CUS:_SURNAME        DIC(CISU_ENM).
           03 :CUS:_GIVEN_NAME     DIC(CIG_ENM).
           03 :CUS:_ALIAS          DIC(CI_ALIAS).
           03 :CUS:_CUST_TYPE      DIC(TYP).
           03 :CUS:_INTEL_TYPE     DIC(TYPE).
           03 :CUS:_OIC_NO         DIC(OIC_NO).
           03 :CUS:_OIC_BR         DIC(BR, P).
           03 :CUS:_OIC_NO_NEW     DIC(OIC_NO).
           03 :CUS:_OIC_BR_NEW     DIC(BR, P).
           03 :CUS:_OIC_VAL_DATE   DIC(DT, P).
           03 :CUS:_BOOK_BCH       DIC(BR, P).
           03 :CUS:_SOURCE         DIC(TYP).
           03 :CUS:_REFERED        DIC(RMK_20).
           03 :CUS:_RISK_DECLARA   DIC(TYP).
           03 :CUS:_RISK           DIC(TYP).
           03 :CUS:_RISK_CHG_RESON.
              49 :CUS:_RISK_CHG_RESON_LEN PIC S9(4) COMP.
              49 :CUS:_RISK_CHG_RESON_TEXT DIC(RMK_120).
           03 :CUS:_BLACK_FLAG     DIC(TYP).
           03 :CUS:_AML_FLAG       DIC(TYP).
           03 :CUS:_PEP_FLAG       DIC(TYP).
           03 :CUS:_RISK_CNTRY     DIC(CNTYS_CD).
           03 :CUS:_CH_DIST_CODE   DIC(CITY_CD).
           03 :CUS:_REG_CTY        DIC(CNTYS_CD).
           03 :CUS:_REG_DATE       DIC(DT, P).
           03 :CUS:_RESIDENCE      DIC(CNTYS_CD).
           03 :CUS:_ORI_CTY        DIC(CNTYS_CD).
           03 :CUS:_LEGAL_STS      DIC(TYPE).
           03 :CUS:_ROUT_CODE      DIC(OPT).
           03 :CUS:_ROUT_VALDATE   DIC(DT, P).
           03 :CUS:_ROUT_ENDDATE   DIC(DT, P).
           03 :CUS:_PRIVACY_IND    DIC(FLG).
           03 :CUS:_STATUS         DIC(CI_STSW).
           03 :CUS:_EMAIL_PSW      DIC(POST_CD).
           03 :CUS:_OPN_DATE       DIC(DT, P).
           03 :CUS:_CLS_DATE       DIC(DT, P).
           03 :CUS:_REOPN_DATE     DIC(DT, P).
           03 :CUS:_REMARK.
              49 :CUS:_REMARK_LEN  PIC S9(4) COMP.
              49 :CUS:_REMARK_TEXT DIC(RMK_200).
           03 :CUS:_OS_FLG         DIC(FLG).
           03 :CUS:_SAVEING_FLG    DIC(FLG).
           03 :CUS:_USA_CITIZEN    DIC(FLG).
           03 :CUS:_INVEST_MIG     DIC(FLG).
           03 :CUS:_CIF_TYPE       DIC(TYP).
           03 :CUS:_NON_BANK_CI_FLG DIC(FLG).
           03 :CUS:_CRS_BOR_LINK_FLG DIC(FLG).
           03 :CUS:_CUS_VALUE      DIC(FLG).
           03 :CUS:_SPEC_ZONE      DIC(OPT).
           03 :CUS:_FTZ_CODE       DIC(FTZ_CD).
           03 :CUS:_FTZ_FLG        DIC(FLG).
           03 :CUS:_RISK_EXP       DIC(FREE_CD5).
           03 :CUS:_INV_RISK_FLG   DIC(FREE_CD5).
           03 :CUS:_INV_VAL_DATE   DIC(DT, P).
           03 :CUS:_INV_EXP_DATE   DIC(DT, P).
           03 :CUS:_LPI_FLG        DIC(FLG).
           03 :CUS:_PROM_FLAG      DIC(FLG).
           03 :CUS:_PBP_IND        DIC(FLG).
           03 :CUS:_THD_PT_PR_IND  DIC(FLG).
           03 :CUS:_DIRECT_MAIL_DP DIC(FLG).
           03 :CUS:_DIRECT_MAIL_LN DIC(FLG).
           03 :CUS:_DIRECT_MAIL_INS DIC(FLG).
           03 :CUS:_DIRECT_MAIL_INV DIC(FLG).
           03 :CUS:_DIRECT_MAIL_CARD DIC(FLG).
           03 :CUS:_SMS_DP         DIC(FLG).
           03 :CUS:_SMS_LN         DIC(FLG).
           03 :CUS:_SMS_INS        DIC(FLG).
           03 :CUS:_SMS_INV        DIC(FLG).
           03 :CUS:_SMS_CARD       DIC(FLG).
           03 :CUS:_EMAIL_DP       DIC(FLG).
           03 :CUS:_EMAIL_LN       DIC(FLG).
           03 :CUS:_EMAIL_INS      DIC(FLG).
           03 :CUS:_EMAIL_INV      DIC(FLG).
           03 :CUS:_EMAIL_CARD     DIC(FLG).
           03 :CUS:_FAX_DP         DIC(FLG).
           03 :CUS:_FAX_LN         DIC(FLG).
           03 :CUS:_FAX_INS        DIC(FLG).
           03 :CUS:_FAX_INV        DIC(FLG).
           03 :CUS:_FAX_CARD       DIC(FLG).
           03 :CUS:_TEL_DP         DIC(FLG).
           03 :CUS:_TEL_LN         DIC(FLG).
           03 :CUS:_TEL_INS        DIC(FLG).
           03 :CUS:_TEL_INV        DIC(FLG).
           03 :CUS:_TEL_CARD       DIC(FLG).
           03 :CUS:_IN_REMIT_SERV  DIC(FLG).
           03 :CUS:_OUT_REMIT_SERV DIC(FLG).
           03 :CUS:_SMS_SIGN_FLG   DIC(FLG).
           03 :CUS:_SMS_NUM        DIC(TEL_NO).
           03 :CUS:_REC_DY_SMS_FLG DIC(FLG).
           03 :CUS:_AML_REF_NO     DIC(REF_NO).
           03 :CUS:_CI_LAST_UP_DT  DIC(DT, P).
           03 :CUS:_DEF_FLD1       DIC(STAT_CD).
           03 :CUS:_DEF_FLD2       DIC(STAT_CD).
           03 :CUS:_DEF_FLD3       DIC(STAT_CD).
           03 :CUS:_DEF_FLD4       DIC(STAT_CD).
           03 :CUS:_DEF_FLD5       DIC(STAT_CD).
           03 :CUS:_DEF_FLD6       DIC(STAT_CD).
           03 :CUS:_DEF_FLD7       DIC(STAT_CD).
           03 :CUS:_DEF_FLD8       DIC(STAT_CD).
           03 :CUS:_DEF_FLD9       DIC(STAT_CD).
           03 :CUS:_DEF_FLD10      DIC(STAT_CD).
           03 :CUS:_CNPTY_CLS      DIC(X10).
           03 :CUS:_PI_EXPDT       DIC(DT, P).
           03 :CUS:_TRU_CLIENT     DIC(TYP).
           03 :CUS:_LEI            DIC(LEI).
           03 :CUS:_GIIN           DIC(AC).
           03 :CUS:_HKTR_MEMBER_CD DIC(HK_M_CD).
           03 :CUS:_DS_MATCH_CD    DIC(DS_MT_CD).
           03 :CUS:_KN_SHORT_NM    DIC(KN_ST_NM).
           03 :CUS:_MARKIT         DIC(MARKIT).
           03 :CUS:_RMA_FLG        DIC(FLG).
           03 :CUS:_REL_SRT_DT     DIC(DT, P).
           03 :CUS:_DELETE_IND     DIC(FLG).
           03 :CUS:_MTC_ACCEPT     DIC(FLG).
           03 :CUS:_MTC_VE         DIC(X10).
           03 :CUS:_MTC_DT         DIC(DT, P).
           03 :CUS:_CONS_FLG       DIC(FLG).
           03 :CUS:_CONS_DT        DIC(DT, P).
           03 :CUS:_STMT_SA_CYL_DT DIC(NUM_2, P).
           03 :CUS:_FACE_TO_FACE   DIC(TYP).
           03 :CUS:_FX_TIER        DIC(TYP).
           03 :CUS:_NBCETC         DIC(FREE_CD5).
           03 :CUS:_LARGE_EXP1     DIC(X20).
           03 :CUS:_LARGE_EXP2     DIC(X20).
           03 :CUS:_LARGE_EXP3     DIC(X20).
           03 :CUS:_AUTH_BY1       DIC(TLR_NO).
           03 :CUS:_AUTH_BY2       DIC(TLR_NO).
           03 :CUS:_CHNL_NO        DIC(CHNL_NO).
           03 :CUS:_CREATE_UNIT    DIC(BR, P).
           03 :CUS:_CREATE_TLR     DIC(TLR_NO).
           03 :CUS:_CREATE_DATE    DIC(DT, P).
           03 :CUS:_CREATE_TIME    DIC(TM, P).
           03 :CUS:_LAST_UPD_UNIT  DIC(BR, P).
           03 :CUS:_LAST_UPD_TLR   DIC(TLR_NO).
           03 :CUS:_LAST_UPD_DATE  DIC(DT, P).
           03 :CUS:_LAST_UPD_TIME  DIC(TM, P).
           03 :CUS:_UNCFM_CAT      DIC(DESC_30).
           03 :CUS:_OPN_INF        DIC(DESC_20).
           03 :CUS:_CREATE_WAY     DIC(OPT).
           03 :CUS:_UPDTBL_DATE    DIC(DT, P).
           03 :CUS:_TS             PIC X(26).
      *@*CHECKSUM _1287926765
       #IFNDEF TABLE_CITDCNTP
       #DEFINE TABLE_CITDCNTP
           EXEC SQL DECLARE CITDCNTP TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             SEQNO                    DEC(4, 0) NOT NULL,
             ID_TYP                   CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             OFFIC_TITLE              CHAR(30) NOT NULL,
             CONT_NAME                CHAR(140) NOT NULL,
             DATE_BIRTH               DEC(8, 0) NOT NULL,
             SUB_CHANEL               CHAR(1) NOT NULL,
             DOC_DATE1                DEC(8, 0) NOT NULL,
             EFF_DATE1                DEC(8, 0) NOT NULL,
             CNTY_CODE1               CHAR(6) NOT NULL,
             AREA_CODE1               CHAR(10) NOT NULL,
             CONT_NO1                 CHAR(30) NOT NULL,
             DOC_DATE2                DEC(8, 0) NOT NULL,
             EFF_DATE2                DEC(8, 0) NOT NULL,
             CNTY_CODE2               CHAR(6) NOT NULL,
             AREA_CODE2               CHAR(10) NOT NULL,
             CONT_NO2                 CHAR(30) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_UNIT            DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITDCNTP                           *
      ******************************************************************
       01  CIR:DCNTP:.
           03 :DCNTP:_KEY.
              05 :DCNTP:_CI_NO     DIC(CI_NO).
              05 :DCNTP:_SEQNO     DIC(SEQ_4, P).
           03 :DCNTP:_ID_TYP       DIC(ID_TYP).
           03 :DCNTP:_ID_NO        DIC(ID_NO).
           03 :DCNTP:_OFFIC_TITLE  DIC(DESCE_30).
           03 :DCNTP:_CONT_NAME    DIC(CI_ENM).
           03 :DCNTP:_DATE_BIRTH   DIC(DT, P).
           03 :DCNTP:_SUB_CHANEL   DIC(TYP).
           03 :DCNTP:_DOC_DATE1    DIC(DT, P).
           03 :DCNTP:_EFF_DATE1    DIC(DT, P).
           03 :DCNTP:_CNTY_CODE1   DIC(ICNTY_NO).
           03 :DCNTP:_AREA_CODE1   DIC(X10).
           03 :DCNTP:_CONT_NO1     DIC(TEL_30).
           03 :DCNTP:_DOC_DATE2    DIC(DT, P).
           03 :DCNTP:_EFF_DATE2    DIC(DT, P).
           03 :DCNTP:_CNTY_CODE2   DIC(ICNTY_NO).
           03 :DCNTP:_AREA_CODE2   DIC(X10).
           03 :DCNTP:_CONT_NO2     DIC(TEL_30).
           03 :DCNTP:_CHK_STATUS   DIC(FLG).
           03 :DCNTP:_CREATE_UNIT  DIC(BR, P).
           03 :DCNTP:_CREATE_TLR   DIC(TLR_NO).
           03 :DCNTP:_CREATE_DATE  DIC(DT, P).
           03 :DCNTP:_CREATE_TIME  DIC(TM, P).
           03 :DCNTP:_LAST_UPD_UNIT DIC(BR, P).
           03 :DCNTP:_LAST_UPD_TLR DIC(TLR_NO).
           03 :DCNTP:_LAST_UPD_DATE DIC(DT, P).
           03 :DCNTP:_LAST_UPD_TIME DIC(TM, P).
           03 :DCNTP:_UPDTBL_DATE  DIC(DT, P).
           03 :DCNTP:_TS           PIC X(26).
      *@*CHECKSUM 1943764852
       #IFNDEF TABLE_CITEARW
       #DEFINE TABLE_CITEARW
           EXEC SQL DECLARE CITEARW TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             EFF_DT                   DEC(8, 0) NOT NULL,
             REASON                   CHAR(100) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITEARW                            *
      ******************************************************************
       01  CIR:EARW:.
           03 :EARW:_KEY.
              05 :EARW:_CI_NO      DIC(CI_NO).
           03 :EARW:_EFF_DT        DIC(DT, P).
           03 :EARW:_REASON        DIC(DESC_50).
           03 :EARW:_CHK_STATUS    DIC(FLG).
           03 :EARW:_CREATE_UNIT   DIC(BR, P).
           03 :EARW:_CREATE_TLR    DIC(TLR_NO).
           03 :EARW:_CREATE_DATE   DIC(DT, P).
           03 :EARW:_CREATE_TIME   DIC(TM, P).
           03 :EARW:_LAST_UPD_TLR  DIC(TLR_NO).
           03 :EARW:_LAST_UPD_DATE DIC(DT, P).
           03 :EARW:_LAST_UPD_TIME DIC(TM, P).
           03 :EARW:_UPDTBL_DATE   DIC(DT, P).
           03 :EARW:_TS            PIC X(26).
      *@*CHECKSUM 314667913
       #IFNDEF TABLE_CITELERT
       #DEFINE TABLE_CITELERT
           EXEC SQL DECLARE CITELERT TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             SERVICE                  CHAR(4) NOT NULL,
             TYPE                     CHAR(6) NOT NULL,
             OPT_IN_FLG               CHAR(1) NOT NULL,
             SMS_NUMTLR               CHAR(18) NOT NULL,
             CHANNEL                  CHAR(2) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITELERT                           *
      ******************************************************************
       01  CIR:ELERT:.
           03 :ELERT:_KEY.
              05 :ELERT:_CI_NO     DIC(CI_NO).
              05 :ELERT:_SERVICE   DIC(X04).
              05 :ELERT:_TYPE      DIC(X06).
           03 :ELERT:_OPT_IN_FLG   DIC(FLG).
           03 :ELERT:_SMS_NUMTLR   DIC(TEL_NO).
           03 :ELERT:_CHANNEL      DIC(TYPE).
           03 :ELERT:_LAST_UPD_DATE DIC(DT, P).
           03 :ELERT:_LAST_UPD_TIME DIC(TM, P).
           03 :ELERT:_UPDTBL_DATE  DIC(DT, P).
           03 :ELERT:_TS           PIC X(26).
      *@*CHECKSUM 1313908292
       #IFNDEF TABLE_CITEXAD
       #DEFINE TABLE_CITEXAD
           EXEC SQL DECLARE CITEXAD TABLE
           (
             TRN_DT                   DEC(8, 0) NOT NULL,
             TYPE                     CHAR(1) NOT NULL,
             CARD_NO                  CHAR(25) NOT NULL,
             CARD_CUST_ORG            DEC(3, 0) NOT NULL,
             CARD_CUST_NO             DEC(16, 0) NOT NULL,
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             REJECT_REASON            CHAR(1) NOT NULL,
             ADDR_TYPE                CHAR(1) NOT NULL,
             ADDR_LINE1               CHAR(30) NOT NULL,
             ADDR_LINE2               CHAR(30) NOT NULL,
             ADDR_LINE3               CHAR(30) NOT NULL,
             ADDR_LINE4               CHAR(30) NOT NULL,
             LST_TRN_DT               DEC(8, 0) NOT NULL,
             LST_TRN_TM               DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_BR              DEC(6, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITEXAD                            *
      ******************************************************************
       01  CIR:EXAD:.
           03 :EXAD:_KEY.
              05 :EXAD:_TRN_DT     DIC(DT, P).
              05 :EXAD:_TYPE       DIC(TYP).
              05 :EXAD:_CARD_NO    DIC(AC).
           03 :EXAD:_CARD_CUST_ORG DIC(N03, P).
           03 :EXAD:_CARD_CUST_NO  DIC(N16, P).
           03 :EXAD:_ID_TYPE       DIC(ID_TYP).
           03 :EXAD:_ID_NO         DIC(ID_NO).
           03 :EXAD:_REJECT_REASON DIC(TYP).
           03 :EXAD:_ADDR_TYPE     DIC(TYP).
           03 :EXAD:_ADDR_LINE1    DIC(CMP_ADDR).
           03 :EXAD:_ADDR_LINE2    DIC(CMP_ADDR).
           03 :EXAD:_ADDR_LINE3    DIC(CMP_ADDR).
           03 :EXAD:_ADDR_LINE4    DIC(CMP_ADDR).
           03 :EXAD:_LST_TRN_DT    DIC(DT, P).
           03 :EXAD:_LST_TRN_TM    DIC(TM, P).
           03 :EXAD:_LAST_UPD_TLR  DIC(TLR_NO).
           03 :EXAD:_LAST_UPD_BR   DIC(BR, P).
           03 :EXAD:_TS            PIC X(26).
      *@*CHECKSUM 1121711477
       #IFNDEF TABLE_CITEXRE
       #DEFINE TABLE_CITEXRE
           EXEC SQL DECLARE CITEXRE TABLE
           (
             TRN_FUNC                 CHAR(1) NOT NULL,
             EX_FLG                   CHAR(2) NOT NULL,
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             TEL_NO                   CHAR(18) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             BANK_CUST                CHAR(1) NOT NULL,
             OLD_IND                  CHAR(1) NOT NULL,
             NEW_IND                  CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITEXRE                            *
      ******************************************************************
       01  CIR:EXRE:.
           03 :EXRE:_KEY.
              05 :EXRE:_TRN_FUNC   DIC(TYP).
              05 :EXRE:_EX_FLG     DIC(CI_SIGN).
              05 :EXRE:_ID_TYPE    DIC(ID_TYP).
              05 :EXRE:_ID_NO      DIC(ID_NO).
              05 :EXRE:_TEL_NO     DIC(TEL_NO).
              05 :EXRE:_CREATE_DATE DIC(DT, P).
           03 :EXRE:_BANK_CUST     DIC(TYP).
           03 :EXRE:_OLD_IND       DIC(TYP).
           03 :EXRE:_NEW_IND       DIC(TYP).
           03 :EXRE:_CREATE_UNIT   DIC(BR, P).
           03 :EXRE:_CREATE_TIME   DIC(TM, P).
           03 :EXRE:_LAST_UPD_DATE DIC(DT, P).
           03 :EXRE:_LAST_UPD_TLR  DIC(TLR_NO).
           03 :EXRE:_TS            PIC X(26).
      *@*CHECKSUM 1496331246
       #IFNDEF TABLE_CITEXSE
       #DEFINE TABLE_CITEXSE
           EXEC SQL DECLARE CITEXSE TABLE
           (
             TITLE                    CHAR(1) NOT NULL,
             EX_FLG                   CHAR(2) NOT NULL,
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             TEL_NO                   CHAR(18) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             TOTAL_UPLOAD_NO          DEC(6, 0) NOT NULL,
             TOTAL_UPDATE_NO          DEC(6, 0) NOT NULL,
             TOTAL_EXP_NO             DEC(6, 0) NOT NULL,
             REASON                   CHAR(60) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITEXSE                            *
      ******************************************************************
       01  CIR:EXSE:.
           03 :EXSE:_KEY.
              05 :EXSE:_TITLE      DIC(TYP).
              05 :EXSE:_EX_FLG     DIC(CI_SIGN).
              05 :EXSE:_ID_TYPE    DIC(ID_TYP).
              05 :EXSE:_ID_NO      DIC(ID_NO).
              05 :EXSE:_TEL_NO     DIC(TEL_NO).
              05 :EXSE:_CREATE_DATE DIC(DT, P).
           03 :EXSE:_TOTAL_UPLOAD_NO DIC(NUM_6, P).
           03 :EXSE:_TOTAL_UPDATE_NO DIC(NUM_6, P).
           03 :EXSE:_TOTAL_EXP_NO  DIC(NUM_6, P).
           03 :EXSE:_REASON        DIC(DESCE_60).
           03 :EXSE:_CREATE_UNIT   DIC(BR, P).
           03 :EXSE:_CREATE_TIME   DIC(TM, P).
           03 :EXSE:_LAST_UPD_DATE DIC(DT, P).
           03 :EXSE:_LAST_UPD_TLR  DIC(TLR_NO).
           03 :EXSE:_TS            PIC X(26).
      *@*CHECKSUM 1389225311
       #IFNDEF TABLE_CITFDEM
       #DEFINE TABLE_CITFDEM
           EXEC SQL DECLARE CITFDEM TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             BIC_CODE                 CHAR(11) NOT NULL,
             BIC_CODE_NEW             CHAR(11) NOT NULL,
             VAL_DATE                 DEC(8, 0) NOT NULL,
             INST_SECTOR              CHAR(3) NOT NULL,
             INDUSTRY_CN              CHAR(5) NOT NULL,
             INDUSTRY_LC              CHAR(5) NOT NULL,
             INDUSTRY_PB              CHAR(5) NOT NULL,
             INDUSTRY_OT              CHAR(5) NOT NULL,
             INDUSTRY_HKMA            CHAR(5) NOT NULL,
             INDUSTRY_GMJJ            CHAR(5) NOT NULL,
             FIN_GRP                  CHAR(5) NOT NULL,
             SASAC_TYP                CHAR(1) NOT NULL,
             BUSINESS_GRP             CHAR(5) NOT NULL,
             SEGMENT                  CHAR(5) NOT NULL,
             PRO_FIN_DATE             DEC(8, 0) NOT NULL,
             LINE_BUSI                CHAR(5) NOT NULL,
             TAX_LIAB                 DEC(16, 2) NOT NULL,
             TAX_LIAB_REPAY           DEC(16, 2) NOT NULL,
             SUP_DORM                 CHAR(1) NOT NULL,
             FIN_ORG_TYP              CHAR(2) NOT NULL,
             HO_LIMT_FLG              CHAR(1) NOT NULL,
             LOAN_CARD_NO             CHAR(19) NOT NULL,
             MONEY_LENDER             CHAR(1) NOT NULL,
             EPRLB                    CHAR(1) NOT NULL,
             LPRLB                    CHAR(1) NOT NULL,
             REG_CAP_CCY              CHAR(3) NOT NULL,
             REG_CAP_AMT              DEC(16, 2) NOT NULL,
             SCOPE_BUSS               CHAR(240) NOT NULL,
             SUP_LEGAL_UNIT_NM        CHAR(140) NOT NULL,
             SUP_DP_LIC_NO            CHAR(240) NOT NULL,
             SUP_REG_FIN_CD           CHAR(240) NOT NULL,
             PAID_UP_CAP              DEC(16, 2) NOT NULL,
             SHARE_ISSU_NUM           DEC(11, 0) NOT NULL,
             ISSU_SHARE_CCY           CHAR(3) NOT NULL,
             ISSU_SHARE_AMT           DEC(16, 2) NOT NULL,
             BEARER_SHARE_FLG         CHAR(1) NOT NULL,
             SH_COM_IND               CHAR(1) NOT NULL,
             LISTED_FLG               CHAR(1) NOT NULL,
             LISTED_PLACE             CHAR(5) NOT NULL,
             STOCK_CODE               CHAR(8) NOT NULL,
             LISTED_PLACE2            CHAR(5) NOT NULL,
             STOCK_CODE2              CHAR(8) NOT NULL,
             LISTED_PLACE3            CHAR(5) NOT NULL,
             STOCK_CODE3              CHAR(8) NOT NULL,
             LISTED_PLACE4            CHAR(5) NOT NULL,
             STOCK_CODE4              CHAR(8) NOT NULL,
             LISTED_PLACE5            CHAR(5) NOT NULL,
             STOCK_CODE5              CHAR(8) NOT NULL,
             SUB_LISTED               CHAR(5) NOT NULL,
             SUB_STOCK                CHAR(8) NOT NULL,
             SUB_NAME                 CHAR(140) NOT NULL,
             TAX_FLG                  CHAR(1) NOT NULL,
             INT_RATE                 DEC(5, 2) NOT NULL,
             MERCHANT_CAT             CHAR(4) NOT NULL,
             AI_TYPE                  CHAR(5) NOT NULL,
             MAIN_CNTY1               CHAR(4) NOT NULL,
             MAIN_CNTY2               CHAR(4) NOT NULL,
             MAIN_CNTY3               CHAR(4) NOT NULL,
             MAIN_CNTY4               CHAR(4) NOT NULL,
             MAIN_CNTY5               CHAR(4) NOT NULL,
             MAIN_CNTY6               CHAR(4) NOT NULL,
             MAIN_CNTY7               CHAR(4) NOT NULL,
             MAIN_CNTY8               CHAR(4) NOT NULL,
             MAIN_CNTY9               CHAR(4) NOT NULL,
             MAIN_CNTY10              CHAR(4) NOT NULL,
             MAIN_CNTY11              CHAR(4) NOT NULL,
             MAIN_CNTY12              CHAR(4) NOT NULL,
             MAIN_CNTY13              CHAR(4) NOT NULL,
             MAIN_CNTY14              CHAR(4) NOT NULL,
             MAIN_CNTY15              CHAR(4) NOT NULL,
             MAIN_CNTY16              CHAR(4) NOT NULL,
             MAIN_CNTY17              CHAR(4) NOT NULL,
             MAIN_CNTY18              CHAR(4) NOT NULL,
             MAIN_CNTY19              CHAR(4) NOT NULL,
             MAIN_CNTY20              CHAR(4) NOT NULL,
             BUSINESS_PROV            CHAR(6) NOT NULL,
             LST_COM_SRCH_DT          DEC(8, 0) NOT NULL,
             BEX                      CHAR(5) NOT NULL,
             CITYPE_BASEL             CHAR(2) NOT NULL,
             CTS_EXPDT                DEC(8, 0) NOT NULL,
             CTS_FLG                  CHAR(1) NOT NULL,
             SUP_BUSS_FLG             CHAR(1) NOT NULL,
             NAME_OF_MEGA_COR         CHAR(5) NOT NULL,
             BIC_ADR                  CHAR(11) NOT NULL,
             CHNL_NO                  CHAR(4) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITFDEM                            *
      ******************************************************************
       01  CIR:FDEM:.
           03 :FDEM:_KEY.
              05 :FDEM:_CI_NO      DIC(CI_NO).
           03 :FDEM:_BIC_CODE      DIC(BIC_NO).
           03 :FDEM:_BIC_CODE_NEW  DIC(BIC_NO).
           03 :FDEM:_VAL_DATE      DIC(DT, P).
           03 :FDEM:_INST_SECTOR   DIC(CIORG_CD).
           03 :FDEM:_INDUSTRY_CN   DIC(CIIND_CD).
           03 :FDEM:_INDUSTRY_LC   DIC(CIIND_CD).
           03 :FDEM:_INDUSTRY_PB   DIC(CIIND_CD).
           03 :FDEM:_INDUSTRY_OT   DIC(CIIND_CD).
           03 :FDEM:_INDUSTRY_HKMA DIC(CIIND_CD).
           03 :FDEM:_INDUSTRY_GMJJ DIC(CIIND_CD).
           03 :FDEM:_FIN_GRP       DIC(PTYP_CD).
           03 :FDEM:_SASAC_TYP     DIC(TYP).
           03 :FDEM:_BUSINESS_GRP  DIC(CIIND_CD).
           03 :FDEM:_SEGMENT       DIC(FREE_CD5).
           03 :FDEM:_PRO_FIN_DATE  DIC(DT, P).
           03 :FDEM:_LINE_BUSI     DIC(FREE_CD5).
           03 :FDEM:_TAX_LIAB      DIC(TAX, P).
           03 :FDEM:_TAX_LIAB_REPAY DIC(TAX, P).
           03 :FDEM:_SUP_DORM      DIC(FLG).
           03 :FDEM:_FIN_ORG_TYP   DIC(TYPE).
           03 :FDEM:_HO_LIMT_FLG   DIC(FLG).
           03 :FDEM:_LOAN_CARD_NO  DIC(CARD).
           03 :FDEM:_MONEY_LENDER  DIC(FLG).
           03 :FDEM:_EPRLB         DIC(FLG).
           03 :FDEM:_LPRLB         DIC(FLG).
           03 :FDEM:_REG_CAP_CCY   DIC(CCY).
           03 :FDEM:_REG_CAP_AMT   DIC(AMT, P).
           03 :FDEM:_SCOPE_BUSS    DIC(RMK_120).
           03 :FDEM:_SUP_LEGAL_UNIT_NM DIC(CI_CNM).
           03 :FDEM:_SUP_DP_LIC_NO DIC(RMK_120).
           03 :FDEM:_SUP_REG_FIN_CD DIC(RMK_120).
           03 :FDEM:_PAID_UP_CAP   DIC(AMT, P).
           03 :FDEM:_SHARE_ISSU_NUM DIC(N11, P).
           03 :FDEM:_ISSU_SHARE_CCY DIC(CCY).
           03 :FDEM:_ISSU_SHARE_AMT DIC(AMT, P).
           03 :FDEM:_BEARER_SHARE_FLG DIC(FLG).
           03 :FDEM:_SH_COM_IND    DIC(FLG).
           03 :FDEM:_LISTED_FLG    DIC(FLG).
           03 :FDEM:_LISTED_PLACE  DIC(FREE_CD5).
           03 :FDEM:_STOCK_CODE    DIC(STK_NO).
           03 :FDEM:_LISTED_PLACE2 DIC(FREE_CD5).
           03 :FDEM:_STOCK_CODE2   DIC(STK_NO).
           03 :FDEM:_LISTED_PLACE3 DIC(FREE_CD5).
           03 :FDEM:_STOCK_CODE3   DIC(STK_NO).
           03 :FDEM:_LISTED_PLACE4 DIC(FREE_CD5).
           03 :FDEM:_STOCK_CODE4   DIC(STK_NO).
           03 :FDEM:_LISTED_PLACE5 DIC(FREE_CD5).
           03 :FDEM:_STOCK_CODE5   DIC(STK_NO).
           03 :FDEM:_SUB_LISTED    DIC(FREE_CD5).
           03 :FDEM:_SUB_STOCK     DIC(STK_NO).
           03 :FDEM:_SUB_NAME      DIC(CI_CNM).
           03 :FDEM:_TAX_FLG       DIC(FLG).
           03 :FDEM:_INT_RATE      DIC(PCT, P).
           03 :FDEM:_MERCHANT_CAT  DIC(BUSI_KND).
           03 :FDEM:_AI_TYPE       DIC(FREE_CD5).
           03 :FDEM:_MAIN_CNTY1    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY2    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY3    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY4    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY5    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY6    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY7    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY8    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY9    DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY10   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY11   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY12   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY13   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY14   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY15   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY16   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY17   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY18   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY19   DIC(CNTYS_CD).
           03 :FDEM:_MAIN_CNTY20   DIC(CNTYS_CD).
           03 :FDEM:_BUSINESS_PROV DIC(PROV_CD).
           03 :FDEM:_LST_COM_SRCH_DT DIC(DT, P).
           03 :FDEM:_BEX           DIC(FREE_CD5).
           03 :FDEM:_CITYPE_BASEL  DIC(TYPE).
           03 :FDEM:_CTS_EXPDT     DIC(DT, P).
           03 :FDEM:_CTS_FLG       DIC(FLG).
           03 :FDEM:_SUP_BUSS_FLG  DIC(TYP).
           03 :FDEM:_NAME_OF_MEGA_COR DIC(FREE_CD5).
           03 :FDEM:_BIC_ADR       DIC(BIC_NO).
           03 :FDEM:_CHNL_NO       DIC(CHNL_NO).
           03 :FDEM:_CREATE_UNIT   DIC(BR, P).
           03 :FDEM:_CREATE_TLR    DIC(TLR_NO).
           03 :FDEM:_CREATE_DATE   DIC(DT, P).
           03 :FDEM:_CREATE_TIME   DIC(TM, P).
           03 :FDEM:_CHK_STATUS    DIC(FLG).
           03 :FDEM:_LAST_UPD_DATE DIC(DT, P).
           03 :FDEM:_UPDTBL_DATE   DIC(DT, P).
           03 :FDEM:_TS            PIC X(26).
      *@*CHECKSUM 1264550936
       #IFNDEF TABLE_CITFIN
       #DEFINE TABLE_CITFIN
           EXEC SQL DECLARE CITFIN TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             SEQNO                    DEC(2, 0) NOT NULL,
             FIN_DATE                 DEC(8, 0) NOT NULL,
             FIN_TYPE                 CHAR(1) NOT NULL,
             FIN_CCY                  CHAR(3) NOT NULL,
             FIX_ASSET                DEC(18, 2) NOT NULL,
             INTA_ASSET               DEC(18, 2) NOT NULL,
             INV                      DEC(18, 2) NOT NULL,
             FIN_ASSET                DEC(18, 2) NOT NULL,
             RECEIVABLE               DEC(18, 2) NOT NULL,
             CASH                     DEC(18, 2) NOT NULL,
             STOCK_VAL                DEC(18, 2) NOT NULL,
             TAX_HELD                 DEC(18, 2) NOT NULL,
             TOTAL_ASSET              DEC(18, 2) NOT NULL,
             EQUITY_CAP               DEC(18, 2) NOT NULL,
             PAYA                     DEC(18, 2) NOT NULL,
             PROV                     DEC(18, 2) NOT NULL,
             LONG_LOAN                DEC(18, 2) NOT NULL,
             SHORT_LOAN               DEC(18, 2) NOT NULL,
             TAX_PROV                 DEC(18, 2) NOT NULL,
             DEPRE                    DEC(18, 2) NOT NULL,
             TOTAL_LIAB               DEC(18, 2) NOT NULL,
             TRAD_INCOME              DEC(18, 2) NOT NULL,
             INV_INCOME               DEC(18, 2) NOT NULL,
             OTH_INCOME               DEC(18, 2) NOT NULL,
             TOTAL_INCOME             DEC(18, 2) NOT NULL,
             MAJ_CCY_SOUR             CHAR(5) NOT NULL,
             MATERIAL                 DEC(18, 2) NOT NULL,
             SALARY                   DEC(18, 2) NOT NULL,
             MARKETING                DEC(18, 2) NOT NULL,
             FEE                      DEC(18, 2) NOT NULL,
             OTH_EXPE                 DEC(18, 2) NOT NULL,
             TOTAL_EXPE               DEC(18, 2) NOT NULL,
             PRO_LOSS                 DEC(18, 2) NOT NULL,
             TURNOVER                 DEC(18, 2) NOT NULL,
             ASS_LIAB_RAT             DEC(18, 2) NOT NULL,
             PROF_RAT                 DEC(18, 2) NOT NULL,
             FIRST_LOAN               DEC(8, 0) NOT NULL,
             DEF_FLD1                 CHAR(25) NOT NULL,
             DEF_FLD2                 CHAR(25) NOT NULL,
             DEF_FLD3                 CHAR(25) NOT NULL,
             DEF_FLD4                 CHAR(25) NOT NULL,
             DEF_FLD5                 CHAR(25) NOT NULL,
             DEF_FLD6                 CHAR(25) NOT NULL,
             DEF_FLD7                 CHAR(25) NOT NULL,
             DEF_FLD8                 CHAR(25) NOT NULL,
             DEF_FLD9                 CHAR(25) NOT NULL,
             DEF_FLD10                CHAR(25) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITFIN                             *
      ******************************************************************
       01  CIR:FIN:.
           03 :FIN:_KEY.
              05 :FIN:_CI_NO       DIC(CI_NO).
              05 :FIN:_SEQNO       DIC(SEQ_2, P).
           03 :FIN:_FIN_DATE       DIC(DT, P).
           03 :FIN:_FIN_TYPE       DIC(TYP).
           03 :FIN:_FIN_CCY        DIC(CCY).
           03 :FIN:_FIX_ASSET      DIC(TAMT_S, P).
           03 :FIN:_INTA_ASSET     DIC(TAMT_S, P).
           03 :FIN:_INV            DIC(TAMT_S, P).
           03 :FIN:_FIN_ASSET      DIC(TAMT_S, P).
           03 :FIN:_RECEIVABLE     DIC(TAMT_S, P).
           03 :FIN:_CASH           DIC(TAMT_S, P).
           03 :FIN:_STOCK_VAL      DIC(TAMT_S, P).
           03 :FIN:_TAX_HELD       DIC(TAMT_S, P).
           03 :FIN:_TOTAL_ASSET    DIC(TAMT_S, P).
           03 :FIN:_EQUITY_CAP     DIC(TAMT_S, P).
           03 :FIN:_PAYA           DIC(TAMT_S, P).
           03 :FIN:_PROV           DIC(TAMT_S, P).
           03 :FIN:_LONG_LOAN      DIC(TAMT_S, P).
           03 :FIN:_SHORT_LOAN     DIC(TAMT_S, P).
           03 :FIN:_TAX_PROV       DIC(TAMT_S, P).
           03 :FIN:_DEPRE          DIC(TAMT_S, P).
           03 :FIN:_TOTAL_LIAB     DIC(TAMT_S, P).
           03 :FIN:_TRAD_INCOME    DIC(TAMT_S, P).
           03 :FIN:_INV_INCOME     DIC(TAMT_S, P).
           03 :FIN:_OTH_INCOME     DIC(TAMT_S, P).
           03 :FIN:_TOTAL_INCOME   DIC(TAMT_S, P).
           03 :FIN:_MAJ_CCY_SOUR   DIC(FREE_CD5).
           03 :FIN:_MATERIAL       DIC(TAMT_S, P).
           03 :FIN:_SALARY         DIC(TAMT_S, P).
           03 :FIN:_MARKETING      DIC(TAMT_S, P).
           03 :FIN:_FEE            DIC(TAMT_S, P).
           03 :FIN:_OTH_EXPE       DIC(TAMT_S, P).
           03 :FIN:_TOTAL_EXPE     DIC(TAMT_S, P).
           03 :FIN:_PRO_LOSS       DIC(TAMT_S, P).
           03 :FIN:_TURNOVER       DIC(TAMT_S, P).
           03 :FIN:_ASS_LIAB_RAT   DIC(TAMT_S, P).
           03 :FIN:_PROF_RAT       DIC(TAMT_S, P).
           03 :FIN:_FIRST_LOAN     DIC(DT, P).
           03 :FIN:_DEF_FLD1       DIC(STAT_CD).
           03 :FIN:_DEF_FLD2       DIC(STAT_CD).
           03 :FIN:_DEF_FLD3       DIC(STAT_CD).
           03 :FIN:_DEF_FLD4       DIC(STAT_CD).
           03 :FIN:_DEF_FLD5       DIC(STAT_CD).
           03 :FIN:_DEF_FLD6       DIC(STAT_CD).
           03 :FIN:_DEF_FLD7       DIC(STAT_CD).
           03 :FIN:_DEF_FLD8       DIC(STAT_CD).
           03 :FIN:_DEF_FLD9       DIC(STAT_CD).
           03 :FIN:_DEF_FLD10      DIC(STAT_CD).
           03 :FIN:_CREATE_UNIT    DIC(BR, P).
           03 :FIN:_CREATE_TLR     DIC(TLR_NO).
           03 :FIN:_CREATE_DATE    DIC(DT, P).
           03 :FIN:_CREATE_TIME    DIC(TM, P).
           03 :FIN:_CHK_STATUS     DIC(TYP).
           03 :FIN:_LAST_UPD_DATE  DIC(DT, P).
           03 :FIN:_UPDTBL_DATE    DIC(DT, P).
           03 :FIN:_TS             PIC X(26).
      *@*CHECKSUM _1059498302
       #IFNDEF TABLE_CITGID
       #DEFINE TABLE_CITGID
           EXEC SQL DECLARE CITGID TABLE
           (
             GRP_ID                   CHAR(10) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             FLG                      CHAR(1) NOT NULL,
             GRP_NAME                 CHAR(140) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       CHAR(26) NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITGID                             *
      ******************************************************************
       01  CIR:GID:.
           03 :GID:_KEY.
              05 :GID:_GRP_ID      DIC(X10).
              05 :GID:_CI_NO       DIC(CI_NO).
           03 :GID:_FLG            DIC(FLG).
           03 :GID:_GRP_NAME       DIC(CI_ENM).
           03 :GID:_CREATE_UNIT    DIC(BR, P).
           03 :GID:_CREATE_TLR     DIC(TLR_NO).
           03 :GID:_CREATE_DATE    DIC(DT, P).
           03 :GID:_CREATE_TIME    DIC(TM, P).
           03 :GID:_CHK_STATUS     DIC(FLG).
           03 :GID:_LAST_UPD_DATE  DIC(DT, P).
           03 :GID:_UPDTBL_DATE    DIC(DT, P).
           03 :GID:_TS             DIC(TS).
      *@*CHECKSUM _1653880017
       #IFNDEF TABLE_CITJRL
       #DEFINE TABLE_CITJRL
           EXEC SQL DECLARE CITJRL TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             CI_NO1                   CHAR(12) NOT NULL,
             CI_NO2                   CHAR(12) NOT NULL,
             CI_NO3                   CHAR(12) NOT NULL,
             CI_NO4                   CHAR(12) NOT NULL,
             CI_NO5                   CHAR(12) NOT NULL,
             CI_NO6                   CHAR(12) NOT NULL,
             CI_NO7                   CHAR(12) NOT NULL,
             CI_NO8                   CHAR(12) NOT NULL,
             CI_NO9                   CHAR(12) NOT NULL,
             CI_NO10                  CHAR(12) NOT NULL,
             PRI_CINO                 CHAR(12) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
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
      * COBOL DECLARATION FOR TABLE CITJRL                             *
      ******************************************************************
       01  CIR:JRL:.
           03 :JRL:_KEY.
              05 :JRL:_CI_NO       DIC(CI_NO).
           03 :JRL:_CI_NO1         DIC(CI_NO).
           03 :JRL:_CI_NO2         DIC(CI_NO).
           03 :JRL:_CI_NO3         DIC(CI_NO).
           03 :JRL:_CI_NO4         DIC(CI_NO).
           03 :JRL:_CI_NO5         DIC(CI_NO).
           03 :JRL:_CI_NO6         DIC(CI_NO).
           03 :JRL:_CI_NO7         DIC(CI_NO).
           03 :JRL:_CI_NO8         DIC(CI_NO).
           03 :JRL:_CI_NO9         DIC(CI_NO).
           03 :JRL:_CI_NO10        DIC(CI_NO).
           03 :JRL:_PRI_CINO       DIC(CI_NO).
           03 :JRL:_CHK_STATUS     DIC(OPT).
           03 :JRL:_CREATE_UNIT    DIC(BR, P).
           03 :JRL:_CREATE_TLR     DIC(TLR_NO).
           03 :JRL:_CREATE_DATE    DIC(DT, P).
           03 :JRL:_CREATE_TIME    DIC(TM, P).
           03 :JRL:_UPDTBL_DATE    DIC(DT, P).
           03 :JRL:_TS             PIC X(26).
      *@*CHECKSUM 1264474913
       #IFNDEF TABLE_CITLBFI
       #DEFINE TABLE_CITLBFI
           EXEC SQL DECLARE CITLBFI TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             CODE                     CHAR(4) NOT NULL,
             CREATION_DATE            DEC(8, 0) NOT NULL,
             EXPIRY_DATE              DEC(8, 0) NOT NULL,
             EVIDENCE                 CHAR(50) NOT NULL,
             LAST_CREATION_DATE       DEC(8, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITLBFI                            *
      ******************************************************************
       01  CIR:LBFI:.
           03 :LBFI:_KEY.
              05 :LBFI:_CI_NO      DIC(CI_NO).
              05 :LBFI:_CODE       DIC(X04).
           03 :LBFI:_CREATION_DATE DIC(DT, P).
           03 :LBFI:_EXPIRY_DATE   DIC(DT, P).
           03 :LBFI:_EVIDENCE      DIC(X50).
           03 :LBFI:_LAST_CREATION_DATE DIC(DT, P).
           03 :LBFI:_CHK_STATUS    DIC(FLG).
           03 :LBFI:_CREATE_UNIT   DIC(BR, P).
           03 :LBFI:_CREATE_TLR    DIC(TLR_NO).
           03 :LBFI:_CREATE_DATE   DIC(DT, P).
           03 :LBFI:_CREATE_TIME   DIC(TM, P).
           03 :LBFI:_LAST_UPD_DATE DIC(DT, P).
           03 :LBFI:_LAST_UPD_TIME DIC(TM, P).
           03 :LBFI:_UPDTBL_DATE   DIC(DT, P).
           03 :LBFI:_TS            PIC X(26).
      *@*CHECKSUM 405239862
       #IFNDEF TABLE_CITMDINF
       #DEFINE TABLE_CITMDINF
           EXEC SQL DECLARE CITMDINF TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             SEQ_NO                   DEC(2, 0) NOT NULL,
             TYPE                     CHAR(1) NOT NULL,
             MEMORAND                 VARCHAR(1200) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITMDINF                           *
      ******************************************************************
       01  CIR:MDINF:.
           03 :MDINF:_KEY.
              05 :MDINF:_CI_NO     DIC(CI_NO).
              05 :MDINF:_SEQ_NO    DIC(SEQ_2, P).
           03 :MDINF:_TYPE         DIC(TYP).
           03 :MDINF:_MEMORAND.
              49 :MDINF:_MEMORAND_LEN PIC S9(4) COMP.
              49 :MDINF:_MEMORAND_TEXT DIC(MRDM).
           03 :MDINF:_CHK_STATUS   DIC(FLG).
           03 :MDINF:_CREATE_UNIT  DIC(BR, P).
           03 :MDINF:_CREATE_TLR   DIC(TLR_NO).
           03 :MDINF:_CREATE_DATE  DIC(DT, P).
           03 :MDINF:_CREATE_TIME  DIC(TM, P).
           03 :MDINF:_LAST_UPD_DATE DIC(DT, P).
           03 :MDINF:_LAST_UPD_TIME DIC(TM, P).
           03 :MDINF:_LAST_UPD_TLR DIC(TLR_NO).
           03 :MDINF:_UPDTBL_DATE  DIC(DT, P).
           03 :MDINF:_TS           PIC X(26).
      *@*CHECKSUM _1804775678
       #IFNDEF TABLE_CITMHCP
       #DEFINE TABLE_CITMHCP
           EXEC SQL DECLARE CITMHCP TABLE
           (
             BATCH_AC_DATE            DEC(8, 0) NOT NULL,
             SEQ_NO                   DEC(11, 0) NOT NULL,
             TRN_CODE                 CHAR(7) NOT NULL,
             TRN_TIME                 DEC(6, 0) NOT NULL,
             TRN_BR                   DEC(6, 0) NOT NULL,
             ACT_CODE                 CHAR(1) NOT NULL,
             TRN_MK                   CHAR(8) NOT NULL,
             TRN_CK                   CHAR(8) NOT NULL,
             NEW_ID_TYPE1             CHAR(5) NOT NULL,
             NEW_ID_NO1               CHAR(30) NOT NULL,
             NEW_ID_TYPE2             CHAR(5) NOT NULL,
             NEW_ID_NO2               CHAR(30) NOT NULL,
             NEW_REL_ID_TYPE          CHAR(5) NOT NULL,
             NEW_REL_ID_NO            CHAR(30) NOT NULL,
             NEW_ENAME1               CHAR(140) NOT NULL,
             NEW_CNAME1               CHAR(140) NOT NULL,
             NEW_PNAME1               CHAR(140) NOT NULL,
             NEW_ENAME2               CHAR(140) NOT NULL,
             NEW_CNAME2               CHAR(140) NOT NULL,
             NEW_PNAME2               CHAR(140) NOT NULL,
             NEW_REL_ENAME            CHAR(140) NOT NULL,
             NEW_REL_CNAME            CHAR(140) NOT NULL,
             NEW_REL_PNAME            CHAR(140) NOT NULL,
             NEW_INCORP_PLACE1        CHAR(4) NOT NULL,
             NEW_REL_DSB1             CHAR(5) NOT NULL,
             NEW_DIVISION1            CHAR(6) NOT NULL,
             NEW_INCORP_PLACE2        CHAR(4) NOT NULL,
             NEW_CNTL_POWER           CHAR(1) NOT NULL,
             NEW_RELATION             CHAR(5) NOT NULL,
             NEW_ROLE_ENTRY2          CHAR(5) NOT NULL,
             OLD_ID_TYPE1             CHAR(5) NOT NULL,
             OLD_ID_NO1               CHAR(30) NOT NULL,
             OLD_ID_TYPE2             CHAR(5) NOT NULL,
             OLD_ID_NO2               CHAR(30) NOT NULL,
             OLD_REL_ID_TYPE          CHAR(5) NOT NULL,
             OLD_REL_ID_NO            CHAR(30) NOT NULL,
             OLD_ENAME1               CHAR(140) NOT NULL,
             OLD_CNAME1               CHAR(140) NOT NULL,
             OLD_PNAME1               CHAR(140) NOT NULL,
             OLD_ENAME2               CHAR(140) NOT NULL,
             OLD_CNAME2               CHAR(140) NOT NULL,
             OLD_PNAME2               CHAR(140) NOT NULL,
             OLD_REL_ENAME            CHAR(140) NOT NULL,
             OLD_REL_CNAME            CHAR(140) NOT NULL,
             OLD_REL_PNAME            CHAR(140) NOT NULL,
             OLD_INCORP_PLACE1        CHAR(4) NOT NULL,
             OLD_REL_DSB1             CHAR(5) NOT NULL,
             OLD_DIVISION1            CHAR(6) NOT NULL,
             OLD_INCORP_PLACE2        CHAR(4) NOT NULL,
             OLD_CNTL_POWER           CHAR(1) NOT NULL,
             OLD_RELATION             CHAR(5) NOT NULL,
             OLD_ROLE_ENTRY2          CHAR(5) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITMHCP                            *
      ******************************************************************
       01  CIR:MHCP:.
           03 :MHCP:_KEY.
              05 :MHCP:_BATCH_AC_DATE DIC(DT, P).
              05 :MHCP:_SEQ_NO     DIC(N11, P).
           03 :MHCP:_TRN_CODE      DIC(TX_CD).
           03 :MHCP:_TRN_TIME      DIC(TM, P).
           03 :MHCP:_TRN_BR        DIC(BR, P).
           03 :MHCP:_ACT_CODE      DIC(TYP).
           03 :MHCP:_TRN_MK        DIC(TLR_NO).
           03 :MHCP:_TRN_CK        DIC(TLR_NO).
           03 :MHCP:_NEW_ID_TYPE1  DIC(ID_TYP).
           03 :MHCP:_NEW_ID_NO1    DIC(ID_NO).
           03 :MHCP:_NEW_ID_TYPE2  DIC(ID_TYP).
           03 :MHCP:_NEW_ID_NO2    DIC(ID_NO).
           03 :MHCP:_NEW_REL_ID_TYPE DIC(ID_TYP).
           03 :MHCP:_NEW_REL_ID_NO DIC(ID_NO).
           03 :MHCP:_NEW_ENAME1    DIC(CI_ENM).
           03 :MHCP:_NEW_CNAME1    DIC(CI_CNM).
           03 :MHCP:_NEW_PNAME1    DIC(CI_ENM).
           03 :MHCP:_NEW_ENAME2    DIC(CI_ENM).
           03 :MHCP:_NEW_CNAME2    DIC(CI_CNM).
           03 :MHCP:_NEW_PNAME2    DIC(CI_ENM).
           03 :MHCP:_NEW_REL_ENAME DIC(CI_ENM).
           03 :MHCP:_NEW_REL_CNAME DIC(CI_CNM).
           03 :MHCP:_NEW_REL_PNAME DIC(CI_ENM).
           03 :MHCP:_NEW_INCORP_PLACE1 DIC(CNTYS_CD).
           03 :MHCP:_NEW_REL_DSB1  DIC(FREE_CD5).
           03 :MHCP:_NEW_DIVISION1 DIC(X06).
           03 :MHCP:_NEW_INCORP_PLACE2 DIC(CNTYS_CD).
           03 :MHCP:_NEW_CNTL_POWER DIC(TYP).
           03 :MHCP:_NEW_RELATION  DIC(FREE_CD5).
           03 :MHCP:_NEW_ROLE_ENTRY2 DIC(FREE_CD5).
           03 :MHCP:_OLD_ID_TYPE1  DIC(ID_TYP).
           03 :MHCP:_OLD_ID_NO1    DIC(ID_NO).
           03 :MHCP:_OLD_ID_TYPE2  DIC(ID_TYP).
           03 :MHCP:_OLD_ID_NO2    DIC(ID_NO).
           03 :MHCP:_OLD_REL_ID_TYPE DIC(ID_TYP).
           03 :MHCP:_OLD_REL_ID_NO DIC(ID_NO).
           03 :MHCP:_OLD_ENAME1    DIC(CI_ENM).
           03 :MHCP:_OLD_CNAME1    DIC(CI_CNM).
           03 :MHCP:_OLD_PNAME1    DIC(CI_ENM).
           03 :MHCP:_OLD_ENAME2    DIC(CI_ENM).
           03 :MHCP:_OLD_CNAME2    DIC(CI_CNM).
           03 :MHCP:_OLD_PNAME2    DIC(CI_ENM).
           03 :MHCP:_OLD_REL_ENAME DIC(CI_ENM).
           03 :MHCP:_OLD_REL_CNAME DIC(CI_CNM).
           03 :MHCP:_OLD_REL_PNAME DIC(CI_ENM).
           03 :MHCP:_OLD_INCORP_PLACE1 DIC(CNTYS_CD).
           03 :MHCP:_OLD_REL_DSB1  DIC(FREE_CD5).
           03 :MHCP:_OLD_DIVISION1 DIC(X06).
           03 :MHCP:_OLD_INCORP_PLACE2 DIC(CNTYS_CD).
           03 :MHCP:_OLD_CNTL_POWER DIC(TYP).
           03 :MHCP:_OLD_RELATION  DIC(FREE_CD5).
           03 :MHCP:_OLD_ROLE_ENTRY2 DIC(FREE_CD5).
           03 :MHCP:_TS            PIC X(26).
      *@*CHECKSUM 1780656325
       #IFNDEF TABLE_CITMSO
       #DEFINE TABLE_CITMSO
           EXEC SQL DECLARE CITMSO TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             MSO_DECL                 CHAR(1) NOT NULL,
             BEF_MSO_DECL             CHAR(1) NOT NULL,
             BEF_UPD_DATE             DEC(8, 0) NOT NULL,
             BEF_UPD_TLR              CHAR(8) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITMSO                             *
      ******************************************************************
       01  CIR:MSO:.
           03 :MSO:_KEY.
              05 :MSO:_CI_NO       DIC(CI_NO).
           03 :MSO:_MSO_DECL       DIC(FLG).
           03 :MSO:_BEF_MSO_DECL   DIC(FLG).
           03 :MSO:_BEF_UPD_DATE   DIC(DT, P).
           03 :MSO:_BEF_UPD_TLR    DIC(TLR_NO).
           03 :MSO:_CHK_STATUS     DIC(FLG).
           03 :MSO:_CREATE_UNIT    DIC(BR, P).
           03 :MSO:_CREATE_TLR     DIC(TLR_NO).
           03 :MSO:_CREATE_DATE    DIC(DT, P).
           03 :MSO:_CREATE_TIME    DIC(TM, P).
           03 :MSO:_LAST_UPD_DATE  DIC(DT, P).
           03 :MSO:_LAST_UPD_TLR   DIC(TLR_NO).
           03 :MSO:_LAST_UPD_TIME  DIC(TM, P).
           03 :MSO:_UPDTBL_DATE    DIC(DT, P).
           03 :MSO:_TS             PIC X(26).
      *@*CHECKSUM 105074976
       #IFNDEF TABLE_CITMTRF
       #DEFINE TABLE_CITMTRF
           EXEC SQL DECLARE CITMTRF TABLE
           (
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             SYS_CD                   CHAR(2) NOT NULL,
             AC_REF                   CHAR(20) NOT NULL,
             JOINT_IND                CHAR(1) NOT NULL,
             SPC_TYPE                 CHAR(4) NOT NULL,
             SPC_CD                   CHAR(10) NOT NULL,
             OPEN_DT                  DEC(8, 0) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITMTRF                            *
      ******************************************************************
       01  CIR:MTRF:.
           03 :MTRF:_KEY.
              05 :MTRF:_ID_TYPE    DIC(ID_TYP).
              05 :MTRF:_ID_NO      DIC(ID_NO).
           03 :MTRF:_SYS_CD        DIC(TYPE).
           03 :MTRF:_AC_REF        DIC(DESC_20).
           03 :MTRF:_JOINT_IND     DIC(FLG).
           03 :MTRF:_SPC_TYPE      DIC(X04).
           03 :MTRF:_SPC_CD        DIC(X10).
           03 :MTRF:_OPEN_DT       DIC(DT, P).
           03 :MTRF:_CREATE_UNIT   DIC(BR, P).
           03 :MTRF:_CREATE_TLR    DIC(TLR_NO).
           03 :MTRF:_CREATE_DATE   DIC(DT, P).
           03 :MTRF:_CREATE_TIME   DIC(TM, P).
           03 :MTRF:_CHK_STATUS    DIC(FLG).
           03 :MTRF:_LAST_UPD_DATE DIC(DT, P).
           03 :MTRF:_LAST_UPD_TIME DIC(TM, P).
           03 :MTRF:_UPDTBL_DATE   DIC(DT, P).
           03 :MTRF:_TS            PIC X(26).
      *@*CHECKSUM _1437768128
       #IFNDEF TABLE_CITOIC
       #DEFINE TABLE_CITOIC
           EXEC SQL DECLARE CITOIC TABLE
           (
             OIC_NO                   CHAR(10) NOT NULL,
             BOOK_BCH                 DEC(6, 0) NOT NULL,
             TEAM_NO                  CHAR(10) NOT NULL,
             NAME                     CHAR(70) NOT NULL,
             TEL_NO                   CHAR(18) NOT NULL,
             EMAIL                    CHAR(50) NOT NULL,
             STAFF_NO                 CHAR(10) NOT NULL,
             REGH_FLG                 CHAR(1) NOT NULL,
             LEADER_FLG               CHAR(1) NOT NULL,
             TLR_ID                   CHAR(8) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITOIC                             *
      ******************************************************************
       01  CIR:OIC:.
           03 :OIC:_KEY.
              05 :OIC:_OIC_NO      DIC(OIC_NO).
           03 :OIC:_BOOK_BCH       DIC(BR, P).
           03 :OIC:_TEAM_NO        DIC(OIC_NO).
           03 :OIC:_NAME           DIC(CI_NMS).
           03 :OIC:_TEL_NO         DIC(TEL_NO).
           03 :OIC:_EMAIL          DIC(EMAIL).
           03 :OIC:_STAFF_NO       DIC(STAF_NO).
           03 :OIC:_REGH_FLG       DIC(FLG).
           03 :OIC:_LEADER_FLG     DIC(FLG).
           03 :OIC:_TLR_ID         DIC(TLR_NO).
           03 :OIC:_CREATE_UNIT    DIC(BR, P).
           03 :OIC:_CREATE_TLR     DIC(TLR_NO).
           03 :OIC:_CREATE_DATE    DIC(DT, P).
           03 :OIC:_CREATE_TIME    DIC(TM, P).
           03 :OIC:_LAST_UPD_DATE  DIC(DT, P).
           03 :OIC:_LAST_UPD_TLR   DIC(TLR_NO).
           03 :OIC:_UPDTBL_DATE    DIC(DT, P).
           03 :OIC:_TS             PIC X(26).
      *@*CHECKSUM 707707622
       #IFNDEF TABLE_CITOOBL
       #DEFINE TABLE_CITOOBL
           EXEC SQL DECLARE CITOOBL TABLE
           (
             BANK_CODE                CHAR(3) NOT NULL,
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITOOBL                            *
      ******************************************************************
       01  CIR:OOBL:.
           03 :OOBL:_KEY.
              05 :OOBL:_BANK_CODE  DIC(BK).
              05 :OOBL:_ID_TYPE    DIC(ID_TYP).
              05 :OOBL:_ID_NO      DIC(ID_NO).
           03 :OOBL:_CREATE_UNIT   DIC(BR, P).
           03 :OOBL:_CREATE_TLR    DIC(TLR_NO).
           03 :OOBL:_CREATE_DATE   DIC(DT, P).
           03 :OOBL:_CREATE_TIME   DIC(TM, P).
           03 :OOBL:_LAST_UPD_DATE DIC(DT, P).
           03 :OOBL:_LAST_UPD_TIME DIC(TM, P).
           03 :OOBL:_LAST_UPD_TLR  DIC(TLR_NO).
           03 :OOBL:_UPDTBL_DATE   DIC(DT, P).
           03 :OOBL:_TS            PIC X(26).
      *@*CHECKSUM _1309800171
       #IFNDEF TABLE_CITPDEM
       #DEFINE TABLE_CITPDEM
           EXEC SQL DECLARE CITPDEM TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             INST_SECTOR              CHAR(3) NOT NULL,
             INDUSTRY_CN              CHAR(5) NOT NULL,
             INDUSTRY_LC              CHAR(5) NOT NULL,
             INDUSTRY_PB              CHAR(5) NOT NULL,
             INDUSTRY_OT              CHAR(5) NOT NULL,
             SURNME                   CHAR(10) NOT NULL,
             GIVEN_NME                CHAR(40) NOT NULL,
             SURNMC                   CHAR(10) NOT NULL,
             GIVEN_NMC                CHAR(40) NOT NULL,
             SURNMM                   CHAR(10) NOT NULL,
             GIVEN_NMM                CHAR(40) NOT NULL,
             BUSINESS_GRP             CHAR(5) NOT NULL,
             DRIVING                  CHAR(30) NOT NULL,
             DATE_BIRTH               DEC(8, 0) NOT NULL,
             DATE_DEATH               DEC(8, 0) NOT NULL,
             SEX                      CHAR(1) NOT NULL,
             TITLE                    CHAR(1) NOT NULL,
             MARI_FLAG                CHAR(2) NOT NULL,
             DEPEN_NUM                DEC(2, 0) NOT NULL,
             ASSET_STS                CHAR(5) NOT NULL,
             EMP_STS                  CHAR(5) NOT NULL,
             OCCUP_CODE               CHAR(5) NOT NULL,
             SELF_EMP                 CHAR(1) NOT NULL,
             YEAR_IN_SER              DEC(2, 0) NOT NULL,
             EDU_LVL                  CHAR(3) NOT NULL,
             STAFF_FLAG               CHAR(1) NOT NULL,
             STAFF_DEPT               DEC(6, 0) NOT NULL,
             STAFF_EFF_DATE           DEC(8, 0) NOT NULL,
             STAFF_LEVEL              CHAR(2) NOT NULL,
             SEGMENT                  CHAR(5) NOT NULL,
             PRO_FIN_DATE             DEC(8, 0) NOT NULL,
             VIP_FLG                  CHAR(1) NOT NULL,
             VIP_OPEN_DT              DEC(8, 0) NOT NULL,
             VIP_CLS_DT               DEC(8, 0) NOT NULL,
             PB_IND                   CHAR(1) NOT NULL,
             TAX_LIAB                 DEC(16, 2) NOT NULL,
             TAX_LIAB_REPAY           DEC(16, 2) NOT NULL,
             SUP_DORM                 CHAR(1) NOT NULL,
             EMPLOY_CORP_NAME         CHAR(50) NOT NULL,
             BIRPLACE                 CHAR(4) NOT NULL,
             REG_CTY2                 CHAR(4) NOT NULL,
             EMPLOY_IND               CHAR(5) NOT NULL,
             POSITION                 CHAR(5) NOT NULL,
             ANNUAL_INCOME            DEC(16, 2) NOT NULL,
             MON_INCOME               DEC(16, 2) NOT NULL,
             OTH_INCOME               DEC(16, 2) NOT NULL,
             AGENT_FLG                CHAR(2) NOT NULL,
             PAY_FLG                  CHAR(1) NOT NULL,
             PAY_DATE                 DEC(8, 0) NOT NULL,
             AG_ID_TYPE               CHAR(5) NOT NULL,
             AG_ID_NO                 CHAR(30) NOT NULL,
             AG_NAME                  CHAR(150) NOT NULL,
             AG_TEL                   CHAR(18) NOT NULL,
             AG_SEX                   CHAR(1) NOT NULL,
             AG_BRTH_DT               DEC(6, 0) NOT NULL,
             LOSS_HKID_FLG            CHAR(1) NOT NULL,
             LOSS_EXPY_DT             DEC(8, 0) NOT NULL,
             LOSS_HKID_DT             DEC(8, 0) NOT NULL,
             DOM_HELP_VAL             CHAR(1) NOT NULL,
             CHPT3_STS                CHAR(2) NOT NULL,
             TRT_CNTY                 CHAR(4) NOT NULL,
             TRT_RATE                 DEC(5, 2) NOT NULL,
             DOB_YYYY                 CHAR(1) NOT NULL,
             CHNL_NO                  CHAR(4) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITPDEM                            *
      ******************************************************************
       01  CIR:PDEM:.
           03 :PDEM:_KEY.
              05 :PDEM:_CI_NO      DIC(CI_NO).
           03 :PDEM:_INST_SECTOR   DIC(CIORG_CD).
           03 :PDEM:_INDUSTRY_CN   DIC(CIIND_CD).
           03 :PDEM:_INDUSTRY_LC   DIC(CIIND_CD).
           03 :PDEM:_INDUSTRY_PB   DIC(CIIND_CD).
           03 :PDEM:_INDUSTRY_OT   DIC(CIIND_CD).
           03 :PDEM:_SURNME        DIC(CISU_ENM).
           03 :PDEM:_GIVEN_NME     DIC(CIG_ENM).
           03 :PDEM:_SURNMC        DIC(CISU_CNM).
           03 :PDEM:_GIVEN_NMC     DIC(CIG_CNM).
           03 :PDEM:_SURNMM        DIC(CISU_ENM).
           03 :PDEM:_GIVEN_NMM     DIC(CIG_ENM).
           03 :PDEM:_BUSINESS_GRP  DIC(FREE_CD5).
           03 :PDEM:_DRIVING       DIC(ID_NO).
           03 :PDEM:_DATE_BIRTH    DIC(DT, P).
           03 :PDEM:_DATE_DEATH    DIC(DT, P).
           03 :PDEM:_SEX           DIC(TYP).
           03 :PDEM:_TITLE         DIC(TYP).
           03 :PDEM:_MARI_FLAG     DIC(TYPE).
           03 :PDEM:_DEPEN_NUM     DIC(NUM_2, P).
           03 :PDEM:_ASSET_STS     DIC(FREE_CD5).
           03 :PDEM:_EMP_STS       DIC(FREE_CD5).
           03 :PDEM:_OCCUP_CODE    DIC(FREE_CD5).
           03 :PDEM:_SELF_EMP      DIC(FLG).
           03 :PDEM:_YEAR_IN_SER   DIC(NUM_2, P).
           03 :PDEM:_EDU_LVL       DIC(TYP_CD).
           03 :PDEM:_STAFF_FLAG    DIC(FLG).
           03 :PDEM:_STAFF_DEPT    DIC(BR, P).
           03 :PDEM:_STAFF_EFF_DATE DIC(DT, P).
           03 :PDEM:_STAFF_LEVEL   DIC(POSN_LVL).
           03 :PDEM:_SEGMENT       DIC(FREE_CD5).
           03 :PDEM:_PRO_FIN_DATE  DIC(DT, P).
           03 :PDEM:_VIP_FLG       DIC(FLG).
           03 :PDEM:_VIP_OPEN_DT   DIC(DT, P).
           03 :PDEM:_VIP_CLS_DT    DIC(DT, P).
           03 :PDEM:_PB_IND        DIC(FLG).
           03 :PDEM:_TAX_LIAB      DIC(TAX, P).
           03 :PDEM:_TAX_LIAB_REPAY DIC(TAX, P).
           03 :PDEM:_SUP_DORM      DIC(FLG).
           03 :PDEM:_EMPLOY_CORP_NAME DIC(CI_EMPNM).
           03 :PDEM:_BIRPLACE      DIC(CNTYS_CD).
           03 :PDEM:_REG_CTY2      DIC(CNTYS_CD).
           03 :PDEM:_EMPLOY_IND    DIC(CIIND_CD).
           03 :PDEM:_POSITION      DIC(FREE_CD5).
           03 :PDEM:_ANNUAL_INCOME DIC(AMT, P).
           03 :PDEM:_MON_INCOME    DIC(AMT, P).
           03 :PDEM:_OTH_INCOME    DIC(AMT, P).
           03 :PDEM:_AGENT_FLG     DIC(TYPE).
           03 :PDEM:_PAY_FLG       DIC(FLG).
           03 :PDEM:_PAY_DATE      DIC(DT, P).
           03 :PDEM:_AG_ID_TYPE    DIC(ID_TYP).
           03 :PDEM:_AG_ID_NO      DIC(ID_NO).
           03 :PDEM:_AG_NAME       DIC(CI_NM).
           03 :PDEM:_AG_TEL        DIC(TEL_NO).
           03 :PDEM:_AG_SEX        DIC(SEX).
           03 :PDEM:_AG_BRTH_DT    DIC(YYYYMM, P).
           03 :PDEM:_LOSS_HKID_FLG DIC(FLG).
           03 :PDEM:_LOSS_EXPY_DT  DIC(DT, P).
           03 :PDEM:_LOSS_HKID_DT  DIC(DT, P).
           03 :PDEM:_DOM_HELP_VAL  DIC(FLG).
           03 :PDEM:_CHPT3_STS     DIC(TYPE).
           03 :PDEM:_TRT_CNTY      DIC(CNTYS_CD).
           03 :PDEM:_TRT_RATE      DIC(PCT, P).
           03 :PDEM:_DOB_YYYY      DIC(FLG).
           03 :PDEM:_CHNL_NO       DIC(CHNL_NO).
           03 :PDEM:_CREATE_UNIT   DIC(BR, P).
           03 :PDEM:_CREATE_TLR    DIC(TLR_NO).
           03 :PDEM:_CREATE_DATE   DIC(DT, P).
           03 :PDEM:_CREATE_TIME   DIC(TM, P).
           03 :PDEM:_CHK_STATUS    DIC(FLG).
           03 :PDEM:_LAST_UPD_DATE DIC(DT, P).
           03 :PDEM:_UPDTBL_DATE   DIC(DT, P).
           03 :PDEM:_TS            PIC X(26).
      *@*CHECKSUM _2133570706
       #IFNDEF TABLE_CITPDKIS
       #DEFINE TABLE_CITPDKIS
           EXEC SQL DECLARE CITPDKIS TABLE
           (
             PROD_TYPE                CHAR(10) NOT NULL,
             DEAL_NO                  CHAR(10) NOT NULL,
             CUST_ID1                 CHAR(20) NOT NULL,
             CUST_ID2                 CHAR(20) NOT NULL,
             CUST_ID3                 CHAR(20) NOT NULL,
             CUST_ID4                 CHAR(20) NOT NULL,
             CUST_ID5                 CHAR(20) NOT NULL,
             REC_TYPE                 CHAR(1) NOT NULL,
             CPTY_SNM                 CHAR(10) NOT NULL,
             CPTY_NM                  CHAR(32) NOT NULL,
             CCY1                     CHAR(3) NOT NULL,
             AMT1                     DEC(16, 2) NOT NULL,
             CCY2                     CHAR(3) NOT NULL,
             AMT2                     DEC(16, 2) NOT NULL,
             TRAD_DT                  DEC(8, 0) NOT NULL,
             VAL_DT                   DEC(8, 0) NOT NULL,
             MATUR_DT                 DEC(8, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITPDKIS                           *
      ******************************************************************
       01  CIR:PDKIS:.
           03 :PDKIS:_KEY.
              05 :PDKIS:_PROD_TYPE DIC(FRE_CD10).
              05 :PDKIS:_DEAL_NO   DIC(X10).
           03 :PDKIS:_CUST_ID1     DIC(DESC_20).
           03 :PDKIS:_CUST_ID2     DIC(DESC_20).
           03 :PDKIS:_CUST_ID3     DIC(DESC_20).
           03 :PDKIS:_CUST_ID4     DIC(DESC_20).
           03 :PDKIS:_CUST_ID5     DIC(DESC_20).
           03 :PDKIS:_REC_TYPE     DIC(FLG).
           03 :PDKIS:_CPTY_SNM     DIC(X10).
           03 :PDKIS:_CPTY_NM      DIC(INS_NM).
           03 :PDKIS:_CCY1         DIC(CCY).
           03 :PDKIS:_AMT1         DIC(AMT, P).
           03 :PDKIS:_CCY2         DIC(CCY).
           03 :PDKIS:_AMT2         DIC(AMT, P).
           03 :PDKIS:_TRAD_DT      DIC(DT, P).
           03 :PDKIS:_VAL_DT       DIC(DT, P).
           03 :PDKIS:_MATUR_DT     DIC(DT, P).
           03 :PDKIS:_CHK_STATUS   DIC(FLG).
           03 :PDKIS:_CREATE_UNIT  DIC(BR, P).
           03 :PDKIS:_CREATE_TLR   DIC(TLR_NO).
           03 :PDKIS:_CREATE_DATE  DIC(DT, P).
           03 :PDKIS:_CREATE_TIME  DIC(TM, P).
           03 :PDKIS:_LAST_UPD_DATE DIC(DT, P).
           03 :PDKIS:_LAST_UPD_TIME DIC(TM, P).
           03 :PDKIS:_UPDTBL_DATE  DIC(DT, P).
           03 :PDKIS:_TS           PIC X(26).
      *@*CHECKSUM _446698581
       #IFNDEF TABLE_CITPFMIN
       #DEFINE TABLE_CITPFMIN
           EXEC SQL DECLARE CITPFMIN TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             SYSTEM                   CHAR(2) NOT NULL,
             DESCRIP                  CHAR(60) NOT NULL,
             IND                      CHAR(1) NOT NULL,
             USER                     CHAR(8) NOT NULL,
             CREAT_DT                 DEC(8, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITPFMIN                           *
      ******************************************************************
       01  CIR:PFMIN:.
           03 :PFMIN:_KEY.
              05 :PFMIN:_CI_NO     DIC(CI_NO).
              05 :PFMIN:_SYSTEM    DIC(TYPE).
           03 :PFMIN:_DESCRIP      DIC(DESCE_60).
           03 :PFMIN:_IND          DIC(FLG).
           03 :PFMIN:_USER         DIC(TLR_NO).
           03 :PFMIN:_CREAT_DT     DIC(DT, P).
           03 :PFMIN:_CHK_STATUS   DIC(FLG).
           03 :PFMIN:_CREATE_UNIT  DIC(BR, P).
           03 :PFMIN:_CREATE_TLR   DIC(TLR_NO).
           03 :PFMIN:_CREATE_DATE  DIC(DT, P).
           03 :PFMIN:_CREATE_TIME  DIC(TM, P).
           03 :PFMIN:_LAST_UPD_DATE DIC(DT, P).
           03 :PFMIN:_LAST_UPD_TIME DIC(TM, P).
           03 :PFMIN:_UPDTBL_DATE  DIC(DT, P).
           03 :PFMIN:_TS           PIC X(26).
      *@*CHECKSUM _105224942
       #IFNDEF TABLE_CITPROF
       #DEFINE TABLE_CITPROF
           EXEC SQL DECLARE CITPROF TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             AC_NO                    CHAR(25) NOT NULL,
             TD_CON_NO                DEC(6, 0) NOT NULL,
             OIC_NO                   CHAR(10) NOT NULL,
             PROFIT_FLG               CHAR(1) NOT NULL,
             BOOK_BCH                 DEC(6, 0) NOT NULL,
             APP                      CHAR(2) NOT NULL,
             PCT                      DEC(5, 2) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITPROF                            *
      ******************************************************************
       01  CIR:PROF:.
           03 :PROF:_KEY.
              05 :PROF:_CI_NO      DIC(CI_NO).
              05 :PROF:_AC_NO      DIC(BR_AC).
              05 :PROF:_TD_CON_NO  DIC(NUM_6, P).
              05 :PROF:_OIC_NO     DIC(OIC_NO).
              05 :PROF:_PROFIT_FLG DIC(FLG).
           03 :PROF:_BOOK_BCH      DIC(BR, P).
           03 :PROF:_APP           DIC(TYPE).
           03 :PROF:_PCT           DIC(PCT, P).
           03 :PROF:_EFF_DATE      DIC(DT, P).
           03 :PROF:_CREATE_UNIT   DIC(BR, P).
           03 :PROF:_CREATE_TLR    DIC(TLR_NO).
           03 :PROF:_CREATE_DATE   DIC(DT, P).
           03 :PROF:_CREATE_TIME   DIC(TM, P).
           03 :PROF:_CHK_STATUS    DIC(TYP).
           03 :PROF:_LAST_UPD_DATE DIC(DT, P).
           03 :PROF:_UPDTBL_DATE   DIC(DT, P).
           03 :PROF:_TS            PIC X(26).
      *@*CHECKSUM 1123097799
       #IFNDEF TABLE_CITREL
       #DEFINE TABLE_CITREL
           EXEC SQL DECLARE CITREL TABLE
           (
             CI_NO1                   CHAR(12) NOT NULL,
             REL_SEQ                  DEC(4, 0) NOT NULL,
             REL_CODE                 CHAR(5) NOT NULL,
             ID_TYPE2                 CHAR(5) NOT NULL,
             ID_NO2                   CHAR(30) NOT NULL,
             CI_NO2                   CHAR(12) NOT NULL,
             LONG_ENAME2              CHAR(140) NOT NULL,
             LONG_CNAME2              CHAR(140) NOT NULL,
             LONG_PNAME2              CHAR(140) NOT NULL,
             INCORP_PLACE             CHAR(4) NOT NULL,
             HOLD_SHARE               DEC(11, 0) NOT NULL,
             TOTAL_SHARE              DEC(11, 0) NOT NULL,
             HOLD_PER                 DEC(7, 4) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             HOLD_AMT                 DEC(16, 2) NOT NULL,
             CONTROL_SHAHOLD          CHAR(1) NOT NULL,
             LIST_COMPNY              CHAR(1) NOT NULL,
             STOCK_CHGE_NAME          CHAR(5) NOT NULL,
             STOCK_CODE               CHAR(8) NOT NULL,
             ADDR_TYPE                CHAR(1) NOT NULL,
             ADDR_CNTY_CODE           CHAR(4) NOT NULL,
             TIN_NO                   CHAR(9) NOT NULL,
             MID_NUM                  CHAR(1) NOT NULL,
             SH_RMK                   VARCHAR(400) NOT NULL,
             BIRTH_DATE               DEC(8, 0) NOT NULL,
             GENDER                   CHAR(1) NOT NULL,
             REL_APPANT               CHAR(30) NOT NULL,
             NATION                   CHAR(4) NOT NULL,
             OCCP                     CHAR(5) NOT NULL,
             ADDR1                    CHAR(30) NOT NULL,
             ADDR2                    CHAR(30) NOT NULL,
             ADDR3                    CHAR(30) NOT NULL,
             ADDR4                    CHAR(30) NOT NULL,
             AML_SEQ                  DEC(5, 0) NOT NULL,
             REL_STATUS               CHAR(1) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITREL                             *
      ******************************************************************
       01  CIR:REL:.
           03 :REL:_KEY.
              05 :REL:_CI_NO1      DIC(CI_NO).
              05 :REL:_REL_SEQ     DIC(SEQ_4, P).
              05 :REL:_REL_CODE    DIC(CIREL_CD).
           03 :REL:_ID_TYPE2       DIC(ID_TYP).
           03 :REL:_ID_NO2         DIC(ID_NO).
           03 :REL:_CI_NO2         DIC(CI_NO).
           03 :REL:_LONG_ENAME2    DIC(CI_ENM).
           03 :REL:_LONG_CNAME2    DIC(CI_CNM).
           03 :REL:_LONG_PNAME2    DIC(CI_ENM).
           03 :REL:_INCORP_PLACE   DIC(CNTYS_CD).
           03 :REL:_HOLD_SHARE     DIC(N11, P).
           03 :REL:_TOTAL_SHARE    DIC(N11, P).
           03 :REL:_HOLD_PER       DIC(PCT4, P).
           03 :REL:_CCY            DIC(CCY).
           03 :REL:_HOLD_AMT       DIC(AMT_S, P).
           03 :REL:_CONTROL_SHAHOLD DIC(FLG).
           03 :REL:_LIST_COMPNY    DIC(FLG).
           03 :REL:_STOCK_CHGE_NAME DIC(FREE_CD5).
           03 :REL:_STOCK_CODE     DIC(STK_NO).
           03 :REL:_ADDR_TYPE      DIC(TYP).
           03 :REL:_ADDR_CNTY_CODE DIC(CNTYS_CD).
           03 :REL:_TIN_NO         DIC(TIN_NO).
           03 :REL:_MID_NUM        DIC(FLG).
           03 :REL:_SH_RMK.
              49 :REL:_SH_RMK_LEN  PIC S9(4) COMP.
              49 :REL:_SH_RMK_TEXT DIC(RMK_200).
           03 :REL:_BIRTH_DATE     DIC(DT, P).
           03 :REL:_GENDER         DIC(TYP).
           03 :REL:_REL_APPANT     DIC(X30).
           03 :REL:_NATION         DIC(CNTYS_CD).
           03 :REL:_OCCP           DIC(FREE_CD5).
           03 :REL:_ADDR1          DIC(CMP_ADDR).
           03 :REL:_ADDR2          DIC(CMP_ADDR).
           03 :REL:_ADDR3          DIC(CMP_ADDR).
           03 :REL:_ADDR4          DIC(CMP_ADDR).
           03 :REL:_AML_SEQ        DIC(CNT, P).
           03 :REL:_REL_STATUS     DIC(STS).
           03 :REL:_CHK_STATUS     DIC(FLG).
           03 :REL:_CREATE_UNIT    DIC(BR, P).
           03 :REL:_CREATE_TLR     DIC(TLR_NO).
           03 :REL:_CREATE_DATE    DIC(DT, P).
           03 :REL:_CREATE_TIME    DIC(TM, P).
           03 :REL:_LAST_UPD_TLR   DIC(TLR_NO).
           03 :REL:_LAST_UPD_DATE  DIC(DT, P).
           03 :REL:_UPDTBL_DATE    DIC(DT, P).
           03 :REL:_TS             PIC X(26).
      *@*CHECKSUM 750649674
       #IFNDEF TABLE_CITRSK
       #DEFINE TABLE_CITRSK
           EXEC SQL DECLARE CITRSK TABLE
           (
             CI_NO                    CHAR(12) NOT NULL,
             AGENCY                   CHAR(1) NOT NULL,
             CR_RATING                CHAR(5) NOT NULL,
             SHORT_TERM_RATING        CHAR(5) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             NXT_REVW_DATE            DEC(8, 0) NOT NULL,
             CR_SCORING               CHAR(5) NOT NULL,
             QUA_GAD                  CHAR(1) NOT NULL,
             THREE_MTH_CLAIM          CHAR(1) NOT NULL,
             CLS_HO                   CHAR(5) NOT NULL,
             CLS_LOCAL                CHAR(5) NOT NULL,
             CLS_BR                   CHAR(5) NOT NULL,
             DEFAULT_TYP              CHAR(1) NOT NULL,
             DEFAULT_STS              CHAR(1) NOT NULL,
             DEFAULT_PROB             DEC(5, 2) NOT NULL,
             REMARK                   CHAR(120) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITRSK                             *
      ******************************************************************
       01  CIR:RSK:.
           03 :RSK:_KEY.
              05 :RSK:_CI_NO       DIC(CI_NO).
              05 :RSK:_AGENCY      DIC(TYP).
           03 :RSK:_CR_RATING      DIC(FREE_CD5).
           03 :RSK:_SHORT_TERM_RATING DIC(FREE_CD5).
           03 :RSK:_EFF_DATE       DIC(DT, P).
           03 :RSK:_NXT_REVW_DATE  DIC(DT, P).
           03 :RSK:_CR_SCORING     DIC(FREE_CD5).
           03 :RSK:_QUA_GAD        DIC(OPT).
           03 :RSK:_THREE_MTH_CLAIM DIC(OPT).
           03 :RSK:_CLS_HO         DIC(FREE_CD5).
           03 :RSK:_CLS_LOCAL      DIC(FREE_CD5).
           03 :RSK:_CLS_BR         DIC(FREE_CD5).
           03 :RSK:_DEFAULT_TYP    DIC(OPT).
           03 :RSK:_DEFAULT_STS    DIC(OPT).
           03 :RSK:_DEFAULT_PROB   DIC(PCT_NS, P).
           03 :RSK:_REMARK         DIC(RMK_60).
           03 :RSK:_CREATE_UNIT    DIC(BR, P).
           03 :RSK:_CREATE_TLR     DIC(TLR_NO).
           03 :RSK:_CREATE_DATE    DIC(DT, P).
           03 :RSK:_CREATE_TIME    DIC(TM, P).
           03 :RSK:_CHK_STATUS     DIC(FLG).
           03 :RSK:_LAST_UPD_DATE  DIC(DT, P).
           03 :RSK:_UPDTBL_DATE    DIC(DT, P).
           03 :RSK:_TS             PIC X(26).
      *@*CHECKSUM _450637794
       #IFNDEF TABLE_CITTEAM
       #DEFINE TABLE_CITTEAM
           EXEC SQL DECLARE CITTEAM TABLE
           (
             TEAM_NO                  CHAR(10) NOT NULL,
             DIVISION                 DEC(6, 0) NOT NULL,
             REGION                   CHAR(5) NOT NULL,
             TEAM_NM                  CHAR(70) NOT NULL,
             BRANCH                   DEC(6, 0) NOT NULL,
             PROFIT                   CHAR(5) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITTEAM                            *
      ******************************************************************
       01  CIR:TEAM:.
           03 :TEAM:_KEY.
              05 :TEAM:_TEAM_NO    DIC(OIC_NO).
              05 :TEAM:_DIVISION   DIC(BR, P).
              05 :TEAM:_REGION     DIC(FREE_CD5).
           03 :TEAM:_TEAM_NM       DIC(CI_NMS).
           03 :TEAM:_BRANCH        DIC(BR, P).
           03 :TEAM:_PROFIT        DIC(FREE_CD5).
           03 :TEAM:_CREATE_UNIT   DIC(BR, P).
           03 :TEAM:_CREATE_TLR    DIC(TLR_NO).
           03 :TEAM:_CREATE_DATE   DIC(DT, P).
           03 :TEAM:_CREATE_TIME   DIC(TM, P).
           03 :TEAM:_LAST_UPD_DATE DIC(DT, P).
           03 :TEAM:_LAST_UPD_TLR  DIC(TLR_NO).
           03 :TEAM:_UPDTBL_DATE   DIC(DT, P).
           03 :TEAM:_TS            PIC X(26).
      *@*CHECKSUM 1027557318
       #IFNDEF TABLE_CITTUCOS
       #DEFINE TABLE_CITTUCOS
           EXEC SQL DECLARE CITTUCOS TABLE
           (
             ID_TYPE                  CHAR(5) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             TU_CONS_IND              CHAR(1) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             ENG_NAME                 CHAR(140) NOT NULL,
             REMARK                   CHAR(120) NOT NULL,
             SOURCE                   CHAR(1) NOT NULL,
             CHK_STATUS               CHAR(1) NOT NULL,
             CREATE_UNIT              DEC(6, 0) NOT NULL,
             CREATE_TLR               CHAR(8) NOT NULL,
             CREATE_DATE              DEC(8, 0) NOT NULL,
             CREATE_TIME              DEC(6, 0) NOT NULL,
             LAST_UPD_UNIT            DEC(6, 0) NOT NULL,
             LAST_UPD_TLR             CHAR(8) NOT NULL,
             LAST_UPD_DATE            DEC(8, 0) NOT NULL,
             LAST_UPD_TIME            DEC(6, 0) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CITTUCOS                           *
      ******************************************************************
       01  CIR:TUCOS:.
           03 :TUCOS:_KEY.
              05 :TUCOS:_ID_TYPE   DIC(ID_TYP).
              05 :TUCOS:_ID_NO     DIC(ID_NO).
              05 :TUCOS:_TU_CONS_IND DIC(TYP).
           03 :TUCOS:_EFF_DATE     DIC(DT, P).
           03 :TUCOS:_ENG_NAME     DIC(CI_ENM).
           03 :TUCOS:_REMARK       DIC(RMK_60).
           03 :TUCOS:_SOURCE       DIC(TYP).
           03 :TUCOS:_CHK_STATUS   DIC(FLG).
           03 :TUCOS:_CREATE_UNIT  DIC(BR, P).
           03 :TUCOS:_CREATE_TLR   DIC(TLR_NO).
           03 :TUCOS:_CREATE_DATE  DIC(DT, P).
           03 :TUCOS:_CREATE_TIME  DIC(TM, P).
           03 :TUCOS:_LAST_UPD_UNIT DIC(BR, P).
           03 :TUCOS:_LAST_UPD_TLR DIC(TLR_NO).
           03 :TUCOS:_LAST_UPD_DATE DIC(DT, P).
           03 :TUCOS:_LAST_UPD_TIME DIC(TM, P).
           03 :TUCOS:_UPDTBL_DATE  DIC(DT, P).
           03 :TUCOS:_TS           PIC X(26).
      *@*CHECKSUM 1736264179
       #IFNDEF TABLE_CLTACR
       #DEFINE TABLE_CLTACR
           EXEC SQL DECLARE CLTACR TABLE
           (
             R_TYPE                   CHAR(1) NOT NULL,
             LMT_NO                   DEC(10, 0) NOT NULL,
             AC_NO                    CHAR(25) NOT NULL,
             LOAN_NO                  CHAR(25) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             PROD_CODE                CHAR(8) NOT NULL,
             LMT_CODE                 CHAR(8) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             GTEE_FLAG                CHAR(1) NOT NULL,
             GD_FLAG                  CHAR(1) NOT NULL,
             USE_BAL                  DEC(18, 2) NOT NULL,
             CUM_BAL                  DEC(18, 2) NOT NULL,
             AC_USE_BAL               DEC(18, 2) NOT NULL,
             AC_CUM_BAL               DEC(18, 2) NOT NULL,
             INPUT_DATE               DEC(8, 0) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             EFF_DAYS                 DEC(6, 0) NOT NULL,
             FOR_INDUS                CHAR(5) NOT NULL,
             RISK_CNTY                CHAR(3) NOT NULL,
             TENOR                    DEC(6, 0) NOT NULL,
             THIRD_PARTY              CHAR(12) NOT NULL,
             SOURCE_SYS_CD            CHAR(5) NOT NULL,
             DUMMY_AC_FLG             CHAR(1) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTACR                             *
      ******************************************************************
       01  CLR:ACR:.
           03 :ACR:_KEY.
              05 :ACR:_R_TYPE      DIC(TYP).
                88 :ACR:_R_N               VALUE 'N'.
                88 :ACR:_R_D               VALUE 'D'.
                88 :ACR:_R_A               VALUE 'A'.
              05 :ACR:_LMT_NO      DIC(LMT_NO, P).
              05 :ACR:_AC_NO       DIC(CTA_NO).
              05 :ACR:_LOAN_NO     DIC(LN_AC).
              05 :ACR:_CCY         DIC(CCY).
              05 :ACR:_PROD_CODE   DIC(PROD_CD).
              05 :ACR:_LMT_CODE    DIC(LMT_KND).
           03 :ACR:_CI_NO          DIC(CI_NO).
           03 :ACR:_GTEE_FLAG      DIC(FLG).
           03 :ACR:_GD_FLAG        DIC(FLG).
           03 :ACR:_USE_BAL        DIC(TBAL_S, P).
           03 :ACR:_CUM_BAL        DIC(TBAL_S, P).
           03 :ACR:_AC_USE_BAL     DIC(TBAL_S, P).
           03 :ACR:_AC_CUM_BAL     DIC(TBAL_S, P).
           03 :ACR:_INPUT_DATE     DIC(DT, P).
           03 :ACR:_EFF_DATE       DIC(DT, P).
           03 :ACR:_EXP_DATE       DIC(DT, P).
           03 :ACR:_EFF_DAYS       DIC(I_DAYS, P).
           03 :ACR:_FOR_INDUS      DIC(CIIND_CD).
           03 :ACR:_RISK_CNTY      DIC(CNTY_CD).
           03 :ACR:_TENOR          DIC(I_DAYS, P).
           03 :ACR:_THIRD_PARTY    DIC(CI_NO).
           03 :ACR:_SOURCE_SYS_CD  DIC(FREE_CD5).
           03 :ACR:_DUMMY_AC_FLG   DIC(FLG).
           03 :ACR:_CRT_DATE       DIC(DT, P).
           03 :ACR:_CRT_TLR        DIC(TLR_NO).
           03 :ACR:_UPDTBL_DATE    DIC(DT, P).
           03 :ACR:_UPDTBL_TLR     DIC(TLR_NO).
           03 :ACR:_TS             PIC X(26).
      *@*CHECKSUM _1229417385
       #IFNDEF TABLE_CLTACRV2
       #DEFINE TABLE_CLTACRV2
           EXEC SQL DECLARE CLTACRV2 TABLE
           (
             COLL_NO                  DEC(10, 0) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             PLG_DATE                 DEC(8, 0) NOT NULL,
             NAME                     CHAR(240) NOT NULL,
             REG_NO                   CHAR(240) NOT NULL,
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
      * COBOL DECLARATION FOR TABLE CLTACRV2                           *
      ******************************************************************
       01  CLR:ACRV2:.
           03 :ACRV2:_KEY.
              05 :ACRV2:_COLL_NO   DIC(GTEE_NO, P).
           03 :ACRV2:_R_TYPE       DIC(TYP).
                 88 :ACRV2:_R_N          VALUE 'N'.
                 88 :ACRV2:_R_D          VALUE 'D'.
                 88 :ACRV2:_R_A          VALUE 'A'.
           03 :ACRV2:_PLG_DATE     DIC(DT, P).
           03 :ACRV2:_NAME         DIC(RMK_120).
           03 :ACRV2:_REG_NO       DIC(RMK_120).
           03 :ACRV2:_COUNTER_TYP  DIC(TYP).
           03 :ACRV2:_CRT_DATE     DIC(DT, P).
           03 :ACRV2:_CRT_TLR      DIC(TLR_NO).
           03 :ACRV2:_UPDTBL_DATE  DIC(DT, P).
           03 :ACRV2:_UPDTBL_TLR   DIC(TLR_NO).
           03 :ACRV2:_TS           PIC X(26).
      *@*CHECKSUM _190791449
       #IFNDEF TABLE_CLTCCR
       #DEFINE TABLE_CLTCCR
           EXEC SQL DECLARE CLTCCR TABLE
           (
             R_TYPE                   CHAR(1) NOT NULL,
             COLL_NO                  DEC(10, 0) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCCR                             *
      ******************************************************************
       01  CLR:CCR:.
           03 :CCR:_KEY.
              05 :CCR:_R_TYPE      DIC(TYP).
                 88 :CCR:_R_N            VALUE 'N'.
                 88 :CCR:_R_D            VALUE 'D'.
              05 :CCR:_COLL_NO     DIC(GTEE_NO, P).
              05 :CCR:_CI_NO       DIC(CI_NO).
           03 :CCR:_CRT_DATE       DIC(DT, P).
           03 :CCR:_CRT_TLR        DIC(TLR_NO).
           03 :CCR:_UPDTBL_DATE    DIC(DT, P).
           03 :CCR:_UPDTBL_TLR     DIC(TLR_NO).
           03 :CCR:_TS             PIC X(26).
      *@*CHECKSUM 1988001389
       #IFNDEF TABLE_CLTCDP2
       #DEFINE TABLE_CLTCDP2
           EXEC SQL DECLARE CLTCDP2 TABLE
           (
             COLL_NO                  DEC(10, 0) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             ACNO                     CHAR(25) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             AC_NM                    CHAR(140) NOT NULL,
             LED_BAL                  DEC(18, 2) NOT NULL,
             AVL_BAL                  DEC(18, 2) NOT NULL,
             AC_STS                   CHAR(1) NOT NULL,
             COUNT_TYP                CHAR(1) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCDP2                            *
      ******************************************************************
       01  CLR:CDP2:.
           03 :CDP2:_KEY.
              05 :CDP2:_COLL_NO    DIC(GTEE_NO, P).
           03 :CDP2:_R_TYPE        DIC(TYP).
                 88 :CDP2:_R_N            VALUE 'N'.
                 88 :CDP2:_R_D            VALUE 'D'.
           03 :CDP2:_ACNO          DIC(AC).
           03 :CDP2:_CCY           DIC(CCY).
           03 :CDP2:_AC_NM         DIC(CI_ENM).
           03 :CDP2:_LED_BAL       DIC(TBAL_S, P).
           03 :CDP2:_AVL_BAL       DIC(TBAL_S, P).
           03 :CDP2:_AC_STS        DIC(STS).
           03 :CDP2:_COUNT_TYP     DIC(TYP).
           03 :CDP2:_CRT_DATE      DIC(DT, P).
           03 :CDP2:_CRT_TLR       DIC(TLR_NO).
           03 :CDP2:_UPDTBL_DATE   DIC(DT, P).
           03 :CDP2:_UPDTBL_TLR    DIC(TLR_NO).
           03 :CDP2:_TS            PIC X(26).
      *@*CHECKSUM _118938498
       #IFNDEF TABLE_CLTCLR
       #DEFINE TABLE_CLTCLR
           EXEC SQL DECLARE CLTCLR TABLE
           (
             R_TYPE                   CHAR(1) NOT NULL,
             LNK_TYPE                 CHAR(1) NOT NULL,
             LMT_NO                   DEC(10, 0) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             AC_NO                    CHAR(25) NOT NULL,
             MAJOR_IND                CHAR(1) NOT NULL,
             UOD_FLG                  CHAR(1) NOT NULL,
             RISK_CNTRY               CHAR(4) NOT NULL,
             RESIDENCE_CNTR           CHAR(4) NOT NULL,
             INDUS_LC                 CHAR(5) NOT NULL,
             CR_FLG                   CHAR(1) NOT NULL,
             REC_STATUS               CHAR(1) NOT NULL,
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
      * COBOL DECLARATION FOR TABLE CLTCLR                             *
      ******************************************************************
       01  CLR:CLR:.
           03 :CLR:_KEY.
              05 :CLR:_R_TYPE      DIC(TYP).
                88 :CLR:_R_N               VALUE 'N'.
                88 :CLR:_R_D               VALUE 'D'.
                88 :CLR:_R_A               VALUE 'A'.
              05 :CLR:_LNK_TYPE    DIC(TYP).
                88 :CLR:_LNK_C             VALUE 'C'.
                88 :CLR:_LNK_A             VALUE 'A'.
              05 :CLR:_LMT_NO      DIC(LMT_NO, P).
              05 :CLR:_CI_NO       DIC(CI_NO).
              05 :CLR:_AC_NO       DIC(DD_AC).
           03 :CLR:_MAJOR_IND      DIC(OPT).
           03 :CLR:_UOD_FLG        DIC(FLG).
           03 :CLR:_RISK_CNTRY     DIC(CNTYS_CD).
           03 :CLR:_RESIDENCE_CNTR DIC(CNTYS_CD).
           03 :CLR:_INDUS_LC       DIC(CIIND_CD).
           03 :CLR:_CR_FLG         DIC(OPT).
           03 :CLR:_REC_STATUS     DIC(REC_STS).
                88 :CLR:_UNCONF_ADD        VALUE 'A'.
                88 :CLR:_UNCONF_UPD        VALUE 'U'.
                88 :CLR:_UNCONF_DEL        VALUE 'D'.
           03 :CLR:_CREATE_DATE    DIC(DT, P).
           03 :CLR:_CREATE_TL      DIC(TLR_NO).
           03 :CLR:_CREATE_UNIT    DIC(BR, P).
           03 :CLR:_UPDATE_DATE    DIC(DT, P).
           03 :CLR:_UPDATE_TL      DIC(TLR_NO).
           03 :CLR:_UPDATE_UNIT    DIC(BR, P).
           03 :CLR:_CONF_UNIT      DIC(BR, P).
           03 :CLR:_CONF_SUP       DIC(TLR_NO).
           03 :CLR:_CONF_DATE      DIC(DT, P).
           03 :CLR:_OVER_SUP1      DIC(TLR_NO).
           03 :CLR:_OVER_SUP2      DIC(TLR_NO).
           03 :CLR:_VER_NO         DIC(VER_NO, P).
           03 :CLR:_UPDTBL_DATE    DIC(DT, P).
           03 :CLR:_TS             PIC X(26).
      *@*CHECKSUM _163799715
       #IFNDEF TABLE_CLTCLRA
       #DEFINE TABLE_CLTCLRA
           EXEC SQL DECLARE CLTCLRA TABLE
           (
             LMT_NO                   DEC(10, 0) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             LEVEL                    CHAR(1) NOT NULL,
             LEVEL_NO                 DEC(4, 0) NOT NULL,
             CODE                     CHAR(8) NOT NULL,
             FATHER                   DEC(10, 0) NOT NULL,
             TOP_FATHER               DEC(10, 0) NOT NULL,
             MAJOR_IND                CHAR(1) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCLRA                            *
      ******************************************************************
       01  CLR:CLRA:.
           03 :CLRA:_KEY.
              05 :CLRA:_LMT_NO     DIC(LMT_NO, P).
              05 :CLRA:_CI_NO      DIC(CI_NO).
           03 :CLRA:_LEVEL         DIC(TYP).
           03 :CLRA:_LEVEL_NO      DIC(NUM, P).
           03 :CLRA:_CODE          DIC(LMT_KND).
           03 :CLRA:_FATHER        DIC(LMT_NO, P).
           03 :CLRA:_TOP_FATHER    DIC(LMT_NO, P).
           03 :CLRA:_MAJOR_IND     DIC(OPT).
           03 :CLRA:_CRT_DATE      DIC(DT, P).
           03 :CLRA:_CRT_TLR       DIC(TLR_NO).
           03 :CLRA:_UPDTBL_DATE   DIC(DT, P).
           03 :CLRA:_UPDTBL_TLR    DIC(TLR_NO).
           03 :CLRA:_TS            PIC X(26).
      *@*CHECKSUM _1559114016
       #IFNDEF TABLE_CLTCNPT
       #DEFINE TABLE_CLTCNPT
           EXEC SQL DECLARE CLTCNPT TABLE
           (
             REC_DATE                 DEC(8, 0) NOT NULL,
             ID_NO                    CHAR(30) NOT NULL,
             ID_TYP                   CHAR(5) NOT NULL,
             SEQ                      DEC(4, 0) NOT NULL,
             BANK_ID                  CHAR(1) NOT NULL,
             SYS_CODE                 CHAR(5) NOT NULL,
             LOAN_TYPE                CHAR(8) NOT NULL,
             EN_NAME                  CHAR(140) NOT NULL,
             CN_NAME                  CHAR(140) NOT NULL,
             PR_NAME                  CHAR(140) NOT NULL,
             REL_CODE                 CHAR(4) NOT NULL,
             REL_OFFICE_NAME          CHAR(140) NOT NULL,
             REL_OFFICE_NAME_CN       CHAR(140) NOT NULL,
             REL_OFFICE_NAME_PR       CHAR(140) NOT NULL,
             REL_OFFICE_DIVI          DEC(6, 0) NOT NULL,
             TOTAL_LMT_AMT            DEC(18, 2) NOT NULL,
             TOTAL_OS_AMT             DEC(18, 2) NOT NULL,
             TOTAL_EXPOSURE           DEC(18, 2) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCNPT                            *
      ******************************************************************
       01  CLR:CNPT:.
           03 :CNPT:_KEY.
              05 :CNPT:_REC_DATE   DIC(DT, P).
              05 :CNPT:_ID_NO      DIC(ID_NO).
              05 :CNPT:_ID_TYP     DIC(ID_TYP).
              05 :CNPT:_SEQ        DIC(NUM, P).
           03 :CNPT:_BANK_ID       DIC(FLG).
           03 :CNPT:_SYS_CODE      DIC(FREE_CD5).
           03 :CNPT:_LOAN_TYPE     DIC(PROD_CD).
           03 :CNPT:_EN_NAME       DIC(CI_ENM).
           03 :CNPT:_CN_NAME       DIC(CI_CNM).
           03 :CNPT:_PR_NAME       DIC(CI_ENM).
           03 :CNPT:_REL_CODE      DIC(CNTYS_CD).
           03 :CNPT:_REL_OFFICE_NAME DIC(CI_ENM).
           03 :CNPT:_REL_OFFICE_NAME_CN DIC(CI_CNM).
           03 :CNPT:_REL_OFFICE_NAME_PR DIC(CI_ENM).
           03 :CNPT:_REL_OFFICE_DIVI DIC(BR, P).
           03 :CNPT:_TOTAL_LMT_AMT DIC(TBAL_S, P).
           03 :CNPT:_TOTAL_OS_AMT  DIC(TBAL_S, P).
           03 :CNPT:_TOTAL_EXPOSURE DIC(TBAL_S, P).
           03 :CNPT:_CRT_DATE      DIC(DT, P).
           03 :CNPT:_CRT_TLR       DIC(TLR_NO).
           03 :CNPT:_UPDTBL_DATE   DIC(DT, P).
           03 :CNPT:_UPDTBL_TLR    DIC(TLR_NO).
           03 :CNPT:_TS            PIC X(26).
      *@*CHECKSUM 862787016
       #IFNDEF TABLE_CLTCOL
       #DEFINE TABLE_CLTCOL
           EXEC SQL DECLARE CLTCOL TABLE
           (
             COLL_NO                  DEC(10, 0) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             CTR_PNT                  CHAR(11) NOT NULL,
             TYPE                     DEC(4, 0) NOT NULL,
             HCOL_TYPE                DEC(6, 0) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             MAR_VAL                  DEC(18, 2) NOT NULL,
             GUAR_AMT                 DEC(18, 2) NOT NULL,
             PLEG_RATIO               DEC(5, 2) NOT NULL,
             ALL_MONIES               CHAR(1) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             CHARGE_TYP               CHAR(1) NOT NULL,
             VAL_DATE                 DEC(8, 0) NOT NULL,
             NEXT_REVAL_DAT           DEC(8, 0) NOT NULL,
             RELEASED_DATE            DEC(8, 0) NOT NULL,
             LOANABLE_VAL             DEC(18, 2) NOT NULL,
             SOURCE_SYS_CD            CHAR(5) NOT NULL,
             SOURCE_SYS_REF           CHAR(60) NOT NULL,
             RISK_WT_CD               CHAR(2) NOT NULL,
             LOC                      CHAR(4) NOT NULL,
             STATUS                   CHAR(32) NOT NULL,
             DISCOUNT_RATE            DEC(3, 0) NOT NULL,
             COLL_USED_BAL            DEC(18, 2) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             RMK1                     VARCHAR(400) NOT NULL,
             RMK2                     VARCHAR(400) NOT NULL,
             RMK3                     VARCHAR(400) NOT NULL,
             RMK4                     VARCHAR(400) NOT NULL,
             RMK5                     VARCHAR(400) NOT NULL,
             MORTGAGE_NO              CHAR(60) NOT NULL,
             MORT_REG_DATE            DEC(8, 0) NOT NULL,
             MORT_EXP_DATE            DEC(8, 0) NOT NULL,
             ORIG_VAL                 DEC(18, 2) NOT NULL,
             BRW_TYP                  CHAR(1) NOT NULL,
             ASSESS_CO                CHAR(140) NOT NULL,
             ASSE_N_VAL               DEC(18, 2) NOT NULL,
             ASSESS_DATE              DEC(8, 0) NOT NULL,
             ASSESSOR                 CHAR(140) NOT NULL,
             COL_LOC                  CHAR(80) NOT NULL,
             DEL_REASON               CHAR(120) NOT NULL,
             OVER_SUP2                CHAR(8) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCOL                             *
      ******************************************************************
       01  CLR:COL:.
           03 :COL:_KEY.
              05 :COL:_COLL_NO     DIC(GTEE_NO, P).
           03 :COL:_R_TYPE         DIC(TYP).
                 88 :COL:_R_N           VALUE 'N'.
                 88 :COL:_R_D           VALUE 'D'.
           03 :COL:_CTR_PNT        DIC(CLC_CTLW).
              03 :COL:_CTR_DATA REDEFINES :COL:_CTR_PNT.
                 05 :COL:_CTR_TYPE      DIC(TYP).
                    88 :COL:_CTR_BY_LMT VALUE 'L'.
                    88 :COL:_CTR_BY_COL VALUE 'C'.
                 05 :COL:_CTR_NO        DIC(GTEE_NO).
           03 :COL:_TYPE           DIC(COL_KND, P).
           03 :COL:_HCOL_TYPE      DIC(HCOL_KND, P).
           03 :COL:_CCY            DIC(CCY).
           03 :COL:_MAR_VAL        DIC(TAMT_NS, P).
           03 :COL:_GUAR_AMT       DIC(TAMT_NS, P).
           03 :COL:_PLEG_RATIO     DIC(PCT, P).
           03 :COL:_ALL_MONIES     DIC(FLG).
           03 :COL:_EFF_DATE       DIC(DT, P).
           03 :COL:_CHARGE_TYP     DIC(TYP).
           03 :COL:_VAL_DATE       DIC(DT, P).
           03 :COL:_NEXT_REVAL_DAT DIC(DT, P).
           03 :COL:_RELEASED_DATE  DIC(DT, P).
           03 :COL:_LOANABLE_VAL   DIC(TBAL_NS, P).
           03 :COL:_SOURCE_SYS_CD  DIC(FREE_CD5).
           03 :COL:_SOURCE_SYS_REF DIC(DESCE_60).
           03 :COL:_RISK_WT_CD     DIC(RGTYP_CD).
           03 :COL:_LOC            DIC(CNTYS_CD).
           03 :COL:_STATUS         DIC(STSW32).
              03 :COL:_STATUS_N REDEFINES :COL:_STATUS.
                 05 :COL:_STS_C01       DIC(SEQ_1).
                 05 :COL:_STS_C02       DIC(SEQ_1).
                 05 :COL:_STS_C03       DIC(SEQ_1).
                 05 :COL:_STS_C04       DIC(SEQ_1).
                 05 :COL:_STS_C05       DIC(SEQ_1).
                 05 :COL:_STS_C06       DIC(SEQ_1).
                 05 :COL:_STS_C07       DIC(SEQ_1).
                 05 :COL:_STS_C08       DIC(SEQ_1).
                 05 :COL:_STS_C09       DIC(SEQ_1).
                 05 :COL:_STS_C10       DIC(SEQ_1).
                 05 :COL:_STS_C11       DIC(SEQ_1).
                 05 :COL:_STS_C12       DIC(SEQ_1).
                 05 :COL:_STS_C13       DIC(SEQ_1).
                 05 :COL:_STS_C14       DIC(SEQ_1).
                 05 :COL:_STS_C15       DIC(SEQ_1).
                 05 :COL:_STS_C16       DIC(SEQ_1).
                 05 :COL:_STS_C17       DIC(SEQ_1).
                 05 :COL:_STS_C18       DIC(SEQ_1).
                 05 :COL:_STS_C19       DIC(SEQ_1).
                 05 :COL:_STS_C20       DIC(SEQ_1).
                 05 :COL:_STS_C21       DIC(SEQ_1).
                 05 :COL:_STS_C22       DIC(SEQ_1).
                 05 :COL:_STS_C23       DIC(SEQ_1).
                 05 :COL:_STS_C24       DIC(SEQ_1).
                 05 :COL:_STS_C25       DIC(SEQ_1).
                 05 :COL:_STS_C26       DIC(SEQ_1).
                 05 :COL:_STS_C27       DIC(SEQ_1).
                 05 :COL:_STS_C28       DIC(SEQ_1).
                 05 :COL:_STS_C29       DIC(SEQ_1).
                 05 :COL:_STS_C30       DIC(SEQ_1).
                 05 :COL:_STS_C31       DIC(SEQ_1).
                 05 :COL:_STS_C32       DIC(SEQ_1).
           03 :COL:_DISCOUNT_RATE  DIC(NMR_DENR, P).
           03 :COL:_COLL_USED_BAL  DIC(TBAL_S, P).
           03 :COL:_EXP_DATE       DIC(DT, P).
           03 :COL:_RMK1.
              49 :COL:_RMK1_LEN    PIC S9(4) COMP.
              49 :COL:_RMK1_TEXT   DIC(RMK_200).
           03 :COL:_RMK2.
              49 :COL:_RMK2_LEN    PIC S9(4) COMP.
              49 :COL:_RMK2_TEXT   DIC(RMK_200).
           03 :COL:_RMK3.
              49 :COL:_RMK3_LEN    PIC S9(4) COMP.
              49 :COL:_RMK3_TEXT   DIC(RMK_200).
           03 :COL:_RMK4.
              49 :COL:_RMK4_LEN    PIC S9(4) COMP.
              49 :COL:_RMK4_TEXT   DIC(RMK_200).
           03 :COL:_RMK5.
              49 :COL:_RMK5_LEN    PIC S9(4) COMP.
              49 :COL:_RMK5_TEXT   DIC(RMK_200).
           03 :COL:_MORTGAGE_NO    DIC(DESC_30).
           03 :COL:_MORT_REG_DATE  DIC(DT, P).
           03 :COL:_MORT_EXP_DATE  DIC(DT, P).
           03 :COL:_ORIG_VAL       DIC(TAMT_NS, P).
           03 :COL:_BRW_TYP        DIC(TYP).
           03 :COL:_ASSESS_CO      DIC(CI_CNM).
           03 :COL:_ASSE_N_VAL     DIC(TBAL_NS, P).
           03 :COL:_ASSESS_DATE    DIC(DT, P).
           03 :COL:_ASSESSOR       DIC(CI_CNM).
           03 :COL:_COL_LOC        DIC(ES_ADDR).
           03 :COL:_DEL_REASON     DIC(RMK_60).
           03 :COL:_OVER_SUP2      DIC(TLR_NO).
           03 :COL:_CRT_DATE       DIC(DT, P).
           03 :COL:_CRT_TLR        DIC(TLR_NO).
           03 :COL:_UPDTBL_DATE    DIC(DT, P).
           03 :COL:_UPDTBL_TLR     DIC(TLR_NO).
           03 :COL:_TS             PIC X(26).
      *@*CHECKSUM _1393836068
       #IFNDEF TABLE_CLTCOLO
       #DEFINE TABLE_CLTCOLO
           EXEC SQL DECLARE CLTCOLO TABLE
           (
             COLL_NO                  DEC(10, 0) NOT NULL,
             SEQ_NO                   DEC(3, 0) NOT NULL,
             COOWN_CINO               CHAR(12) NOT NULL,
             COOWN_ENAME              CHAR(140) NOT NULL,
             MAIN_FLG                 CHAR(1) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             COOWN_CNAME              CHAR(140) NOT NULL,
             PROV_TYP                 CHAR(1) NOT NULL,
             COLL_TYP                 DEC(4, 0) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCOLO                            *
      ******************************************************************
       01  CLR:COLO:.
           03 :COLO:_KEY.
              05 :COLO:_COLL_NO    DIC(GTEE_NO, P).
              05 :COLO:_SEQ_NO     DIC(SEQ_3, P).
           03 :COLO:_COOWN_CINO    DIC(CI_NO).
           03 :COLO:_COOWN_ENAME   DIC(CI_ENM).
           03 :COLO:_MAIN_FLG      DIC(FLG).
                 88 :COLO:_MAIN_Y       VALUE 'Y'.
                 88 :COLO:_MAIN_N       VALUE 'N'.
           03 :COLO:_R_TYPE        DIC(TYP).
                 88 :COLO:_R_N          VALUE 'N'.
                 88 :COLO:_R_D          VALUE 'D'.
           03 :COLO:_COOWN_CNAME   DIC(CI_CNM).
           03 :COLO:_PROV_TYP      DIC(TYP).
           03 :COLO:_COLL_TYP      DIC(COL_KND, P).
           03 :COLO:_CRT_DATE      DIC(DT, P).
           03 :COLO:_CRT_TLR       DIC(TLR_NO).
           03 :COLO:_UPDTBL_DATE   DIC(DT, P).
           03 :COLO:_UPDTBL_TLR    DIC(TLR_NO).
           03 :COLO:_TS            PIC X(26).
      *@*CHECKSUM 579572577
       #IFNDEF TABLE_CLTCRSK
       #DEFINE TABLE_CLTCRSK
           EXEC SQL DECLARE CLTCRSK TABLE
           (
             CNTRY                    CHAR(4) NOT NULL,
             LMT_NO                   DEC(10, 0) NOT NULL,
             AC_NO                    CHAR(25) NOT NULL,
             LOAN_NO                  CHAR(25) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             PROD_CODE                CHAR(8) NOT NULL,
             CNTRY_LMT_NO             DEC(10, 0) NOT NULL,
             LMT_CODE                 CHAR(8) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             AMT                      DEC(18, 2) NOT NULL,
             INPUT_DATE               DEC(8, 0) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             EFF_DAYS                 DEC(6, 0) NOT NULL,
             PROD_DESC                CHAR(60) NOT NULL,
             CI_NAME                  CHAR(140) NOT NULL,
             INDTY                    CHAR(5) NOT NULL,
             GRP_CI_NO                CHAR(12) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCRSK                            *
      ******************************************************************
       01  CLR:CRSK:.
           03 :CRSK:_KEY.
              05 :CRSK:_CNTRY      DIC(CNTYS_CD).
              05 :CRSK:_LMT_NO     DIC(LMT_NO, P).
              05 :CRSK:_AC_NO      DIC(CTA_NO).
              05 :CRSK:_LOAN_NO    DIC(LN_AC).
              05 :CRSK:_CCY        DIC(CCY).
              05 :CRSK:_PROD_CODE  DIC(PROD_CD).
           03 :CRSK:_CNTRY_LMT_NO  DIC(LMT_NO, P).
           03 :CRSK:_LMT_CODE      DIC(LMT_KND).
           03 :CRSK:_CI_NO         DIC(CI_NO).
           03 :CRSK:_AMT           DIC(TBAL_S, P).
           03 :CRSK:_INPUT_DATE    DIC(DT, P).
           03 :CRSK:_EFF_DATE      DIC(DT, P).
           03 :CRSK:_EXP_DATE      DIC(DT, P).
           03 :CRSK:_EFF_DAYS      DIC(I_DAYS, P).
           03 :CRSK:_PROD_DESC     DIC(DESC_30).
           03 :CRSK:_CI_NAME       DIC(CI_CNM).
           03 :CRSK:_INDTY         DIC(CIIND_CD).
           03 :CRSK:_GRP_CI_NO     DIC(CI_NO).
           03 :CRSK:_CRT_DATE      DIC(DT, P).
           03 :CRSK:_CRT_TLR       DIC(TLR_NO).
           03 :CRSK:_UPDTBL_DATE   DIC(DT, P).
           03 :CRSK:_UPDTBL_TLR    DIC(TLR_NO).
           03 :CRSK:_TS            PIC X(26).
      *@*CHECKSUM _1079445222
       #IFNDEF TABLE_CLTCSLR
       #DEFINE TABLE_CLTCSLR
           EXEC SQL DECLARE CLTCSLR TABLE
           (
             LMT_NO                   DEC(10, 0) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             BUS_TYP                  CHAR(1) NOT NULL,
             UN_BANK                  CHAR(140) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCSLR                            *
      ******************************************************************
       01  CLR:CSLR:.
           03 :CSLR:_KEY.
              05 :CSLR:_LMT_NO     DIC(LMT_NO, P).
              05 :CSLR:_CI_NO      DIC(CI_NO).
           03 :CSLR:_R_TYPE        DIC(TYP).
                 88 :CSLR:_R_N          VALUE 'N'.
                 88 :CSLR:_R_D          VALUE 'D'.
           03 :CSLR:_BUS_TYP       DIC(TYP).
           03 :CSLR:_UN_BANK       DIC(CI_ENM).
           03 :CSLR:_CRT_DATE      DIC(DT, P).
           03 :CSLR:_CRT_TLR       DIC(TLR_NO).
           03 :CSLR:_UPDTBL_DATE   DIC(DT, P).
           03 :CSLR:_UPDTBL_TLR    DIC(TLR_NO).
           03 :CSLR:_TS            PIC X(26).
      *@*CHECKSUM 539947032
       #IFNDEF TABLE_CLTCTL
       #DEFINE TABLE_CLTCTL
           EXEC SQL DECLARE CLTCTL TABLE
           (
             LMT_NO                   DEC(10, 0) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             TYPE                     CHAR(1) NOT NULL,
             UNRATE_BANK              CHAR(140) NOT NULL,
             INSUR_CI_NO              CHAR(12) NOT NULL,
             RAT_BAND                 CHAR(5) NOT NULL,
             DIVISION                 DEC(6, 0) NOT NULL,
             CNTRY                    CHAR(4) NOT NULL,
             INDUS                    CHAR(5) NOT NULL,
             CONTINENT                CHAR(2) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             MAX                      DEC(18, 2) NOT NULL,
             CUM                      DEC(18, 2) NOT NULL,
             EMK                      DEC(18, 2) NOT NULL,
             AVA                      DEC(18, 2) NOT NULL,
             NET_AVA                  DEC(18, 2) NOT NULL,
             MAX_TERM1                DEC(18, 2) NOT NULL,
             MAX_TERM2                DEC(18, 2) NOT NULL,
             CUM_TERM1                DEC(18, 2) NOT NULL,
             CUM_TERM2                DEC(18, 2) NOT NULL,
             EMK_TERM1                DEC(18, 2) NOT NULL,
             EMK_TERM2                DEC(18, 2) NOT NULL,
             AVA_TERM1                DEC(18, 2) NOT NULL,
             AVA_TERM2                DEC(18, 2) NOT NULL,
             NET_AVA_TERM1            DEC(18, 2) NOT NULL,
             NET_AVA_TERM2            DEC(18, 2) NOT NULL,
             INFI_LMT_IND             CHAR(1) NOT NULL,
             CNTY_RATING              CHAR(5) NOT NULL,
             SP                       CHAR(5) NOT NULL,
             MOODY                    CHAR(5) NOT NULL,
             FITCH                    CHAR(5) NOT NULL,
             BASEL                    CHAR(5) NOT NULL,
             RATING6                  CHAR(5) NOT NULL,
             RATING7                  CHAR(5) NOT NULL,
             RATING8                  CHAR(5) NOT NULL,
             RATING9                  CHAR(5) NOT NULL,
             RATING10                 CHAR(5) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             RMK                      CHAR(240) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTCTL                             *
      ******************************************************************
       01  CLR:CTL:.
           03 :CTL:_KEY.
              05 :CTL:_LMT_NO      DIC(LMT_NO, P).
           03 :CTL:_R_TYPE         DIC(TYP).
                88 :CTL:_R_N               VALUE 'N'.
                88 :CTL:_R_D               VALUE 'D'.
           03 :CTL:_TYPE           DIC(TYP).
                88 :CTL:_CNTY              VALUE 'C'.
                88 :CTL:_INDU              VALUE 'I'.
                88 :CTL:_UNRA              VALUE 'U'.
                88 :CTL:_INSU              VALUE 'P'.
                88 :CTL:_RATI              VALUE 'R'.
                88 :CTL:_IGBF              VALUE 'G'.
           03 :CTL:_UNRATE_BANK    DIC(CI_ENM).
           03 :CTL:_INSUR_CI_NO    DIC(CI_NO).
           03 :CTL:_RAT_BAND       DIC(FREE_CD5).
           03 :CTL:_DIVISION       DIC(BR, P).
           03 :CTL:_CNTRY          DIC(CNTYS_CD).
           03 :CTL:_INDUS          DIC(CIIND_CD).
           03 :CTL:_CONTINENT      DIC(RGTYP_CD).
           03 :CTL:_CCY            DIC(CCY).
           03 :CTL:_MAX            DIC(TBAL_S, P).
           03 :CTL:_CUM            DIC(TAMT_S, P).
           03 :CTL:_EMK            DIC(TAMT_S, P).
           03 :CTL:_AVA            DIC(TAMT_S, P).
           03 :CTL:_NET_AVA        DIC(TBAL_S, P).
           03 :CTL:_MAX_TERM1      DIC(TBAL_S, P).
           03 :CTL:_MAX_TERM2      DIC(TBAL_S, P).
           03 :CTL:_CUM_TERM1      DIC(TAMT_S, P).
           03 :CTL:_CUM_TERM2      DIC(TAMT_S, P).
           03 :CTL:_EMK_TERM1      DIC(TAMT_S, P).
           03 :CTL:_EMK_TERM2      DIC(TAMT_S, P).
           03 :CTL:_AVA_TERM1      DIC(TAMT_S, P).
           03 :CTL:_AVA_TERM2      DIC(TAMT_S, P).
           03 :CTL:_NET_AVA_TERM1  DIC(TBAL_S, P).
           03 :CTL:_NET_AVA_TERM2  DIC(TBAL_S, P).
           03 :CTL:_INFI_LMT_IND   DIC(FLG).
           03 :CTL:_CNTY_RATING    DIC(FREE_CD5).
           03 :CTL:_SP             DIC(FREE_CD5).
           03 :CTL:_MOODY          DIC(FREE_CD5).
           03 :CTL:_FITCH          DIC(FREE_CD5).
           03 :CTL:_BASEL          DIC(FREE_CD5).
           03 :CTL:_RATING6        DIC(FREE_CD5).
           03 :CTL:_RATING7        DIC(FREE_CD5).
           03 :CTL:_RATING8        DIC(FREE_CD5).
           03 :CTL:_RATING9        DIC(FREE_CD5).
           03 :CTL:_RATING10       DIC(FREE_CD5).
           03 :CTL:_EFF_DATE       DIC(DT, P).
           03 :CTL:_EXP_DATE       DIC(DT, P).
           03 :CTL:_RMK            DIC(RMK_120).
           03 :CTL:_CRT_DATE       DIC(DT, P).
           03 :CTL:_CRT_TLR        DIC(TLR_NO).
           03 :CTL:_UPDTBL_DATE    DIC(DT, P).
           03 :CTL:_UPDTBL_TLR     DIC(TLR_NO).
           03 :CTL:_TS             PIC X(26).
      *@*CHECKSUM 1754378234
       #IFNDEF TABLE_CLTDP2
       #DEFINE TABLE_CLTDP2
           EXEC SQL DECLARE CLTDP2 TABLE
           (
             COLL_NO                  DEC(10, 0) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             FD_AC                    CHAR(25) NOT NULL,
             SER_NO                   DEC(6, 0) NOT NULL,
             AC_NM                    CHAR(140) NOT NULL,
             AC_TYP                   CHAR(1) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             PRIN                     DEC(16, 2) NOT NULL,
             AC_STS                   CHAR(1) NOT NULL,
             HO_CO1                   CHAR(2) NOT NULL,
             HO_CO2                   CHAR(2) NOT NULL,
             HO_CO3                   CHAR(2) NOT NULL,
             HO_CO4                   CHAR(2) NOT NULL,
             TENOR                    DEC(3, 0) NOT NULL,
             TEN_UN                   CHAR(1) NOT NULL,
             MAT_DT                   DEC(8, 0) NOT NULL,
             COU_TYP                  CHAR(1) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTDP2                             *
      ******************************************************************
       01  CLR:DP2:.
           03 :DP2:_KEY.
              05 :DP2:_COLL_NO     DIC(GTEE_NO, P).
           03 :DP2:_R_TYPE         DIC(TYP).
                 88 :DP2:_R_N            VALUE 'N'.
                 88 :DP2:_R_D            VALUE 'D'.
                 88 :DP2:_R_A            VALUE 'A'.
           03 :DP2:_FD_AC          DIC(AC).
           03 :DP2:_SER_NO         DIC(NUM_6, P).
           03 :DP2:_AC_NM          DIC(CI_ENM).
           03 :DP2:_AC_TYP         DIC(TYP).
           03 :DP2:_CCY            DIC(CCY).
           03 :DP2:_PRIN           DIC(AMT, P).
           03 :DP2:_AC_STS         DIC(STS).
           03 :DP2:_HO_CO1         DIC(STS_CD).
           03 :DP2:_HO_CO2         DIC(STS_CD).
           03 :DP2:_HO_CO3         DIC(STS_CD).
           03 :DP2:_HO_CO4         DIC(STS_CD).
           03 :DP2:_TENOR          DIC(SEQ_3, P).
           03 :DP2:_TEN_UN         DIC(OPT).
           03 :DP2:_MAT_DT         DIC(DT, P).
           03 :DP2:_COU_TYP        DIC(TYP).
           03 :DP2:_CRT_DATE       DIC(DT, P).
           03 :DP2:_CRT_TLR        DIC(TLR_NO).
           03 :DP2:_UPDTBL_DATE    DIC(DT, P).
           03 :DP2:_UPDTBL_TLR     DIC(TLR_NO).
           03 :DP2:_TS             PIC X(26).
      *@*CHECKSUM 2121008895
       #IFNDEF TABLE_CLTEMK
       #DEFINE TABLE_CLTEMK
           EXEC SQL DECLARE CLTEMK TABLE
           (
             R_TYPE                   CHAR(1) NOT NULL,
             AC_DT                    DEC(8, 0) NOT NULL,
             JRNNO                    DEC(12, 0) NOT NULL,
             LMT_NO                   DEC(10, 0) NOT NULL,
             TYPE                     CHAR(1) NOT NULL,
             CI_NO                    CHAR(12) NOT NULL,
             REF_NO                   CHAR(16) NOT NULL,
             FULL_EMK_FLAG            CHAR(1) NOT NULL,
             CCY                      CHAR(3) NOT NULL,
             AMT                      DEC(18, 2) NOT NULL,
             AMT_TERM1                DEC(18, 2) NOT NULL,
             AMT_TERM2                DEC(18, 2) NOT NULL,
             UPTO_TOP_FLAG            CHAR(1) NOT NULL,
             EFF_DATE                 DEC(8, 0) NOT NULL,
             EXP_DATE                 DEC(8, 0) NOT NULL,
             RMK                      CHAR(240) NOT NULL,
             STATUS                   CHAR(1) NOT NULL,
             DIVISION                 DEC(6, 0) NOT NULL,
             USER_NAME                CHAR(140) NOT NULL,
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
      * COBOL DECLARATION FOR TABLE CLTEMK                             *
      ******************************************************************
       01  CLR:EMK:.
           03 :EMK:_KEY.
              05 :EMK:_R_TYPE      DIC(TYP).
                 88 :EMK:_R_N           VALUE 'N'.
                 88 :EMK:_R_D           VALUE 'D'.
                 88 :EMK:_R_A           VALUE 'A'.
              05 :EMK:_AC_DT       DIC(DT, P).
              05 :EMK:_JRNNO       DIC(JRNNO, P).
              05 :EMK:_LMT_NO      DIC(LMT_NO, P).
           03 :EMK:_TYPE           DIC(TYP).
                 88 :EMK:_CUS           VALUE 'L'.
                 88 :EMK:_CNTY          VALUE 'C'.
           03 :EMK:_CI_NO          DIC(CI_NO).
           03 :EMK:_REF_NO         DIC(REF_NO).
           03 :EMK:_FULL_EMK_FLAG  DIC(FLG).
           03 :EMK:_CCY            DIC(CCY).
           03 :EMK:_AMT            DIC(TBAL_S, P).
           03 :EMK:_AMT_TERM1      DIC(TBAL_S, P).
           03 :EMK:_AMT_TERM2      DIC(TBAL_S, P).
           03 :EMK:_UPTO_TOP_FLAG  DIC(FLG).
           03 :EMK:_EFF_DATE       DIC(DT, P).
           03 :EMK:_EXP_DATE       DIC(DT, P).
           03 :EMK:_RMK            DIC(RMK_120).
           03 :EMK:_STATUS         DIC(STS).
           03 :EMK:_DIVISION       DIC(BR, P).
           03 :EMK:_USER_NAME      DIC(CI_ENM).
           03 :EMK:_REC_STATUS     DIC(REC_STS).
                 88 :EMK:_UNCONF_ADD    VALUE 'A'.
                 88 :EMK:_UNCONF_UPD    VALUE 'U'.
                 88 :EMK:_UNCONF_DEL    VALUE 'D'.
           03 :EMK:_UNCONFMD_UNIT  DIC(BR, P).
           03 :EMK:_CREATE_DATE    DIC(DT, P).
           03 :EMK:_CREATE_TL      DIC(TLR_NO).
           03 :EMK:_CREATE_UNIT    DIC(BR, P).
           03 :EMK:_UPDATE_DATE    DIC(DT, P).
           03 :EMK:_UPDATE_TL      DIC(TLR_NO).
           03 :EMK:_UPDATE_UNIT    DIC(BR, P).
           03 :EMK:_CONF_UNIT      DIC(BR, P).
           03 :EMK:_CONF_SUP       DIC(TLR_NO).
           03 :EMK:_CONF_DATE      DIC(DT, P).
           03 :EMK:_OVER_SUP1      DIC(TLR_NO).
           03 :EMK:_OVER_SUP2      DIC(TLR_NO).
           03 :EMK:_VER_NO         DIC(VER_NO, P).
           03 :EMK:_UPDTBL_DATE    DIC(DT, P).
           03 :EMK:_TS             PIC X(26).
      *@*CHECKSUM 554069276
       #IFNDEF TABLE_CLTEQP2
       #DEFINE TABLE_CLTEQP2
           EXEC SQL DECLARE CLTEQP2 TABLE
           (
             COLL_NO                  DEC(10, 0) NOT NULL,
             R_TYPE                   CHAR(1) NOT NULL,
             EQU_DES1                 CHAR(100) NOT NULL,
             EQU_DES2                 CHAR(100) NOT NULL,
             EQU_DES3                 CHAR(100) NOT NULL,
             EQP_TYP                  CHAR(10) NOT NULL,
             SER_NUM                  CHAR(120) NOT NULL,
             MFACTUR                  CHAR(140) NOT NULL,
             BRAND                    CHAR(120) NOT NULL,
             MOD_NUM                  CHAR(120) NOT NULL,
             MAMU_YR                  DEC(4, 0) NOT NULL,
             OPER_CNA                 CHAR(140) NOT NULL,
             OPER_ENA                 CHAR(140) NOT NULL,
             LOC_COUNTRY              CHAR(4) NOT NULL,
             LOC_DISTRICT             CHAR(4) NOT NULL,
             QUANTITY                 DEC(4, 0) NOT NULL,
             INV_NUM                  CHAR(60) NOT NULL,
             INV_DT                   DEC(8, 0) NOT NULL,
             SUP_OUT_LIST             CHAR(140) NOT NULL,
             USED_FLG                 CHAR(1) NOT NULL,
             FST_INSP_DT              DEC(8, 0) NOT NULL,
             LST_INSP_DT              DEC(8, 0) NOT NULL,
             NXT_INSP_DT              DEC(8, 0) NOT NULL,
             INSP_MAN_CNM             CHAR(140) NOT NULL,
             INSP_MAN_ENM             CHAR(140) NOT NULL,
             INSP_MAN_TEL             CHAR(18) NOT NULL,
             INSP_RESUL               CHAR(120) NOT NULL,
             COST_CCY                 CHAR(3) NOT NULL,
             COST_AMT                 DEC(18, 2) NOT NULL,
             VSR                      DEC(18, 2) NOT NULL,
             USE_LIFE                 DEC(2, 0) NOT NULL,
             DEP_VAL                  DEC(18, 2) NOT NULL,
             PUR_NAME                 CHAR(140) NOT NULL,
             LOC_ADDR1                CHAR(80) NOT NULL,
             LOC_ADDR2                CHAR(80) NOT NULL,
             LOC_ADDR3                CHAR(80) NOT NULL,
             LOC_ADDR4                CHAR(80) NOT NULL,
             LOC_ADDR_CN1             CHAR(80) NOT NULL,
             LOC_ADDR_CN2             CHAR(80) NOT NULL,
             LOC_ADDR_CN3             CHAR(80) NOT NULL,
             LOC_ADDR_CN4             CHAR(80) NOT NULL,
             CRT_DATE                 DEC(8, 0) NOT NULL,
             CRT_TLR                  CHAR(8) NOT NULL,
             UPDTBL_DATE              DEC(8, 0) NOT NULL,
             UPDTBL_TLR               CHAR(8) NOT NULL,
             TS                       TIMESTAMP NOT NULL
           )
           END_EXEC.
       #ENDIF
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CLTEQP2                            *
      ******************************************************************
       01  CLR:EQP2:.
           03 :EQP2:_KEY.
              05 :EQP2:_COLL_NO    DIC(GTEE_NO, P).
           03 :EQP2:_R_TYPE        DIC(TYP).
                88 :EQP2:_R_N           VALUE 'N'.
                88 :EQP2:_R_D           VALUE 'D'.
           03 :EQP2:_EQU_DES1      DIC(DESC_50).
           03 :EQP2:_EQU_DES2      DIC(DESC_50).
           03 :EQP2:_EQU_DES3      DIC(DESC_50).
           03 :EQP2:_EQP_TYP       DIC(X10).
           03 :EQP2:_SER_NUM       DIC(DESC_60).
           03 :EQP2:_MFACTUR       DIC(CI_ENM).
           03 :EQP2:_BRAND         DIC(DESC_120).
           03 :EQP2:_MOD_NUM       DIC(DESC_120).
           03 :EQP2:_MAMU_YR       DIC(YR, P).
           03 :EQP2:_OPER_CNA      DIC(CI_CNM).
           03 :EQP2:_OPER_ENA      DIC(CI_ENM).
           03 :EQP2:_LOC_COUNTRY   DIC(CNTYS_CD).
           03 :EQP2:_LOC_DISTRICT  DIC(CNTYS_CD).
           03 :EQP2:_QUANTITY      DIC(NUM, P).
           03 :EQP2:_INV_NUM       DIC(DESC_30).
           03 :EQP2:_INV_DT        DIC(DT, P).
           03 :EQP2:_SUP_OUT_LIST  DIC(CI_ENM).
           03 :EQP2:_USED_FLG      DIC(TYP).
                88 :EQP2:_NEW           VALUE '0'.
                88 :EQP2:_USED          VALUE '1'.
           03 :EQP2:_FST_INSP_DT   DIC(DT, P).
           03 :EQP2:_LST_INSP_DT   DIC(DT, P).
           03 :EQP2:_NXT_INSP_DT   DIC(DT, P).
           03 :EQP2:_INSP_MAN_CNM  DIC(CI_CNM).
           03 :EQP2:_INSP_MAN_ENM  DIC(CI_ENM).
           03 :EQP2:_INSP_MAN_TEL  DIC(TEL_NO).
           03 :EQP2:_INSP_RESUL    DIC(DESC_120).
           03 :EQP2:_COST_CCY      DIC(CCY).
           03 :EQP2:_COST_AMT      DIC(TAMT_NS, P).
           03 :EQP2:_VSR           DIC(TAMT_NS, P).
           03 :EQP2:_USE_LIFE      DIC(SEQ_2, P).
           03 :EQP2:_DEP_VAL       DIC(TAMT_NS, P).
           03 :EQP2:_PUR_NAME      DIC(CI_ENM).
           03 :EQP2:_LOC_ADDR1     DIC(RMK_80).
           03 :EQP2:_LOC_ADDR2     DIC(RMK_80).
           03 :EQP2:_LOC_ADDR3     DIC(RMK_80).
           03 :EQP2:_LOC_ADDR4     DIC(RMK_80).
           03 :EQP2:_LOC_ADDR_CN1  DIC(RMK_40_M).
           03 :EQP2:_LOC_ADDR_CN2  DIC(RMK_40_M).
           03 :EQP2:_LOC_ADDR_CN3  DIC(RMK_40_M).
           03 :EQP2:_LOC_ADDR_CN4  DIC(RMK_40_M).
           03 :EQP2:_CRT_DATE      DIC(DT, P).
           03 :EQP2:_CRT_TLR       DIC(TLR_NO).
           03 :EQP2:_UPDTBL_DATE   DIC(DT, P).
           03 :EQP2:_UPDTBL_TLR    DIC(TLR_NO).
           03 :EQP2:_TS            PIC X(26).
      *@*CHECKSUM _1492357290

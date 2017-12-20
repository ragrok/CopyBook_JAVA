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

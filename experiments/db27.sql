DROP DATABASE IF EXISTS ssb27; 
CREATE DATABASE ssb27; 
USE ssb27;

CREATE TABLE lineorder (
  LO_OrderKey               BIGINT(20)    NOT NULL,
  LO_LineNumber             TINYINT(4)    NOT NULL,
  C_CustomerKey             INT(11) NOT NULL,
  C_Name                    VARCHAR(25) NULL DEFAULT NULL,
  C_Address                 VARCHAR(25) NULL DEFAULT NULL,
  C_City                    VARCHAR(10) NULL DEFAULT NULL,
  C_Nation                  VARCHAR(15) NULL DEFAULT NULL,
  C_Region                  VARCHAR(12) NULL DEFAULT NULL,
  C_Phone                   VARCHAR(15) NULL DEFAULT NULL,
  C_MktSegment              VARCHAR(10) NULL DEFAULT NULL,
  P_PartKey                 INT(11)     NOT NULL,
  P_Name                    VARCHAR(25) NULL DEFAULT NULL,
  P_MFGR                    VARCHAR(10) NULL DEFAULT NULL,
  P_Category                VARCHAR(10) NULL DEFAULT NULL,
  P_Brand                   VARCHAR(15) NULL DEFAULT NULL,
  P_Colour                  VARCHAR(15) NULL DEFAULT NULL,
  P_Type                    VARCHAR(25) NULL DEFAULT NULL,
  P_Size                    TINYINT(4)  NULL DEFAULT NULL,
  P_Container               CHAR(10)    NULL DEFAULT NULL,
  S_SuppKey                 INT(11)     NOT NULL,
  S_Name                    CHAR(25)    NULL DEFAULT NULL,
  S_Address                 VARCHAR(25) NULL DEFAULT NULL,
  S_City                    CHAR(10)    NULL DEFAULT NULL,
  S_Nation                  CHAR(15)    NULL DEFAULT NULL,
  S_Region                  CHAR(12)    NULL DEFAULT NULL,
  S_Phone                   CHAR(15)    NULL DEFAULT NULL,
  D_Order_DateKey           INT(11)     NOT NULL,
  D_Order_Date              CHAR(18)    NULL DEFAULT NULL,
  D_Order_DayOfWeek         CHAR(9)     NULL DEFAULT NULL,
  D_Order_Month             CHAR(9)     NULL DEFAULT NULL,
  D_Order_Year              SMALLINT(6) NULL DEFAULT NULL,
  D_Order_YearMonthNum      INT(11)     NULL DEFAULT NULL,
  D_Order_YearMonth         CHAR(7)     NULL DEFAULT NULL,
  D_Order_DayNumInWeek      TINYINT(4)  NULL DEFAULT NULL,
  D_Order_DayNumInMonth     TINYINT(4)  NULL DEFAULT NULL,
  D_Order_DayNumInYear      SMALLINT(6) NULL DEFAULT NULL,
  D_Order_MonthNumInYear    TINYINT(4)  NULL DEFAULT NULL,
  D_Order_WeekNumInYear     TINYINT(4)  NULL DEFAULT NULL,
  D_Order_SellingSeason     CHAR(12)    NULL DEFAULT NULL,
  D_Order_LastDayInWeekFl   TINYINT(4)  NULL DEFAULT NULL,
  D_Order_LastDayInMonthFl  TINYINT(4)  NULL DEFAULT NULL,
  D_Order_HolidayFl         TINYINT(4)  NULL DEFAULT NULL,
  D_Order_WeekDayFl         TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_DateKey          INT(11)     NOT NULL,
  D_Commit_Date             CHAR(18)    NULL DEFAULT NULL,
  D_Commit_DayOfWeek        CHAR(9)     NULL DEFAULT NULL,
  D_Commit_Month            CHAR(9)     NULL DEFAULT NULL,
  D_Commit_Year             SMALLINT(6) NULL DEFAULT NULL,
  D_Commit_YearMonthNum     INT(11)     NULL DEFAULT NULL,
  D_Commit_YearMonth        CHAR(7)     NULL DEFAULT NULL,
  D_Commit_DayNumInWeek     TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_DayNumInMonth    TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_DayNumInYear     SMALLINT(6) NULL DEFAULT NULL,
  D_Commit_MonthNumInYear   TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_WeekNumInYear    TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_SellingSeason    CHAR(12)    NULL DEFAULT NULL,
  D_Commit_LastDayInWeekFl  TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_LastDayInMonthFl TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_HolidayFl        TINYINT(4)  NULL DEFAULT NULL,
  D_Commit_WeekDayFl        TINYINT(4)  NULL DEFAULT NULL,
  LO_OrderPriority          VARCHAR(15)   NULL DEFAULT NULL,
  LO_ShipPriority           CHAR(1)       NULL DEFAULT NULL,
  LO_Quantity               TINYINT(4)    NULL DEFAULT NULL,
  LO_ExtendedPrice          DECIMAL(10,0) NULL DEFAULT NULL,
  LO_OrdTotalPrice          DECIMAL(10,0) NULL DEFAULT NULL,
  LO_Discount               DECIMAL(10,0) NULL DEFAULT NULL,
  LO_Revenue                DECIMAL(10,0) NULL DEFAULT NULL,
  LO_SupplyCost             DECIMAL(10,0) NULL DEFAULT NULL,
  LO_Tax                    TINYINT(4)    NULL DEFAULT NULL,
  LO_ShipMode               VARCHAR(10)   NULL DEFAULT NULL
);

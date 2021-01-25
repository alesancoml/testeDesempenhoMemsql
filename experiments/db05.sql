DROP DATABASE IF EXISTS ssb05; 
CREATE DATABASE ssb05; 
USE ssb05;

CREATE TABLE            customer(
  C_CustomerKey         INT(11)       NOT NULL,
  C_Name                VARCHAR(25)   NOT NULL,
  C_Address             VARCHAR(25)   NOT NULL,
  C_City                VARCHAR(10)   NOT NULL,
  C_Nation              VARCHAR(10)   NOT NULL,
  C_Region              VARCHAR(12)   NOT NULL,
  C_Phone               VARCHAR(15)   NOT NULL,
  C_MktSegment          VARCHAR(10)   NOT NULL,
  SHARD KEY (C_City)
);

CREATE TABLE            dim_date(
  D_DateKey             INT(11)       NOT NULL,
  D_Date                CHAR(18)      NULL DEFAULT NULL,
  D_DayOfWeek           CHAR(9)       NULL DEFAULT NULL,
  D_Month               CHAR(9)       NULL DEFAULT NULL,
  D_Year                SMALLINT(6)   NULL DEFAULT NULL,
  D_YearMonthNum        INT(11)       NULL DEFAULT NULL,
  D_YearMonth           CHAR(7)       NULL DEFAULT NULL,
  D_DayNumInWeek        TINYINT(4)    NULL DEFAULT NULL,
  D_DayNumInMonth       TINYINT(4)    NULL DEFAULT NULL,
  D_DayNumInYear        SMALLINT(6)   NULL DEFAULT NULL,
  D_MonthNumInYear      TINYINT(4)    NULL DEFAULT NULL,
  D_WeekNumInYear       TINYINT(4)    NULL DEFAULT NULL,
  D_SellingSeason       CHAR(12)      NULL DEFAULT NULL,
  D_LastDayInWeekFl     TINYINT(4)    NULL DEFAULT NULL,
  D_LastDayInMonthFl    TINYINT(4)    NULL DEFAULT NULL,
  D_HolidayFl           TINYINT(4)    NULL DEFAULT NULL,
  D_WeekDayFl           TINYINT(4)    NULL DEFAULT NULL,
  SHARD KEY (D_YearMonthNum)
);

CREATE TABLE            part(
  P_PartKey             INT(11)       NOT NULL,
  P_Name                VARCHAR(25)   NOT NULL,
  P_MFGR                VARCHAR(10)   NOT NULL,
  P_Category            VARCHAR(10)   NOT NULL,
  P_Brand               VARCHAR(15)   NOT NULL,
  P_Colour              VARCHAR(15)   NOT NULL,
  P_Type                VARCHAR(25)   NOT NULL,
  P_Size                TINYINT(4)    NOT NULL,
  P_Container           CHAR(10)      NOT NULL,
  SHARD KEY (P_Category)
);

CREATE TABLE            supplier(
  S_SuppKey             INT(11)       NOT NULL,
  S_Name                VARCHAR(25)   NOT NULL,
  S_Address             VARCHAR(25)   NOT NULL,
  S_City                VARCHAR(10)   NOT NULL,
  S_Nation              VARCHAR(10)   NOT NULL,
  S_Region              VARCHAR(12)   NOT NULL,
  S_Phone               VARCHAR(15)   NOT NULL,
  SHARD KEY (S_City)
);

CREATE TABLE            lineorder(
  LO_OrderKey           BIGINT(20)    NOT NULL,
  LO_LineNumber         TINYINT(4)    NOT NULL,
  LO_CustKey            INT(11)       NOT NULL,
  LO_PartKey            INT(11)       NOT NULL,
  LO_SuppKey            INT(11)       NOT NULL,
  LO_OrderDateKey       INT(11)       NOT NULL,
  LO_OrderPriority      VARCHAR(15)   NULL DEFAULT NULL,
  LO_ShipPriority       CHAR(1)       NULL DEFAULT NULL,
  LO_Quantity           TINYINT(4)    NULL DEFAULT NULL,
  LO_ExtendedPrice      DECIMAL(10,0) NULL DEFAULT NULL,
  LO_OrdTotalPrice      DECIMAL(10,0) NULL DEFAULT NULL,
  LO_Discount           DECIMAL(10,0) NULL DEFAULT NULL,
  LO_Revenue            DECIMAL(10,0) NULL DEFAULT NULL,
  LO_SupplyCost         DECIMAL(10,0) NULL DEFAULT NULL,
  LO_Tax                TINYINT(4)    NULL DEFAULT NULL,
  LO_CommitDateKey      INT(11)       NOT NULL,
  LO_ShipMode           VARCHAR(10)   NULL DEFAULT NULL,
  KEY(LO_OrderDateKey) USING CLUSTERED COLUMNSTORE
);

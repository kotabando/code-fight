create table emp_mst (
    emp_code    varchar(255) not null default "" primary key,
    emp_name    varchar(255)          default null,
    login_pw    varchar(255)          default null,
    tel         varchar(255)          default null,
    email       varchar(255)          default null,
    hire_date   varchar(255)          default null,
    hire_type   varchar(255)          default '0',
    occu_code   varchar(255) not null default "",
    dept_code   varchar(255) not null default "",
    start_date  varchar(255)          default null,
    update_date datetime              default current_timestamp,
    updater     varchar(255)          default null
);

insert into emp_mst (emp_code, emp_name, login_pw, tel, email, hire_date, hire_type, occu_code, dept_code, start_date, update_date, updater)
values
("10301", "乙部 有季羅", "10301", "0647-4860-1736", "cb15WXE@QGMwV.ne.jp", "2010-04-01", "0", "50", "320", "2005-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10308", "森広 浅彦", "10308", "0158-438-1407", "ZQSRq@OiXIq.ne.jp", "2020-04-01", "0", "50", "210", "2010-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10328", "七里 惟久磨", "10328", "033-440-5470", "RfgvAAee4@DaW5d5.com", "2009-03-31", "0", "50", "320", "2010-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10335", "志知 出", "10335", "074-2604-5041", "umoVwhp@B3hQzA.com", "2020-04-01", "0", "50", "210", "2005-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10354", "大井 大地", "10354", "0130-2712-8703", "6VFlBr@A9nE.co.jp", "2011-03-30", "0", "50", "320", "2010-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10362", "古橋 璃空", "10362", "065-2235-1574", "ZdNLxPlpom@xNrX.ne.jp", "2020-04-01", "0", "50", "210", "2005-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10381", "茶谷 実咲", "10381", "072-134-3346", "uatcpU2I@QAG96g.ne.jp", "2010-04-01", "0", "50", "210", "2010-04-01", "2020-11-10 16:42:52", "SYSTEM");

insert into emp_mst (emp_code, emp_name, login_pw, tel, email, hire_date, hire_type, occu_code, dept_code, start_date, update_date, updater)
values
("80001", "山田 次郎", "80001", "048-0000-1111", "80001@test.jp", "2021-04-01", "0", "50", "310", "2010-04-01", "2021-4-1 00:00:00", "SYSTEM");

update emp_mst set emp_name = trim(replace(emp_name, " ", ""));

insert into users (id, name, other)
values              (1, "kota bando", 100);

delete from emp_mst where hire_date < "2010-03-31"

create table dept_mst (
DEPT_CODE	     VARCHAR(255) not null default "",
START_DATE	     VARCHAR(255) not null default "",
END_DATE	     VARCHAR(255)	       default "2100-12-31",
DEPT_NAME	     VARCHAR(255)	       default NULL,
LAYER	         INTEGER	  not null default 0,
UP_DIVISION_CODE VARCHAR(255) not null default "",
SLIT_YN	         INTEGER	           default 1,
UPDATE_DATE    	 DATETIME    	       default CURRENT_TIMESTAMP,
UPDATER	         VARCHAR(255)	       default NULL,
primary key(DEPT_CODE, START_DATE)
);


insert into dept_mst(dept_code, start_date, end_date, dept_name, layer, up_division_code, slit_yn, update_date, updater)
values
("0", "2005-04-01",	"2010-03-31", "旧全社", "0", "0", "1", "2020-11-11 16:46:00", "SYSTEM"),
("0", "2010-04-01",	"2100-12-31", "全社", "0", "0",	"1", "2020-11-11 16:46:19", "SYSTEM"),
("100",	"2005-04-01", "2010-03-31",	"旧営業部", "1",	"0", "1", "2020-11-11 17:39:00", "SYSTEM"),
("100",	"2010-04-01", "2100-12-31",	"営業部", "1", "0",	"1", "2020-11-11 17:39:12", "SYSTEM"),
("200",	"2005-04-01", "2010-03-31",	"旧製造部", "1", "0", "1", "2020-11-11 17:39:00", "SYSTEM"),
("200",	"2010-04-01", "2100-12-31",	"製造部", "1", "0", "1", "2020-11-11 17:39:12", "SYSTEM"),
("300",	"2005-04-01", "2010-03-31",	"旧管理部",	"1", "0", "1", "2020-11-11 17:39:00", "SYSTEM"),
("300",	"2010-04-01", "2100-12-31",	"管理部", "1", "0",	"1", "2020-11-11 17:39:12", "SYSTEM"),
("400",	"2010-04-01", "2100-12-31",	"企画室", "1", "0",	"1", "2020-11-11 17:39:12", "SYSTEM"),
("500",	"2005-04-01", "2010-04-01",	"旧企画室",	"1", "0", "1", "2020-11-11 17:39:00", "SYSTEM"),
("600",	"2005-04-01", "2010-03-30",	"旧購買部",	"1", "0", "1", "2020-11-11 17:39:00", "SYSTEM");

insert into emp_mst (emp_code, emp_name, login_pw, tel, email, hire_date, hire_type, occu_code, dept_code, start_date, update_date, updater)
values
("10305", "田北 亜久登", "10305", "080-252-8185", "q5BCDcdUX@AvsKI.co.jp", "2020-04-01", "0", "50",	"200", "2010-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10312", "幸村 淳", "10312", "031-214-8756", "KDJlyAo@RsGRYq.co.jp", "2020-04-01",	"0", "50", "300", "2010-04-01",	"2020-11-10 16:42:52", "SYSTEM"),
("10320", "荻山 綾彦", "10320",	"0822-4077-4508", "nKRLl@PLRlu.com", "2020-04-01", "0",	"50", "200", "2005-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10332", "浜津 勇夫", "10332",	"0233-6872-4738", "fAp2rF@QxLFyT.com", "2020-04-01", "0", "50",	"200", "2005-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10339", "瀬戸川 一徹", "10339", "021-4185-3300", "9HxcdmFVqL@PRXa.com", "2020-04-01",	"0", "50", "100", "2010-04-01",	"2020-11-10 16:42:52", "SYSTEM"),
("10347", "栗下 浦彦", "10347",	"062-451-3861",	"cO7CPKQH@Cfbt3h.com", "2020-04-01", "0", "50",	"200", "2010-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10358", "大貫 颯人", "10358",	"081-4204-6162", "qI65KpRc@OWcO.ne.jp",	"2020-04-01", "0", "50", "200",	"2010-04-01", "2020-11-10 16:42:52",	"SYSTEM"),
("10366", "土岐 美羽", "10366",	"0330-240-6633", "n7WReU@CkhhS.co.jp", "2020-04-01", "0", "50",	"400", "2010-04-01", "2020-11-10 16:42:52", "SYSTEM"),
("10385", "浅海 愛士", "10385",	"0725-251-6333", "fMkvx@BqmWs.com",	"2020-04-01", "0", "50", "200",	"2005-04-01", "2020-11-10 16:42:52",	"SYSTEM"),
("10393", "林原 彰時", "10393",	"023-203-1266",	"9UsVkz3dk@9Jyq.ne.jp",	"2020-04-01", "0", "50", "100",	"2005-04-01", "2020-11-10 16:42:52",	"SYSTEM");

select dept_mst.dept_code as "部門コード", dept_name as "部門名", emp_code as "社員コード", emp_name as "社員名" from dept_mst inner join emp_mst on dept_mst.dept_code = emp_mst.emp_code and dept_mst.dept_name = emp_mst.emp_name order by dept_mst.dept_code, emp_code asc;

select dept_mst.dept_code as "部門コード", dept_name as "部門名", emp_code as "社員コード", emp_name as "社員名" from emp_mst inner join dept_mst on emp_mst.dept_code = dept_mst.dept_code order by dept_mst.dept_code, emp_code asc;


create table prod_spec1 (
    PROD_SPEC1_CODE	     VARCHAR(15) not null default "" primary key,
    PROD_SPEC1_NAME	     VARCHAR(3)	 not null default "",
    SORT_ORDER           INTEGER	 not null default 0,
    UPDATE_USER_NAME	 VARCHAR(50)		  default NULL,
    USER_UPDATE_DATETIME datetime		      default CURRENT_TIMESTAMP
);
create table prod_spec2 (
    PROD_SPEC2_CODE	     VARCHAR(15) not null default "" primary key,
    PROD_SPEC2_NAME	     VARCHAR(3)	 not null default "",
    SORT_ORDER           INTEGER	 not null default 0,
    UPDATE_USER_NAME	 VARCHAR(50)		  default NULL,
    USER_UPDATE_DATETIME datetime		      default CURRENT_TIMESTAMP
);

insert into prod_spec1 (PROD_SPEC1_CODE, PROD_SPEC1_NAME, SORT_ORDER, UPDATE_USER_NAME, USER_UPDATE_DATETIME)
values
("1", "白",	"1", "SYSTEM", "2021-09-06 5:55:13"),
("2", "赤",	"2", "SYSTEM", "2021-09-06 5:55:41"),
("3", "黒",	"3", "SYSTEM", "2021-09-06 5:55:54"),
("4", "青",	"4", "SYSTEM", "2021-09-06 5:56:18"),
("5", "黄",	"5", "SYSTEM", "2021-09-06 5:56:35");

insert into prod_spec2 (PROD_SPEC2_CODE, PROD_SPEC2_NAME, SORT_ORDER, UPDATE_USER_NAME, USER_UPDATE_DATETIME)
values
("1", "L",	"1", "SYSTEM", "2021-09-06 5:53:46"),
("2", "M",	"2", "SYSTEM", "2021-09-06 5:54:23"),
("3", "S",	"3", "SYSTEM", "2021-09-06 5:54:34");

select prod_spec1_code as "商品規格コード", prod_spec2_code as "商品規格コード", prod_spec1_name as "カラー", prod_spec2_name as "サイズ" from prod_spec1 cross join prod_spec2 order by prod_spec1_code, prod_spec2_code asc;
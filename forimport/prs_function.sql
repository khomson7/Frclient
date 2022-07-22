CREATE TABLE IF NOT EXISTS `prs_hisi_ari` (
  `vn` varchar(13) NOT NULL DEFAULT '',
  `hn` varchar(9) DEFAULT NULL,
  `pname` varchar(25) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `addrpart` varchar(50) DEFAULT NULL,
  `moopart` char(3) DEFAULT NULL,
  `tmbpart` char(2) DEFAULT NULL,
  `amppart` char(2) DEFAULT NULL,
  `chwpart` char(2) DEFAULT NULL,
  `road` varchar(50) DEFAULT NULL,
  `hometel` varchar(20) DEFAULT NULL,
  `bloodgrp` varchar(20) DEFAULT NULL,
  `bloodgroup_rh` varchar(5) DEFAULT NULL,
  `citizenship` char(3) DEFAULT NULL,
  `nationality` char(3) DEFAULT NULL,
  `religion` char(2) DEFAULT NULL,
  `cardno` varchar(20) DEFAULT NULL,
  `vstdate` date DEFAULT NULL,
  `vsttime` time DEFAULT NULL,
  `age_y` smallint(6) DEFAULT NULL,
  `age_m` smallint(6) DEFAULT NULL,
  `age_d` smallint(6) DEFAULT NULL,
  `hospmain` varchar(5) DEFAULT NULL,
  `hospsub` varchar(255) DEFAULT NULL,
  `pttype` char(2) DEFAULT NULL,
  `pttypeno` varchar(20) DEFAULT NULL,
  `hospcodes` varchar(5) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`vn`),
  UNIQUE KEY `idx` (`vn`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

CREATE TABLE IF NOT EXISTS `prs_doctor` (
  `doctor_code` varchar(15) DEFAULT NULL,
  `doctor_name` varchar(150) DEFAULT '',
  `licenseno` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

CREATE TABLE IF NOT EXISTS `prs_doctor_select` (
  `doctor_code` varchar(15) DEFAULT NULL,
  `nurse_code` varchar(15) DEFAULT NULL,
  UNIQUE KEY `idx` (`nurse_code`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

CREATE TABLE IF NOT EXISTS `prs_hici_doctor` (
  `doctor_code` varchar(15) DEFAULT NULL,
  `doctor` varchar(100) DEFAULT NULL,
  `doctor_fullname` varchar(100) DEFAULT NULL,
  `liceneno` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `prs_hici_hoscode` (
  `chwpart` char(2) NOT NULL,
  `amppart` char(2) NOT NULL,
  `tmbpart` char(2) NOT NULL,
  `moopart` char(2) NOT NULL,
  `hospcode` varchar(5) DEFAULT NULL,
  `hospname` varchar(100) DEFAULT NULL,
  `shortname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `wsc_covid_queue` (
  `queue_id` int(12) NOT NULL AUTO_INCREMENT,
  `vn` varchar(16) DEFAULT NULL,
  `hospcode` varchar(5) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `doctor_code` varchar(15) DEFAULT NULL,
  `nurse_code` varchar(15) DEFAULT NULL,
  `doctor_cert_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`queue_id`),
  UNIQUE KEY `q4u_queue_un` (`queue_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=tis620;

CREATE TABLE IF NOT EXISTS `wsc_serial` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `serial_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

DROP FUNCTION IF EXISTS `getDoctorHisi`;
DELIMITER ;;
CREATE DEFINER=`sa`@`%` FUNCTION `getDoctorHisi`(vns VARCHAR(15),ncodes VARCHAR(15)) RETURNS varchar(50) CHARSET tis620
BEGIN
	  
	declare xserial_no  int; 
  declare param1  int;



if vns='' then      
		select '0000' into vns;   
	end if; 


if param1='' then      
		select 'test' into param1;   
	end if;
 
SET @vns := LPAD(vns,4,0);
SET @ncodes := LPAD(ncodes,4,0);
  
/*DELETE FROM prs_doctor_select WHERE nurse_code = @ncodes;*/
REPLACE INTO prs_doctor_select(doctor_code,nurse_code)VALUE(@vns,@ncodes) ;
return xserial_no; 

END
;;
DELIMITER ;


DROP FUNCTION IF EXISTS `getSendhici`;
DELIMITER ;;
CREATE DEFINER=`sa`@`%` FUNCTION `getSendhici`(vns VARCHAR(50),hospcodes VARCHAR(5),state VARCHAR(3),doctors VARCHAR(15),nurses VARCHAR(15)) RETURNS varchar(100) CHARSET tis620
BEGIN
	
  declare serial_exist int;   
	declare xserial_no  int; 
  declare queueid  int; 
  declare queue_interview  int; 
  declare prio  int;
  declare prio_pre  int;
  declare pref  CHAR(1) DEFAULT '';
  declare param1  int;

	DECLARE hns  VARCHAR(255) DEFAULT '';
  DECLARE Title  VARCHAR(255) DEFAULT '';
  DECLARE FirstName  VARCHAR(255) DEFAULT '';
  DECLARE LastName  VARCHAR(255) DEFAULT '';
  DECLARE Birth  VARCHAR(255) DEFAULT '';
  DECLARE Psex  VARCHAR(255) DEFAULT '';


  DECLARE mdep  VARCHAR(255) DEFAULT '';
  DECLARE vsttimes  VARCHAR(255) DEFAULT '';
  DECLARE vstdates  VARCHAR(255) DEFAULT '';
  declare q_no  VARCHAR(10) DEFAULT '';
  declare q_mid  VARCHAR(10) DEFAULT '';
  DECLARE queue_no  VARCHAR(10) DEFAULT '';
  DECLARE serial_no1  VARCHAR(10) DEFAULT '';
  DECLARE serial_no2  VARCHAR(10) DEFAULT '';



            

select case when ovstist in('01','02') then main_dep else "00" end INTO mdep  from ovst where vn=vns limit 1; 


if vns='' then      
		select '0000' into vns;   
	end if; 


if param1='' then      
		select 'test' into param1;   
	end if;    

	select count(serial_no) into serial_exist from wsc_serial where name = '1' and serial_no is not null;  


if serial_exist = 0 then   
		delete from wsc_serial where name = param1 and serial_no is null;  
		insert into wsc_serial (name,serial_no) values (param1,0);  
	end if; 

if (select count(*) from wsc_serial WHERE `name` = '1') = 0 then     
		insert into wsc_serial (name,serial_no) values ('1',0);   
	end if;


select queue_id INTO serial_no2 from wsc_covid_queue ORDER BY queue_id desc LIMIT 1;


if (select count(*) from wsc_serial WHERE `name` = '1') = 0 then     
		insert into wsc_serial (name,serial_no) values ('1',serial_no2);   
	end if;


if (select count(*) from wsc_covid_queue q WHERE q.vn = vns) = 0 then     
		update wsc_serial SET serial_no = serial_no2 + 1 where  name = '1' ;
	end if;
 
	select serial_no into xserial_no from wsc_serial where name = '1';

 
SET @id := (SELECT queue_id FROM wsc_covid_queue where vn = vns);

DELETE FROM wsc_covid_queue WHERE vn = vns;


SET @hospcodes := LPAD(hospcodes,5,0);
SET @doctors := LPAD(doctors,4,0);
SET @nurses := LPAD(nurses,4,0);

REPLACE INTO wsc_covid_queue(queue_id,vn,hospcode,state,doctor_code,nurse_code) select ifnull(null,@id),o.vn,@hospcodes,state,@doctors,@nurses FROM ovst o where o.vn = vns AND o.vn not in(select vn from wsc_covid_queue);

REPLACE INTO prs_hisi_ari(vn,hn,pname,fname,lname,sex,addrpart,moopart,tmbpart,amppart,chwpart,road,hometel,bloodgrp,bloodgroup_rh
,citizenship,nationality,religion
,cardno,vstdate,vsttime,age_y,age_m,age_d,hospmain,hospsub,pttype,pttypeno,hospcodes,state)
select o1.vn,o1.hn,p.pname,p.fname,p.lname,p.sex,p.addrpart,p.moopart,p.tmbpart,p.amppart,p.chwpart,p.road,p.hometel,p.bloodgrp,p.bloodgroup_rh
,p.citizenship,p.nationality,p.religion
,(select cardno from ptcardno where hn = v1.hn) as cardno,o1.vstdate,o1.vsttime,v1.age_y,v1.age_m,v1.age_d,v1.hospmain,v1.hospsub,v1.pttype,v1.pttypeno
,hospcodes,state
    from ovst o1 
    left outer join vn_stat v1 on v1.vn = o1.vn 
    left outer join opdscreen s on s.vn = o1.vn 
    left outer join patient p on p.hn = o1.hn 
    left outer join pttype p2 on p2.pttype = v1.pttype
    where o1.vn = vns;

select serial_no INTO serial_no1 from wsc_serial where name = '1';

SET @serial_no := (select serial_no+1 from serial WHERE `name` = 'doctor_cert_id');

UPDATE wsc_covid_queue SET doctor_cert_id = @serial_no where vn = vns;

set @hospname :=(select hospitalname FROM opdconfig);

INSERT INTO doctor_cert(doctor_cert_id,doctor_code,ptname,hn,vn,doctor_name,doctor_license_no,staff,hospital_name,last_print_datetime,an)
select @serial_no,t.*,@hospname,NOW(),'' FROM
(select (select doctor_code FROM wsc_covid_queue where vn = vns) as doctor_code,concat(pname,fname," ",lname)ptname,v.hn,v.vn 
,(select doctor_fullname 
FROM wsc_covid_queue w
INNER JOIN prs_hici_doctor d on d.doctor_code = w.doctor_code
where vn = vns LIMIT 1
) as doctor_name,
(select liceneno 
FROM wsc_covid_queue w
INNER JOIN prs_hici_doctor d on d.doctor_code = w.doctor_code
where vn = vns LIMIT 1
) as doctor_licene_no,(select loginname from opduser o
INNER JOIN wsc_covid_queue d on d.nurse_code = o.doctorcode
where  vn = vns LIMIT 1
) as staff

from vn_stat v
INNER JOIN patient pt on pt.hn = v.hn
where v.vn = vns LIMIT 1)t;

UPDATE serial 
SET serial_no = @serial_no
WHERE `name` ='doctor_cert_id';

return xserial_no; 

END
;;
DELIMITER ;

update wsc_serial set serial_no = 0,name=1;


DROP FUNCTION IF EXISTS `ThaiDateS`;
DELIMITER ;;
CREATE DEFINER=`sa`@`%` FUNCTION `ThaiDateS`(param1 date) RETURNS varchar(40) CHARSET tis620
begin
	declare cdate varchar(40);
	declare nmonth int;
	declare cmonth varchar(40);
	declare i int default 0;
	set nmonth=month(param1);
	set cmonth='';
	set cmonth=if(nmonth=1,'มกราคม',cmonth);
	set cmonth=if(nmonth=2,'กุมภาพันธ์',cmonth);
	set cmonth=if(nmonth=3,'มีนาคม',cmonth);
	set cmonth=if(nmonth=4,'เมษายน',cmonth);
	set cmonth=if(nmonth=5,'พฤษภาคม',cmonth);
	set cmonth=if(nmonth=6,'มิถุนายน',cmonth);
	set cmonth=if(nmonth=7,'กรกฎาคม',cmonth);
	set cmonth=if(nmonth=8,'สิงหาคม',cmonth);
	set cmonth=if(nmonth=9,'กันยายน',cmonth);
	set cmonth=if(nmonth=10,'ตุลาคม',cmonth);
	set cmonth=if(nmonth=11,'พฤศจิกายน',cmonth);
	set cmonth=if(nmonth=12,'ธันวาคม',cmonth);
	set cdate=concat(day(param1),' ',cmonth,' ',year(param1)+543);
	set cdate=if(cmonth='','',cdate);
	return cdate;
end
;;
DELIMITER ;

REPLACE INTO prs_hici_hoscode(hospcode,shortname)
select hospitalcode,REPLACE(hospitalname,'โรงพยาบาลส่งเสริมสุขภาพ','รพ.สต.') from opdconfig;

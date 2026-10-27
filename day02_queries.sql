show databases;
use HANGZHOU;
INSERT INTO HANGZHOU(id, workno, name, gender, age, idcard, workaddress, entrydate) VALUES
(1,  '1',  '柳岩',   '女', 20, '123456789012345678', '北京', '2000-01-01'),
(2,  '2',  '张无忌', '男', 18, '123456789012345670', '北京', '2005-09-01'),
(3,  '3',  '韦一笑', '男', 38, '123456789712345670', '上海', '2005-08-01'),
(4,  '4',  '赵敏',   '女', 18, '123456757123845670', '北京', '2009-12-01'),
(5,  '5',  '小昭',   '女', 16, '123456769012345678', '上海', '2007-07-01'),
(6,  '6',  '杨逍',   '男', 28, '12345678931234567X', '北京', '2006-01-01'),
(7,  '7',  '范瑶',   '男', 40, '123456789212345670', '北京', '2005-05-01'),
(8,  '8',  '黛绮丝', '女', 38, '123456157123645670', '天津', '2015-05-01'),
(9,  '9',  '范凉凉', '女', 45, '123156789012345678', '北京', '2010-04-01'),
(10, '10', '陈友谅', '男', 53, '123456789012345670', '上海', '2011-01-01'),
(11, '11', '张士诚', '男', 55, '123567897123465670', '江苏', '2015-05-01'),
(12, '12', '常遇春', '男', 32, '123446757152345670', '北京', '2004-02-01'),
(13, '13', '张三丰', '男', 88, '123656789012345678', '江苏', '2020-11-01'),
(14, '14', '灭绝',   '女', 65, '123456719012345670', '西安', '2019-05-01'),
(15, '15', '胡青牛', '男', 70, '12345674971234567X', '西安', '2018-04-01'),
(16, '16', '周芷若', '女', 18, NULL,                 '北京', '2012-06-01');
查询指定字段
select name, workno, age from  HANGZHOU;
查询所有字段返回
select id, workno, name, gender, age, IDcard, workaddress, entrydate from HANGZHOU;
select * from HANGZHOU;
查询员工的所有地址，起别名
select workaddress as '工作地址'from HANGZHOU;
select workaddress '工作地址' from HANGZHOU;
select distinct workaddress '工作地址' from HANGZHOU;
查询年龄=88的员工
USE HANGZHOU
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age = 88;
查询年龄小于20的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age > 20 ;
查询年龄小于等于20的员工
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age >= 20 ;
查询没有身份证号的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where IDcard is null;
查询有身份证号的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where IDcard is not null;
查询年龄不等于88的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age <> 88;
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age != 88;
查询年龄在15（包含）到20（包含）之间的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age >= 15 && age <= 20;
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age >= 15 and age <= 20;
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age between 15 and 20;
查询性别为 女 且你年龄小于25的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where gender = '女' and age < 25;
查询年龄=18 或 20 或 40 的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age = 18 or age = 20 or age = 40 ;
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where age in (18,20,40) ;
查询姓名为两个字的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where name like '__' ;
查询身份证号最后一个字为x的员工信息
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where IDcard like '%X'
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where IDcard is null and age > 18;
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where gender = '女' and age between 20 and 30;
查处工作地址西安或者北京的员工，并按年龄从大到小排序
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where workaddress in ('北京','西安')order by age desc;
查处所有身份证号不为空（not null），且名字以张开头的员工
select id, workno, name, gender, age, idcard, workaddress, entrydate from HANGZHOU where IDcard is not null and name like '张%'

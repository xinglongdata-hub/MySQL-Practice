聚合函数：
统计该企业员工数量   null不参与聚合函数的运算
select count(*) from HANGZHOU ;
select count(id) from HANGZHOU;
统计该企业员工的平均年龄
select avg(age) from HANGZHOU ;
统计该企业员工最大年龄
select max(age) from HANGZHOU ;
统计该企业最小年龄
select min(age) from HANGZHOU ;
统计西安地区员工的年龄之和
select sum(age) from HANGZHOU where workaddress = '西安' ;
分组查询
根据性格分组，统计男员工和女员工的数量
select gender, count(*) from HANGZHOU group by gender ;
根据性格分组，统计男员工和女员工的平均年龄
select gender, avg(age) from HANGZHOU group by gender ;
查询年龄小于45的员工，并根据地址分组，获取员工数量大于等于3的工作地址
select workaddress, count(*) from HANGZHOU where age < 45 group by workaddress having count(*) >= 3;
select workaddress, count(*) address_count from HANGZHOU where age < 45 group by workaddress having address_count >= 3;

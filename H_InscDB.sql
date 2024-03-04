---Total Policies---
select Count(Sno) as Total_Policies
from [dbo].[FACT_SEPT2016_TILLDATE]

---Age group---
Create view V as 
(
select *, case 
when[AGE] <= 17 then 'Minor'
when [AGE]>=51 then 'Adult'
else 'Senior'
end as age_group
from [dbo].[FACT_SEPT2016_TILLDATE]
)

---Total Policies by age group---
select age_group, Count(Sno) as Total_Policies
from V
group by age_group
order by age_group;

---Total Paid Amount---
select sum([PREAUTH_AMT]) as Total_Paid_Amount
from [dbo].[FACT_SEPT2016_TILLDATE]

---Total Claim Amount---
select sum([CLAIM_AMOUNT]) as Total_Claim_Amount
from [dbo].[FACT_SEPT2016_TILLDATE]

---Total Hospitals---
select  count(distinct([HOSP_NAME])) as Total_No_of_Hospitals
from [dbo].[FACT_SEPT2016_TILLDATE]

---Total Deaths---
select Count([Mortality Y / N]) as Total_Deaths
from [dbo].[FACT_SEPT2016_TILLDATE]
where [Mortality Y / N]= 'YES'

select Count(*) as Total_Deaths from V
where [Mortality Y / N]= 'YES'

---Total Undeaths---
select Count([Mortality Y / N]) as Total_UnDeaths
from [dbo].[FACT_SEPT2016_TILLDATE]
where [Mortality Y / N]= 'NO'

select Count(*) as Total_UnDeaths from V
where [Mortality Y / N]= 'NO'


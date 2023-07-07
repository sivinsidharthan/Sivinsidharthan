select * from opinsights_prd.t03_mdm_h03_breakdown_patient_enrollment_list 
where type in ('PLAN','ACTUAL')   and level = 'COUNTRY' and category = 'RANDOMIZED'
order by country_code, month_sort 




select *,CONCAT(trial_alias_code,CAST(siteid as VARCHAR)) as site_key from opinsights_prd.t03_mdm_h01_visit_patient_status_table limit 2

select * from opinsights_prd.t03_mdm_h03_breakdown_patient_enrollment_list  limit 2

select * from opinsights_prd.t03_mdm_h02_enrollment_site_summary_table limit 200
select 


select 

select * from opinsights_prd.t03_mdm_h04_lookup_trial_table limit 2
 
select 
*
from opinsights_prd.t03_mdm_h04_lookup_trial_table limit 2


select * from  opinsights_prd.t03_mdm_h04_lookup_site_table limit 2

select * from opinsights_prd.t03_mdm_h01_visit_patient_status_table limit 2


select  trial_alias_code,trial_no,country_code,siteid,
first_visit_date,
month_enter_trial,
year_enter_trial,
enter_trial_month_sort,
randomization_date,
screenfailv1,
in_screening,
enter_treatment,
month_enter_treatment,
year_enter_treatment,
enter_treatment_month_sort,
last_active_visit,
first_drug_assigned_confirmed,
first_drug_assigned


select
trial_alias_code,
CAST(CAST(study_site as INT) as VARCHAR),
concat(trial_alias_code,CAST(CAST(study_site as INT) as VARCHAR)) as site_key,
country_code,
plan_completed_follow_up,
plan_completed_treatment,
plan_completed_trial,
plan_curr_follow_up_drop_treatment,
plan_current_in_baseline,
plan_current_in_follow_up,
plan_current_in_screening,
plan_current_in_treatment,
plan_drop_follow_up_drop_treatment,
plan_dropped_baseline,
plan_dropped_follow_up,
plan_dropped_screening,
plan_dropped_treatment from
opinsights_prd.t03_mdm_h04_lookup_site_table  limit 10








select CAST(CAST(study_site as INT) as VARCHAR) as site,
concat(trial_key,CAST(CAST(study_site as INT) as VARCHAR)) site_key  from opinsights_prd.t03_mdm_h02_enrollment_site_summary_table 

select * from  opinsights_prd.t03_mdm_h01_visit_patient_status_table    
where CAST(siteid as INT) = 34421 and trial_alias_code like '%AACN%' and screenfailv1 = 1
10428
10065



select * from opinsights_prd.cam_missing_visit_theeortcal

select *,CAST(EXTRACT(DAY FROM (next_date::timestamp )- (cntct_begin_date::timestamp)) AS INT) as visit_days,
from
(select *,LEAD(cntct_begin_date) over (partition by trial_alias_code,country_code,siteid,subject_number) as next_date  from 
(select trial_no,
       trial_key as trial_alias_code,
       country_code,
       siteid,
       subject_number,
       Min(cntct_begin_date) over (partition by trial_key,country_code,siteid,subject_number) as first_visit_date,
       Max(cntct_begin_date) over (partition by trial_key,country_code,siteid,subject_number) as last_visit_date,
       cntct_begin_date,
       cntct_end_date,
       randomization_date,
       discontinuation_date,
       refresh_date
from opinsights_prd.t03_mdm_h01_visit_subject_list where subject_number = 24504 and trial_key like '%AACM%'
order by cntct_begin_date
)one)two

select trial_no,
       trial_key as trial_alias_code,
       country_code,
       siteid,
       subject_number,
       Min(cntct_begin_date) over (partition by trial_key,country_code,siteid,subject_number) as first_visit_date,
       Max(cntct_begin_date) over (partition by trial_key,country_code,siteid,subject_number) as last_visit_date,
       cntct_begin_date,
       cntct_end_date,
       randomization_date,
       discontinuation_date,
       refresh_date
from opinsights_prd.t03_mdm_h01_visit_subject_list

select Min(cntct_begin_date) as first_visit_date,
Max(cntct_begin_date) as 



select * from opinsights_prd.t03_site_d04_master_milestone_reference_pivot limit 10


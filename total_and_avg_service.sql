SELECT
  ROUND(SUM(`Claims_Paid_for_Testing`), 2) AS total_testing,
  ROUND(SUM(`Claims_Paid_for_Treatment`), 2) AS total_treatment,
  ROUND(SUM(`Claims_Paid_for_Vaccine`), 2) AS total_vaccine,
  ROUND(AVG(`Claims_Paid_for_Testing`), 2) AS avg_testing,
  ROUND(AVG(`Claims_Paid_for_Treatment`), 2) AS avg_treatment,
  ROUND(AVG(`Claims_Paid_for_Vaccine`), 2) AS avg_vaccine
FROM
  applied-card-436523-i3.Claims_Reimb.Claims_Reimb;

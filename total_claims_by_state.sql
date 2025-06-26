SELECT
  State,
  ROUND(SUM(`Claims_Paid_for_Testing`), 2) AS total_testing,
  ROUND(SUM(`Claims_Paid_for_Treatment`), 2) AS total_treatment,
  ROUND(SUM(`Claims_Paid_for_Vaccine`), 2) AS total_vaccine,
  ROUND(SUM(`Claims_Paid_for_Testing` + `Claims_Paid_for_Treatment` + `Claims_Paid_for_Vaccine`), 2) AS total_all
FROM
  applied-card-436523-i3.Claims_Reimb.Claims_Reimb
GROUP BY
  State
ORDER BY
  total_all DESC;

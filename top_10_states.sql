SELECT
  `Provider_Name`,
  ROUND(SUM(`Claims_Paid_for_Testing` + `Claims_Paid_for_Treatment` + `Claims_Paid_for_Vaccine`), 2) AS total_claims
FROM
 applied-card-436523-i3.Claims_Reimb.Claims_Reimb 
GROUP BY
  `Provider_Name`
ORDER BY
  total_claims DESC
LIMIT 10;

SELECT
ps.Hospital,
ps.Ward, 
count(*) AS NumberofPatients, 
SUM(ps.tariff) AS TotalTariff
FROM PatientStay ps
GROUP BY ps.Hospital, ps.Ward
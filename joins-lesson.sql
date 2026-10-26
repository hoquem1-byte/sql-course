SELECT ps.PatientId,
       ps.Ward,
       h.Hospital,
       h.HospitalType
FROM   PatientStay AS ps
       INNER JOIN
       DimHospital AS h
       ON ps.Hospital = h.Hospital
WHERE  h.HospitalType = 'Teaching';

SELECT   h.Reach,
         COUNT(*) AS NumberofPatients
FROM     PatientStay AS ps
         INNER JOIN
         DimHospital AS h
         ON ps.Hospital = h.Hospital
GROUP BY Reach;

SELECT   ps.Ward,
         COUNT(*) AS NumberOfPatients,
         SUM(ps.Tariff) AS TotalTariff,
         AVG(ps.Tariff) AS AverageTariff
FROM     PatientStay AS ps
GROUP BY ps.Ward
ORDER BY ps.Ward;


--SELECT * FROM DimHospital
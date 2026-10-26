/*
Example lesson stub
*/
SELECT		ps.Patientid,
			ps.Hospital,
			ps.Ward,
			DATEADD(Week, -2, ps.AdmittedDate) AS ReminderDate,
			ps.AdmittedDate,
			ps.DischargeDate,
			DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) AS LenghtofStay,
			DATEADD(MONTH, 3, ps.DischargeDate) AS ApptDate
FROM		PatientStay AS ps
WHERE		ps.Hospital IN ('kingston', 'pruh')
			AND ps.Ward LIKE '%surgery'
			AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;


--SELECT DATEADD(MONTH, 3, '2026-10-26') AS TestValue
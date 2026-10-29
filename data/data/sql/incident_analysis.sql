-- 1. View all inverter readings
SELECT *
FROM inverter_readings;

-- 2. Find offline inverters
SELECT *
FROM inverter_readings
WHERE status = 'Offline';

-- 3. Find low-generation alerts
SELECT *
FROM inverter_readings
WHERE status = 'Alert'
   OR alert_code = 'LOW_OUTPUT';

-- 4. Count readings by inverter status
SELECT
    status,
    COUNT(*) AS total_readings
FROM inverter_readings
GROUP BY status;

-- 5. Find unresolved incidents
SELECT *
FROM incidents
WHERE status IN ('Open', 'Investigating');

-- 6. Count incidents by severity
SELECT
    severity,
    COUNT(*) AS total_incidents
FROM incidents
GROUP BY severity;

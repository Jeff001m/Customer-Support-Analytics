SELECT
    issue_type,
    COUNT(*) AS total_cases
FROM support_tickets
GROUP BY issue_type
ORDER BY total_cases DESC;

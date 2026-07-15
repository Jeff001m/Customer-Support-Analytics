SELECT
    agent,
    COUNT(ticket_id) AS tickets_resolved,
    ROUND(AVG(resolution_time_hours),2) AS avg_resolution_time,
    ROUND(AVG(customer_satisfaction),2) AS avg_customer_rating
FROM support_tickets
WHERE status='Resolved'
GROUP BY agent
ORDER BY tickets_resolved DESC;

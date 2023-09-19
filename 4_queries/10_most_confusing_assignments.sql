-- List each assignment with the total number of assistance requests with it.
-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT a.id, name, day, chapter, COUNT(req.*) AS total_requests
FROM assignments a
JOIN assistance_requests req ON a.id = assignment_id
GROUP BY a.id
ORDER BY total_requests DESC;
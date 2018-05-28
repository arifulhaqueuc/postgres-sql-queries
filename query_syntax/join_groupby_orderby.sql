 
-- Join with Group by and Order By



SELECT 
  teams.conference AS conference
  , AVG(players.weight) AS average_weight


FROM benn.college_football_players players
JOIN benn.college_football_teams teams
ON teams.school_name = players.school_name

GROUP BY teams.conference
ORDER BY AVG(players.weight) DESC


SELECT date, home_team, away_team, home_score, away_score, home_result
FROM [dbo].[results2$]
WHERE home_team = 'Nigeria' AND home_result = 'win'
ORDER BY 1
;

SELECT date, home_team, away_team, home_score, away_score
FROM [dbo].[results2$]
WHERE away_team = 'Nigeria'
ORDER BY 1
;

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_result = 'win' AND home_team = 'Nigeria'

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_team = 'Nigeria'

-- Since 1900, Nigeria have won 281 home games out of 438
-- Which gives a 64.16% win rate

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE away_result = 'win' AND away_team = 'Nigeria'

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE away_team = 'Nigeria'

-- Futhermore, they have won 149 away games out of 496
-- Giving Nigeria a 30.00% win rate away

--Overall, Nigeria have a 46.03% win rate, which is not that great 

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_result = 'win' AND home_team = 'Nigeria' AND tournament LIKE '%African cup of nations%'

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_team = 'Nigeria' AND tournament LIKE '%African cup of nations%'

--In the African cup of Nations specifically we can see that Nigeria won 106 out of 152
--Here, Nigeria has a 69.73% win rate at home

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE away_result = 'win' AND away_team = 'Nigeria' AND tournament LIKE '%African cup of nations%'

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE away_team = 'Nigeria' AND tournament LIKE '%African cup of nations%'

--However, Nigieria lets itself down again when it comes to away game in the AFCON
-- Winning 37 out of 132 away games in AFCON gives Nigeria a 28.03% win rate away

--In AFCON overall, Nigeria have a 48.59% success rate
--This is only marginally better than it's overall win rate

--OK so not great results so far, but how does Nigeria compare to its West African derby counterpart, Ghana

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_team = 'Nigeria' AND away_team = 'Ghana'

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_team = 'Ghana' AND away_team = 'Nigeria'

--Nigeria played Ghana a total of 102 times

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_team = 'Nigeria' AND away_team = 'Ghana' AND home_result = 'win'

SELECT COUNT(*) AS ng_homewins FROM [dbo].[results2$]
WHERE home_team = 'Ghana' AND away_team = 'Nigeria' AND away_result = 'win'

--And has only won a measly 21 times...

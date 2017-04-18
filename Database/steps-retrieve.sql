-- MySQL script to list specific rows from specific tables

-- -----------------------------------------------------
-- SELECT all sports
-- -----------------------------------------------------
SELECT *
FROM STEPS.sport;

-- -----------------------------------------------------
-- SELECT admins for Football
-- -----------------------------------------------------
SELECT STEPS.user.name
FROM STEPS.user
	JOIN STEPS.tournament
		ON STEPS.user.administrator_id=STEPS.tournament.administrator_id
  JOIN STEPS.sport
		ON STEPS.tournament.sport_id=STEPS.sport.id
WHERE STEPS.sport.name='Football';

-- -----------------------------------------------------
-- SELECT admins for Soccer
-- -----------------------------------------------------
SELECT STEPS.user.name
FROM STEPS.user
	JOIN STEPS.tournament
		ON STEPS.user.administrator_id=STEPS.tournament.administrator_id
  JOIN STEPS.sport
		ON STEPS.tournament.sport_id=STEPS.sport.id
WHERE STEPS.sport.name='Soccer';

-- -----------------------------------------------------
-- SELECT all divisions
-- -----------------------------------------------------
SELECT *
FROM STEPS.division;

-- -----------------------------------------------------
-- SELECT all coaches and teams
-- -----------------------------------------------------
SELECT *
FROM STEPS.user
WHERE coach_id IS NOT NULL;

SELECT *
FROM STEPS.team;

-- -----------------------------------------------------
-- SELECT all players
-- -----------------------------------------------------
SELECT *
FROM STEPS.user
WHERE player_id IS NOT NULL;

-- -----------------------------------------------------
-- SELECT all tournaments
-- -----------------------------------------------------
SELECT *
FROM STEPS.tournament;

-- -----------------------------------------------------
-- SELECT all brackets with teams
-- -----------------------------------------------------
SELECT *
FROM STEPS.game
WHERE team_1 IS NOT NULL
  AND team_2 IS NOT NULL;

-- -----------------------------------------------------
-- SELECT all guests
-- -----------------------------------------------------
SELECT *
FROM STEPS.user
WHERE guest_id IS NOT NULL;

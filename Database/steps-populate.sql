-- MySQL Script to populate the STEPS database
USE STEPS;
-- -----------------------------------------------------
-- 1. INSERT Football
-- -----------------------------------------------------
INSERT INTO sport

VALUES (1, 'Football', 2, 1024, 'I don\'t know', 11, 11, 'There are a lot of rules', 0);

-- -----------------------------------------------------
-- 2. INSERT Soccer
-- -----------------------------------------------------
INSERT INTO sport

VALUES (2, 'Soccer', 2, 1024, 'I don\'t know', 11, 11, 'There are a lot of rules', 0);

-- -----------------------------------------------------
-- 3. INSERT Admin for Football
-- -----------------------------------------------------
INSERT INTO administrator

VALUES (1, 'Thomas', '6785913045');

-- -----------------------------------------------------
-- 4. INSERT Admin for Soccer
-- -----------------------------------------------------
INSERT INTO administrator

VALUES (2, 'Victor', '1234567899');

-- -----------------------------------------------------
-- 5. INSERT Division 1 for Football
-- -----------------------------------------------------
INSERT INTO division

VALUES (1, 'East', 'no', 512, 5632, 'There is no winning team right now', 'May 8th, 2017', 1);

-- -----------------------------------------------------
-- 6. INSERT Division 2 for Football
-- -----------------------------------------------------
INSERT INTO division

VALUES (2, 'West', 'no', 512, 5632, 'There is no winning team right now', 'May 8th, 2017', 1);

-- -----------------------------------------------------
-- 7. INSERT Division 1 for Soccer
-- -----------------------------------------------------
INSERT INTO division

VALUES (3, 'East', 'no', 512, 5632, 'There is no winning team right now', 'May 8th, 2017', 2);

-- -----------------------------------------------------
-- 8. INSERT Divsion 2 for Soccer
-- -----------------------------------------------------
INSERT INTO division

VALUES (4, 'West', 'no', 512, 5632, 'There is no winning team right now', 'May 8th, 2017', 2);

-- -----------------------------------------------------
-- 9. INSERT Tournament for Football
-- -----------------------------------------------------
INSERT INTO tournament

VALUES (1, 'Tournament of Power', 'May 9th, 2017', 'May 31st, 2017', 'Sanford Stadium', 1, 1);

-- -----------------------------------------------------
-- 10. INSERT Tournament for Soccer
-- -----------------------------------------------------
INSERT INTO tournament

VALUES (2, 'Genesis 5', 'May 9th, 2017', 'May 31st, 2017', 'Soccer Field', 2, 2);

-- -----------------------------------------------------
-- 11. INSERT Bracket for Football
-- -----------------------------------------------------
INSERT INTO tournament_bracket

VALUES (1, 1, 1, 'Sanford Stadium', 'May 9th, 2017', 'Team 1', 'Address ?', 'Team 1', 'Team 1', 1);

-- -----------------------------------------------------
-- 12. INSERT Bracket for Soccer
-- -----------------------------------------------------
INSERT INTO tournament_bracket

VALUES (2, 1, 2, 'Soccer Field', 'May 9th, 2017', 'Team 1', 'Address ?', 'Team 1', 'Team 1', 2);
-- -----------------------------------------------------
-- 13. INSERT Coach for Divison 1 -Football
-- -----------------------------------------------------
INSERT INTO coach

VALUES (1, 'Bob', '9875642310', null);

-- -----------------------------------------------------
-- 14. INSERT Coach for Divison 2 -Football
-- -----------------------------------------------------
INSERT INTO coach

VALUES (2, 'John', '7894561230', null);

-- -----------------------------------------------------
-- 15. INSERT Coach for Divison 1 -Soccer
-- -----------------------------------------------------
INSERT INTO coach

VALUES (3, 'Jason', '1472583690', null);

-- -----------------------------------------------------
-- 16. INSERT Coach for Divison 2 -Soccer
-- -----------------------------------------------------
INSERT INTO coach

VALUES (4, 'Justin', '7418529630', null);

-- -----------------------------------------------------
-- 17. INSERT Team 1 for Division 1 -Football
-- -----------------------------------------------------
INSERT INTO team

VALUES(1, 'TSM', '11', 1, 1, 0, 0, 1);

-- -----------------------------------------------------
-- 18. INSERT Team 2 for Division 1 -Football
-- -----------------------------------------------------
INSERT INTO team

VALUES (2, 'Cloud 9', '11', 1, 2, 0, 0, 1);

-- -----------------------------------------------------
-- 19. INSERT Team 1 for Division 2 -Football
-- -----------------------------------------------------
INSERT INTO team

VALUES (3, 'Echo Fox', '11', 1, 3, 0, 0, 2);

-- -----------------------------------------------------
-- 20. INSERT Team 2 for Division 2 -Football
-- -----------------------------------------------------
INSERT INTO team

VALUES (4, 'CLG', '11', 1, 4, 0, 0, 2);

-- -----------------------------------------------------
-- 21. INSERT Team 1 for Division 1 -Soccer
-- -----------------------------------------------------
INSERT INTO `STEPS`.team (division_id, `name`, player_count, active, wins, losses)
SELECT d.id, 'Breakaway Dwellers', 0, 1, 0, 0
FROM division AS d
WHERE d.name = 'USSF West';
-- -----------------------------------------------------
-- 22. INSERT Team 2 for Division 1 -Soccer
-- -----------------------------------------------------
INSERT INTO `STEPS`.team (division_id, `name`, player_count, active, wins, losses)
SELECT d.id, 'Madrid Meteors', 0, 1, 0, 0
FROM division AS d
WHERE d.name = 'USSF West';
-- -----------------------------------------------------
-- 23. INSERT Team 1 for Division 2 -Soccer
-- -----------------------------------------------------
INSERT INTO `STEPS`.team (division_id, `name`, player_count, active, wins, losses)
SELECT d.id, 'Richmond Rushers', 0, 1, 0, 0
FROM division AS d
WHERE d.name = 'USSF East';
-- -----------------------------------------------------
-- 24. INSERT Team 2 for Division 2 -Soccer
-- -----------------------------------------------------
INSERT INTO `STEPS`.team (division_id, `name`, player_count, active, wins, losses)
SELECT d.id, 'Virginia Vanguards', 0, 1, 0, 0
FROM division AS d
WHERE d.name = 'USSF East';
-- -----------------------------------------------------
-- 25. INSERT Player 1 for Team 1 Division 1 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id, `name`, phone_number)
SELECT t.id, 'Carl Richardson', '555-605-1632'
FROM team AS t
WHERE t.name = 'TSM';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Carl Richardson',
    'password111',
    'crichardson@hotmail.com',
    '1093 Archwood Avenue',
    'player',
	LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 26. INSERT Player 2 for Team 1 Dvision 1 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Michael Wilson', '555-205-1732'
FROM team AS t
WHERE t.name = 'TSM';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Michael Wilson',
    'password211',
    'mwilson@hotmail.com',
    '1707 Kennedy Court',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 27. INSERT Player 1 for Team 2 Division 1 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Scott Russell', '555-111-1782'
FROM team AS t
WHERE t.name = 'Cloud 9';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Scott Russell',
    'password121',
    'scottruss@hotmail.com',
    '1189 Atha Drive',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 28. INSERT Player 2 for Team 2 Division 1 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Billy Henderson', '555-221-1782'
FROM team AS t
WHERE t.name = 'Cloud 9';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Billy Henderson',
    'password221',
    'billyhender@hotmail.com',
    '4514 Berry Street',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 29. INSERT Player 1 for Team 1 Division 2 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Arthur	Peterson', '555-321-5792'
FROM team AS t
WHERE t.name = 'Echo Fox';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Arthur	Peterson',
    'password112',
    'arthurpete@hotmail.com',
    '1965 Sugar Camp Road',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 30. INSERT Player 2 for Team 1 Dvision 2 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Bruce Gray', '555-654-6692'
FROM team AS t
WHERE t.name = 'Echo Fox';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Bruce Gray',
    'password212',
    'brucegray@hotmail.com',
    '1485 Ritter Avenue',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 31. INSERT Player 1 for Team 2 Division 2 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Roy Sanchez', '555-434-1672'
FROM team AS t
WHERE t.name = 'CLG';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Roy Sanchez',
    'password122',
    'roysanchez@hotmail.com',
    '2459 Confederate Drive',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 32. INSERT Player 2 for Team 2 Division 2 -Football
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id, `name`, phone_number)
SELECT t.id, 'Philip	Wood', '555-124-1852'
FROM team AS t
WHERE t.name = 'CLG';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Philip	Wood',
    'password222',
    'philwood@hotmail.com',
    '24712 Hillcrest Drive',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 33. INSERT Player 1 for Team 1 Division 1 -Soccer
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Steve Powell', '555-772-9152'
FROM team AS t
WHERE t.name = 'Breakaway Dwellers';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Steve Powell',
    'password333',
    'stevepowell@hotmail.com',
    '1686 Spring Haven Trail',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 34. INSERT Player 2 for Team 1 Dvision 1 -Soccer
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id,`name`, phone_number)
SELECT t.id, 'Steve Powell', '555-772-9152'
FROM team AS t
WHERE t.name = 'Breakaway Dwellers';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Steve Powell',
    'password333',
    'stevepowell@hotmail.com',
    '1686 Spring Haven Trail',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 35. INSERT Player 1 for Team 2 Division 1 -Soccer
-- -----------------------------------------------------
INSERT INTO `STEPS`.`player` (team_id, `name`, phone_number)
SELECT t.id, 'Carl	Peterson', '555-452-1089'
FROM team AS t
WHERE t.name = 'Madrid Meteors';

INSERT INTO `STEPS`.`user` (`name`, `password`, email, address, `privileges`, player_id)
VALUES (
	'Carl Peterson',
    'password343',
    'carlpeterson@hotmail.com',
    '1646 Sunrise Road',
    'player',
    LAST_INSERT_ID()
);
-- -----------------------------------------------------
-- 36. INSERT Player 2 for Team 2 Division 1 -Soccer
-- -----------------------------------------------------
-- Assuming Division 1 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",2);
-- -----------------------------------------------------
-- 37. INSERT Player 1 for Team 1 Division 2 -Soccer
-- -----------------------------------------------------
-- Assuming Division 2 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",1);
-- -----------------------------------------------------
-- 38. INSERT Player 2 for Team 1 Division 2 -Soccer
-- -----------------------------------------------------
-- Assuming Division 2 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",1);
-- -----------------------------------------------------
-- 39. INSERT Player 1 for Team 2 Division 2 -Soccer
-- -----------------------------------------------------
-- Assuming Division 2 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",2);
-- -----------------------------------------------------
-- 40. INSERT Player 2 for Team 2 Division 2 -Soccer
-- -----------------------------------------------------
-- Assuming Division 2 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",2);
-- -----------------------------------------------------
-- 41. INSERT Player 2 for Team 1 Division 1 -Football
-- -----------------------------------------------------
-- Assuming Division 1 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",1);
-- -----------------------------------------------------
-- 42. INSERT Player 1 for Team 2 Division 1 -Football
-- -----------------------------------------------------
-- Assuming Division 1 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",2);
-- -----------------------------------------------------
-- 43. INSERT Player 2 for Team 2 Division 1 -Football
-- -----------------------------------------------------
-- Assuming Division 1 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",2);
-- -----------------------------------------------------
-- 44. INSERT Player 1 for Team 1 Division 2 -Football
-- -----------------------------------------------------
-- Assuming Division 2 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",1);
-- -----------------------------------------------------
-- 45. INSERT Player 2 for Team 1 Dvision 2 -Football
-- -----------------------------------------------------
-- Assuming Division 2 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",1);
-- -----------------------------------------------------
-- 46. INSERT Player 1 for Team 2 Division 2 -Football
-- -----------------------------------------------------
-- Assuming Division 2 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",2);
-- -----------------------------------------------------
-- 47. INSERT Player 2 for Team 2 Division 2 -Football
-- -----------------------------------------------------
-- Assuming Division 2 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",2);
-- -----------------------------------------------------
-- 48. INSERT Player 1 for Team 1 Division 1 -Football
-- -----------------------------------------------------
-- Assuming Division 1 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",1);
-- -----------------------------------------------------
-- 49. INSERT Player 2 for Team 1 Division 1 -Football
-- -----------------------------------------------------
-- Assuming Division 1 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",1);
-- -----------------------------------------------------
-- 50. INSERT Player 1 for Team 2 Division 1 -Football
-- -----------------------------------------------------
-- Assuming Division 1 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",2);
-- -----------------------------------------------------
-- 51. INSERT Player 2 for Team 2 Division 1 -Football
-- -----------------------------------------------------
-- Assuming Division 1 and Team 2 already exist,
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",2);
-- -----------------------------------------------------
-- 52. INSERT Player 1 for Team 1 Division 2 -Football
-- -----------------------------------------------------
-- Assuming Division 2 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",1);
-- -----------------------------------------------------
-- 53. INSERT Player 2 for Team 1 Division 2 -Football
-- -----------------------------------------------------
-- Assuming Division 2 and Team 1 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 2", "555-5552",1);
-- -----------------------------------------------------
-- 54. INSERT Player 1 for Team 2 Division 2 -Football
-- -----------------------------------------------------
-- Assuming Division 2 and Team 2 already exist
INSERT INTO steps.player(name,phone_number,team_id)
VALUES ("Player 1", "555-5551",2);
-- -----------------------------------------------------
-- 55. INSERT Guest for Football
-- -----------------------------------------------------
INSERT INTO steps.guest(email)
VALUES ("guest@guest.com");
-- -----------------------------------------------------
-- 56. INSERT Guest for Soccer
-- -----------------------------------------------------
INSERT INTO steps.guest(email)
VALUES ("guest@guest.com");

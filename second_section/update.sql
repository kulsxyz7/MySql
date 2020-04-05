CODE: Updating Data

Change tabby cats to shorthair:

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'; 

Another update:

UPDATE cats SET age=14 WHERE name='Misty'; 

CODE: Update Challenges Solution

    SELECT * FROM cats WHERE name='Jackson';
     
    UPDATE cats SET name='Jack' WHERE name='Jackson';
     
    SELECT * FROM cats WHERE name='Jackson';
     
    SELECT * FROM cats WHERE name='Jack';
     
    SELECT * FROM cats WHERE name='Ringo';
     
    UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
     
    SELECT * FROM cats WHERE name='Ringo';
     
    SELECT * FROM cats;
     
    SELECT * FROM cats WHERE breed='Maine Coon';
     
    UPDATE cats SET age=12 WHERE breed='Maine Coon';
     
    SELECT * FROM cats WHERE breed='Maine Coon';

    CODE: CRUD Exercise Update Solution

    SELECT * FROM shirts WHERE article='polo shirt';
     
    UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
     
    SELECT * FROM shirts WHERE article='polo shirt';
     
    SELECT * FROM shirts;
     
    SELECT * FROM shirts WHERE last_worn=15;
     
    UPDATE shirts SET last_worn=0 WHERE last_worn=15;
     
    SELECT * FROM shirts WHERE last_worn=15;
     
    SELECT * FROM shirts WHERE last_worn=0;
     
    SELECT * FROM shirts WHERE color='white';
     
    UPDATE shirts SET color='off white', shirt_size='XS' WHERE color='white';
     
    SELECT * FROM shirts WHERE color='white';
     
    SELECT * FROM shirts WHERE color='off white';
     
    SELECT * FROM shirts;
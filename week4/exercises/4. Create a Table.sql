/*

Create a table named sessions with three columns:

id that stores INTEGER
title that stores TEXT
speaker that stores TEXT
session_date that stores DATE

*/
CREATE TABLE sessions (
    id           INT ,
    title        TEXT,
    speaker      TEXT,
    session_date DATE
);

GO
/*
The first speaker will be by Maya Chen who is giving a talk on
“Intro to Data Visualization” on May 1, 2026.
*/


INSERT INTO sessions (id, title, speaker, session_date)
    VALUES (
        1,
        'Intro to Data Visualization',
        'Maya Chen',
        '2026-05-1'
    );


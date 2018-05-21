

drop table if exists movie_viewers
;


CREATE TEMP TABLE movie_viewers
(
 
    username VARCHAR(10) NOT NULL,
    video VARCHAR(10) NOT NULL
    
 )
 ;
 
 INSERT INTO movie_viewers
 
VALUES 
('A', 'a'), 
('B', 'a'),
('A', 'a'),
('A', 'a'),
('A', 'a'),
('A', 'a'),
('A', 'a'), 
('A', 'a'),
('A', 'c'),
('A', 'a'),
('B', 'a'),
('A', 'a'), 
('B', 'a'),
('A', 'a'),
('A', 'a'),
('B', 'b'),
('B', 'b'),
('B', 'b'),
('B', 'b'),
('B', 'b'),
('B', 'b'),
('B', 'b'),
('A', 'a')

;





select 
    username as user
    , video
    , count(video) as views
from movie_viewers
group by 
	video, username
order by 
	username ASC
;




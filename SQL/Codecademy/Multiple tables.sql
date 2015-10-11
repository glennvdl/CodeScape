CREATE TABLE artists(id INTEGER PRIMARY KEY, name TEXT);

/* By specifying that the id column is the PRIMARY KEY, SQL makes sure that:
	
	None of the values in this column are NULL
	Each value in this column is unique

A table can not have more than one PRIMARY KEY column. */


SELECT * FROM artists WHERE id = 3;
SELECT * FROM albums WHERE artist_id = 3;

/*Cross joining*/
SELECT * FROM albums JOIN artists ON albumst.astist_id = artists.id;
/*Cross joining including incomplete rows*/
SELECT * FROM albums LEFT JOIN artists ON albums.artist_id = artists.id;


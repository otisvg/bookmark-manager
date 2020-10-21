# Bookmark Manager

# Intructions


-- User Stories --
As a user,
so I can see the bookmarks that I've saved,
I would like to see a list of bookmarks.

![alt text](../images/User_story_1.png)

+-----------+                    +------------+        
|    User    +--get bookmark -->+  Bookmarks  
+-----------+                    +------------+    


As a user
so that I can remember websites I like,
I would like to be able to add to my saved bookmarks.

+-----------+                    +------------+        
|    User    +--add bookmark -->+  Bookmarks 
+-----------+                    +------------+    

# Creating a database
Connect to psql by typing psql in the terminal
Create the database using the command CREATE DATABASE bookmark_manager whilst in psql;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql

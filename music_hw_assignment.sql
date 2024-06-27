CREATE DATABASE music_hw_assignment;
use Music_hw_assignment;

-- Task 1: SQL Table Creation
CREATE TABLE Albums (
id INT AUTO_INCREMENT PRIMARY KEY,
album_id VARCHAR(50) NOT NULL,
title VARCHAR(75) NOT NULL,
artist_id INT NOT NULL,
genre_id INT NOT NULL,
release_year YEAR NOT NULL,
total_tracks VARCHAR(75) NOT NULL
);

CREATE TABLE Genre (
id INT AUTO_INCREMENT PRIMARY KEY,
style VARCHAR(50) NOT NULL,
common_instruments VARCHAR(100) NOT NULL
);

CREATE TABLE Artists (
id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(75) NOT NULL,
birth_year YEAR NULL,
home_town VARCHAR(50)
);

-- Task 2: SQL Alteration
ALTER TABLE Albums ADD total_duration TIME;

-- Task 3: SQL Foreign Key Establishment
ALTER TABLE Albums ADD FOREIGN KEY (genre_id) REFERENCES Genre(id);
ALTER TABLE Albums ADD FOREIGN KEY (artist_id) REFERENCES Artists(id);
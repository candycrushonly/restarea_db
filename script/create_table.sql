CREATE TABLE Tolls (
  toll_id INT PRIMARY KEY,
  toll_name VARCHAR(255),
  toll_number VARCHAR(255)
);


CREATE TABLE RestAreas (
  rest_area_id INT PRIMARY KEY,
  rest_area_name VARCHAR(255),
  rest_area_location VARCHAR(255),
  rest_area_image_url VARCHAR(255),
  toll_id INT,
  FOREIGN KEY (toll_id) REFERENCES Tolls(toll_id)
);

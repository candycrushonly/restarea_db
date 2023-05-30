CREATE TABLE Tolls (
  toll_id INT PRIMARY KEY,
  toll_name VARCHAR(255),
  toll_number VARCHAR(255)
);

CREATE TABLE RestAreas (
  rest_area_id INT PRIMARY KEY,
  rest_area_name VARCHAR(255),
  rest_area_location VARCHAR(255),
  toll_id INT,
  FOREIGN KEY (toll_id) REFERENCES Tolls(toll_id)
);

CREATE TABLE Images (
  rest_area_name VARCHAR(255),
  rest_area_id INT,
  FOREIGN KEY (rest_area_id) REFERENCES RestAreas(rest_area_id),
  image BLOB
);

CREATE TABLE rest_area_images AS
SELECT RestAreas.rest_area_id, RestAreas.rest_area_name, RestAreas.rest_area_location, Images.image
FROM RestAreas
INNER JOIN Images ON RestAreas.rest_area_id = Images.rest_area_id;

INSERT INTO Tolls(toll_id,toll_name,toll_number) 
VALUES (100,"Tol Jakarta-Cikampek",1), (200,"Tol Batang-Semarang",2);

INSERT INTO RestAreas( rest_area_id ,rest_area_name,rest_area_location,toll_id)
VALUES
(1,"Rest Area KM 57","Karawang, Jawa Barat",100),
(2,"Rest Area KM 19","Bekasi, Jawa Barat",100), 
(3,"Rest Area KM 42","Karawang, Jawa Barat",100), 
(4,"Rest Area KM 52","Karawang, Jawa Barat",100), 
(5,"Rest Area KM 71","Karawang, Jawa Barat",100),
(6, "Rest Area KM 379", "Jl. Tol Semarang-Batang",200),
(7, "Rest Area KM 389", "Jl. Tol Semarang-Batang",200),
(8, "Rest Area KM 391", "Jl. Tol Semarang-Batang",200);

INSERT INTO Images(rest_area_id,IMAGE) VALUES(1,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM19-Tol Jakarta-Cikampek.jpg'));
INSERT INTO Images(rest_area_id,IMAGE) VALUES(2,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM42-Tol Jakarta-Cikampek.jpg'));
INSERT INTO Images(rest_area_id,IMAGE) VALUES(3,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM52-Tol Jakarta-Cikampek.jpg'));
INSERT INTO Images(rest_area_id,IMAGE) VALUES(4,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM57-Tol Jakarta-Cikampek.jpg'));
INSERT INTO Images(rest_area_id,IMAGE) VALUES(5,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM71-Tol Jakarta-Cikampek.jpg'));
INSERT INTO Images(rest_area_id,IMAGE) VALUES(6,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM379-Tol Batang-Semarang.jpg'));
INSERT INTO Images(rest_area_id,IMAGE) VALUES(7,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM389-Tol Batang-Semarang.jpg'));
INSERT INTO Images(rest_area_id,IMAGE) VALUES(8,LOAD_FILE('C:\stress\JS\capstone\restArea_db\images_assets\RestAreaKM391-Tol Batang-Semarang.jpg'));
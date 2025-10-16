-- Drop tables 
DROP TABLE access_hub;
DROP TABLE flowers;
DROP TABLE dinosaurs;
DROP TABLE samples;
DROP TABLE meadow;
DROP TABLE forcefield;


-- Create Flowers table
CREATE TABLE Flowers (
  flower_id NUMBER PRIMARY KEY,
  flower_name VARCHAR2(50) NOT NULL,
  flower_color VARCHAR2(50) NOT NULL,
  meadow_id NUMBER
);

-- Create Dinosaurs table  
CREATE TABLE Dinosaurs (
  dino_id NUMBER PRIMARY KEY,
  dino_species VARCHAR2(50) NOT NULL,
  dino_habitat VARCHAR2(50) NOT NULL,
  dino_age NUMBER NOT NULL,
  meadow_id NUMBER
);

-- Create Meadow table
CREATE TABLE Meadow (
  meadow_id NUMBER PRIMARY KEY,
  meadow_area VARCHAR2(50) NOT NULL,
  meadow_terrain VARCHAR2(50) NOT NULL
);

-- Create Samples table
CREATE TABLE Samples (
  sample_id NUMBER PRIMARY KEY,
  sample_type VARCHAR2(50) NOT NULL,
  meadow_id NUMBER
);

-- Create Access table
CREATE TABLE access_hub (
  access_id NUMBER PRIMARY KEY,
  access_code VARCHAR2(20) NOT NULL,
  access_granted CHAR(1) DEFAULT 'N' NOT NULL,
  forcefield_id NUMBER
);

-- Create ForceField table
CREATE TABLE ForceField (
  forcefield_id NUMBER PRIMARY KEY,
  forcefield_status VARCHAR2(20) NOT NULL,
  forcefield_deactivation_code VARCHAR2(20) NOT NULL
);

-- Add foreign key constraints
ALTER TABLE Flowers ADD CONSTRAINT fk_flowers_meadow FOREIGN KEY (meadow_id) REFERENCES Meadow(meadow_id);
ALTER TABLE Dinosaurs ADD CONSTRAINT fk_dinosaurs_meadow FOREIGN KEY (meadow_id) REFERENCES Meadow(meadow_id);
ALTER TABLE Samples ADD CONSTRAINT fk_samples_meadow FOREIGN KEY (meadow_id) REFERENCES Meadow(meadow_id);
ALTER TABLE access_hub ADD CONSTRAINT fk_access_forcefield FOREIGN KEY (forcefield_id) REFERENCES ForceField(forcefield_id);



------------------------------DATA-------------------------------
-- Insert data into Meadow table
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (1, 'Central Meadow', 'Grassy');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (2, 'Flower Patch', 'Floral');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (3, 'Wooded Glade', 'Forested');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (4, 'Riverbank', 'Aquatic');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (5, 'Hilltop', 'Hilly');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (6, 'Wetland', 'Marshy');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (7, 'Scrubland', 'Shrubby');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (8, 'Coastal Dunes', 'Sandy');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (9, 'Savanna Grasslands', 'Grassy');
INSERT INTO Meadow (meadow_id, meadow_area, meadow_terrain) VALUES (10, 'Woodland Clearing', 'Forested');

-- Insert data into ForceField table
INSERT INTO ForceField (forcefield_id, forcefield_status, forcefield_deactivation_code) VALUES (1, 'Active', '4T8L9M');
INSERT INTO ForceField (forcefield_id, forcefield_status, forcefield_deactivation_code) VALUES (2, 'Active', '2P6X7Q');
INSERT INTO ForceField (forcefield_id, forcefield_status, forcefield_deactivation_code) VALUES (3, 'Active', '9F3W5R');
INSERT INTO ForceField (forcefield_id, forcefield_status, forcefield_deactivation_code) VALUES (4, 'Active', '6D1Z2S');
INSERT INTO ForceField (forcefield_id, forcefield_status, forcefield_deactivation_code) VALUES (5, 'Active', '8H4Y3T');

-- Insert data into Flowers table
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (1, 'Sunflower', 'Yellow', 1);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (2, 'Rose', 'Red', 1);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (3, 'Daisy', 'White', 5);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (4, 'Tulip', 'Purple', 7);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (5, 'Lily', 'Orange', 3);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (6, 'Iris', 'Blue', 5);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (7, 'Carnation', 'Pink', 1);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (8, 'Hibiscus', 'Red', 5);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (9, 'Peony', 'Pink', 7);
INSERT INTO Flowers (flower_id, flower_name, flower_color, meadow_id) VALUES (10, 'Orchid', 'Purple', 7);

-- Insert data into Dinosaurs table
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (1, 'Tyrannosaurus Rex', 'Forest', 25, 1);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (2, 'Triceratops', 'Grassland', 30, 1);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (3, 'Brachiosaurus', 'Woodland', 40, 3);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (4, 'Velociraptor', 'Savanna', 15, 9);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (5, 'Stegosaurus', 'Grassland', 35, 9);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (6, 'Pteranodon', 'Coastal', 20, 3);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (7, 'Ankylosaurus', 'Scrubland', 28, 10);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (8, 'Spinosaurus', 'Wetland', 45, 9);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (9, 'Parasaurolophus', 'Riverbank', 32, 1);
INSERT INTO Dinosaurs (dino_id, dino_species, dino_habitat, dino_age, meadow_id) VALUES (10, 'Pachycephalosaurus', 'Hillside', 22, 10);


-- Insert data into Samples table
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (1, 'Soil', 1);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (2, 'Water', 1);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (3, 'Leaf', 3);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (4, 'Rock', 2);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (5, 'Pollen', 1);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (6, 'Feather', 4);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (7, 'Bone', 3);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (8, 'Seed', 10);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (9, 'Insect', 10);
INSERT INTO Samples (sample_id, sample_type,  meadow_id) VALUES (10, 'Wood', 4);

-- Insert data into Access table
INSERT INTO access_hub (access_id, access_code, access_granted, forcefield_id) VALUES (1, 'XQRT8K', 'N', 1);
INSERT INTO access_hub (access_id, access_code, access_granted, forcefield_id) VALUES (2, 'LF8M2P', 'N', 1);
INSERT INTO access_hub (access_id, access_code, access_granted, forcefield_id) VALUES (3, 'JD3H9V', 'N', 4);
INSERT INTO access_hub (access_id, access_code, access_granted, forcefield_id) VALUES (4, 'N7BT8C', 'N', 5);
INSERT INTO access_hub (access_id, access_code, access_granted, forcefield_id) VALUES (5, 'W2M6GJ', 'N', 3);

COMMIT;


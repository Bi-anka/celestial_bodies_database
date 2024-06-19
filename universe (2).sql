
-- universe.sql

-- Create the stars table
CREATE TABLE stars (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mass NUMERIC(20, 10) NOT NULL,
    diameter NUMERIC(20, 10) NOT NULL,
    luminosity NUMERIC(20, 10) NOT NULL
);

-- Create the planets table
CREATE TABLE planets (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mass NUMERIC(20, 10) NOT NULL,
    diameter NUMERIC(20, 10) NOT NULL,
    orbital_period NUMERIC(20, 10) NOT NULL,
    distance_from_sun NUMERIC(20, 10) NOT NULL
);

-- Create the moons table
CREATE TABLE moons (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    planet_id INTEGER REFERENCES planets(planet_id),
    diameter NUMERIC(20, 10) NOT NULL,
    orbital_period NUMERIC(20, 10) NOT NULL
);

-- Insert initial data into stars
INSERT INTO stars (name, mass, diameter, luminosity) VALUES 
('Sun', 1.989e30, 1.392e9, 3.828e26);

-- Insert initial data into planets
INSERT INTO planets (name, mass, diameter, orbital_period, distance_from_sun) VALUES 
('Mercury', 3.3011e23, 4879, 88.0, 57.9e6),
('Venus', 4.8675e24, 12104, 224.7, 108.2e6),
('Earth', 5.972e24, 12756, 365.2, 149.6e6),
('Mars', 6.4171e23, 6779, 687.0, 227.9e6);

-- Insert initial data into moons
INSERT INTO moons (name, planet_id, diameter, orbital_period) VALUES 
('Moon', 3, 3474.2, 27.3);

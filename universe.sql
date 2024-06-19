
-- Create the Celestial_Bodies table
CREATE TABLE Celestial_Bodies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    mass NUMERIC,
    diameter NUMERIC,
    distance_from_sun NUMERIC
);

-- Create the Planets table
CREATE TABLE Planets (
    id INT PRIMARY KEY REFERENCES Celestial_Bodies(id),
    orbital_period NUMERIC,
    number_of_moons INT
);

-- Create the Stars table
CREATE TABLE Stars (
    id INT PRIMARY KEY REFERENCES Celestial_Bodies(id),
    spectral_type VARCHAR(50),
    luminosity NUMERIC
);

-- Create the Moons table
CREATE TABLE Moons (
    id INT PRIMARY KEY REFERENCES Celestial_Bodies(id),
    planet_id INT REFERENCES Planets(id)
);

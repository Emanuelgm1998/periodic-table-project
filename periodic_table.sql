CREATE TABLE elements (
  atomic_number INTEGER PRIMARY KEY,
  symbol VARCHAR(2) NOT NULL,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE properties (
  atomic_number INTEGER PRIMARY KEY,
  atomic_mass DECIMAL NOT NULL,
  melting_point_celsius DECIMAL,
  boiling_point_celsius DECIMAL,
  type VARCHAR(20),
  FOREIGN KEY(atomic_number) REFERENCES elements(atomic_number)
);

INSERT INTO elements (atomic_number, symbol, name)
VALUES 
  (1, 'H', 'Hydrogen'),
  (2, 'He', 'Helium'),
  (3, 'Li', 'Lithium');

INSERT INTO properties (atomic_number, atomic_mass, melting_point_celsius, boiling_point_celsius, type)
VALUES
  (1, 1.008, -259.1, -252.9, 'nonmetal'),
  (2, 4.0026, -272.2, -268.9, 'noble gas'),
  (3, 6.94, 180.5, 1342, 'alkali metal');

GRANT ALL ON *.* TO adminer;
COMMIT;
CREATE TABLE Sensor.Sensor (SensorId INTEGER PRIMARY KEY);
CREATE TABLE Sensor.Valuename (
  ValuenameId INTEGER PRIMARY KEY,
  Name VARCHAR(128) NOT NULL
);
CREATE TABLE Sensor.Measurement (
  Date DATETIME,
  Sensor INTEGER REFERENCES Sensor(SensorId),
  Valuename INTEGER REFERENCES Valuename(ValuenameId),
  Value DECIMAL(9, 4) NOT NULL,
  PRIMARY KEY (Date, Sensor, Valuename)
);
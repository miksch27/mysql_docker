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
COMMIT;
INSERT INTO
  Sensor
VALUES
  (1);
INSERT INTO
  Sensor
VALUES
  (2);
INSERT INTO
  Valuename
VALUES
  (1, 'Temperature');
INSERT INTO
  Valuename
VALUES
  (2, 'Humidity');
INSERT INTO
  Valuename
VALUES
  (3, 'Pressure');
-- Sensor 1 hat alle 3 Parameter (Temp, Feuchte und Druck)
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 00:00:00', 1, 1, 20.0);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 01:00:00', 1, 1, 21.0);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 02:00:00', 1, 1, 20.5);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 03:00:00', 1, 1, 19.8);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 00:00:00', 1, 2, 59);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 01:00:00', 1, 2, 57);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 02:00:00', 1, 2, 58);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 03:00:00', 1, 2, 69);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 00:00:00', 1, 3, 987);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 01:00:00', 1, 3, 989);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 02:00:00', 1, 3, 992);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 03:00:00', 1, 3, 990);
-- Sensor 2 hat nur Temp
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 00:00:00', 2, 1, 25.0);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 01:00:00', 2, 1, 26.0);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 02:00:00', 2, 1, 25.5);
INSERT INTO
  Measurement
VALUES
  ('2020-03-10 03:00:00', 2, 1, 24.8);
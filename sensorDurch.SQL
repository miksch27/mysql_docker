SELECT
  m.Date,
  (
    SELECT
      AVG(m2.Value)
    FROM
      Measurement m2
    WHERE
      m2.Valuename = 1
      AND m2.Date = m.Date
  ) AS Temperature,
  (
    SELECT
      AVG(m2.Value)
    FROM
      Measurement m2
    WHERE
      m2.Valuename = 2
      AND m2.Date = m.Date
  ) AS Humidity,
  (
    SELECT
      AVG(m2.Value)
    FROM
      Measurement m2
    WHERE
      m2.Valuename = 3
      AND m2.Date = m.Date
  ) AS Pressure
FROM
  Measurement m
GROUP BY
  m.Date;
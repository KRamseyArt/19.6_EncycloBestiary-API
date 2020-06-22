DROP TABLE IF EXISTS bestiary_data;

CREATE TABLE bestiary_data (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  bestiary_id INTEGER REFERENCES bestiaries(id),
  data_name TEXT NOT NULL,
  data_description TEXT NOT NULL
);
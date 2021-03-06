DROP TABLE IF EXISTS bestiary_fields;

CREATE TABLE bestiary_fields (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL,
  type TEXT NOT NULL,
  label TEXT NOT NULL,
  bestiary_id INTEGER REFERENCES bestiaries(id)
)
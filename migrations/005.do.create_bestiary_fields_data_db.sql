DROP TABLE IF EXISTS bestiary_fields_data;

CREATE TABLE bestiary_fields_data (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  field_id INTEGER REFERENCES bestiary_fields(id) NOT NULL,
  data_id INTEGER REFERENCES bestiary_data(id) NOT NULL,
  value TEXT NOT NULL
)
DROP TABLE IF EXISTS bestiaries;

CREATE TABLE bestiaries (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  user_id INTEGER REFERENCES users(id) ON DELETE SET NULL,
  bestiary_name TEXT NOT NULL,
  bestiary_description TEXT NOT NULL
);
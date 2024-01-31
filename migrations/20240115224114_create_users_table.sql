-- Add migration script here
CREATE TABLE users (
  id uuid NOT NULL PRIMARY KEY,
  username TEXT UNIQUE,  
  email TEXT UNIQUE,
  password TEXT,
  access_token TEXT,
  refresh_token TEXT,
  provider TEXT NOT NULL DEFAULT `google`,
  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMPTZ,
  last_login TIMESTAMPTZ 
);

INSERT INTO users (id, username, email, password)
VALUES ('1224560f-4d62-4eb0-8dd0-488f73871c87'

, 'ferris','a@a.com', '$argon2id$v=19$m=19456,t=2,p=1$VE0e3g7DalWHgDwou3nuRA$uC6TER156UQpk0lNQ5+jHM0l5poVjPA1he/Tyn9J4Zw');

INSERT INTO users (id, username, email, password)
VALUES ('1277560f-4d62-4eb0-8dd0-488f73871c87'

, 'admin','admin@admin.com', '$argon2id$v=19$m=19456,t=2,p=1$VE0e3g7DalWHgDwou3nuRA$uC6TER156UQpk0lNQ5+jHM0l5poVjPA1he/Tyn9J4Zw');
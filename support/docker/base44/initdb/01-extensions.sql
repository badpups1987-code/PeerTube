-- Extensions required by PeerTube (it also creates them itself at startup
-- when the database user is a superuser, which is the case here).
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE EXTENSION IF NOT EXISTS unaccent;

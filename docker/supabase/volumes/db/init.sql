\set pguser `echo "$POSTGRES_USER"`

-- realtime
create schema if not exists _realtime;
alter schema _realtime owner to :pguser;

-- postgis extension
create extension if not exists postgis schema extensions;

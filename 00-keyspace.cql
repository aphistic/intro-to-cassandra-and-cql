-- Create a new keyspace with the name 'cqlintro' and the SimpleStrategy as the
-- replication strategy and a replication factor of 1.  SimpleStrategy is fine for
-- development or just playing but once you're setting up a keyspace in production
-- be sure to switch to NetworkTopologyStrategy!
CREATE KEYSPACE cqlintro
WITH REPLICATION = {'class':'SimpleStrategy', 'replication_factor':1};

-- Start using the new keyspace as the default keyspace.
-- You don't need to do this part as you can just refer to tables with the full
-- name of 'cqlintro.table_name', this just makes it easier.
USE cqlintro;

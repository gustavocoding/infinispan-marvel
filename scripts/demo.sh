SERVER_HOME=~/Source/github/infinispan/server/integration/build/target/infinispan-server-9.2.0-SNAPSHOT

# Create user for rest
./create-user.sh $SERVER_HOME

# Create indexed cache
$SERVER_HOME/bin/ispn-cli.sh -c --file=create-cache.cli

# Register proto
./register-protobuf.sh

# Obtain the registered proto
./check-protobuf.sh

# Add _type field to entities
./prepare-data.sh

# Write data to the cache
./ingest.sh


if [[ $# -eq 0 ]] ; then
    echo 'Usage: ./demo.sh INFINISPAN_SERVER_HOME'
    exit 1
fi

SERVER_HOME=$1

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


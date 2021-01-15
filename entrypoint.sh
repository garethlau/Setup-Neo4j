#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -d -p 7474:7474 -p 7687:7687 -v $PWD/data:/data -v $PWD/plugins:/plugins -e NEO4J_AUTH=neo4j/$INPUT_PASSWORD -e NEO4J_apoc_export_file_enabled=true -e NEO4J_apoc_import_file_enabled=true -e NEO4J_apoc_import_file_use__neo4j__config=true -e NEO4JLABS_PLUGINS=["apoc"] neo4j:$INPUT_TAG"

sh -c "$docker_run"

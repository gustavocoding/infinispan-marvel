curl -v -u user:user -X DELETE http://127.0.0.1:8080/rest/___protobuf_metadata/character.proto
curl -v -u user:user -X POST --data-binary @../proto/character.proto http://127.0.0.1:8080/rest/___protobuf_metadata/character.proto

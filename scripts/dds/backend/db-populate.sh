#!/usr/bin/env bash
docker exec  dds-back knex migrate:latest && docker exec dds-back knex seed:run
#!/usr/bin/env bash
docker exec  ofb-trivia-back knex migrate:latest && docker exec ofb-trivia-back knex seed:run
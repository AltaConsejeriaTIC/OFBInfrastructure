#!/usr/bin/env bash
docker exec ofb-trivia-back knex --knexfile config/triviaDBParameters.js --env production  migrate:latest
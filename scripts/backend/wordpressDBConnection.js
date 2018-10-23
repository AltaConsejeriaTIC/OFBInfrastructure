'use strict';

const Model = require('objection').Model;
const Knex = require('knex');
const knexFile = require('./wordpressDBParameters');
const knexConfig = Knex(knexFile.development); //specify environment (knexFile.development or knexFile.production)
Model.knex(knexConfig);

module.exports = Model;
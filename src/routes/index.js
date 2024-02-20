const routes = require('express').Router()
const { testFunction } = require('../services/test')

/* REMOVE THIS ROUTE, IS ONLY FOR TEST */
routes.get('/ping', testFunction)

module.exports = routes

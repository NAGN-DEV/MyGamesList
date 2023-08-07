const apiRouter = require("express").Router();
const { getUserById } = require("../db/index");
const { JWT_SECRET } = process.env;
const jwt = require("jsonwebtoken");

apiRouter.get('/', (req, res, next) => {
    res.send({
        message: "API is under construction!",
    });
});

module.exports = apiRouter;
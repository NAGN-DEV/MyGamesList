const { Router } = require('express');
const { userRouter } = require('./user');

const apiRouter = Router();

apiRouter.use('/user', userRouter);;

module.exports.apiRouter = apiRouter;
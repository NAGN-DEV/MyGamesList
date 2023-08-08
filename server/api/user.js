const { Router } = require('express');
const { createNewUser, getUserByUsername, getUserById } = require('../db');

const userRouter = Router();

userRouter.post('/', (req, res) => {
    const { username, password, email, isAdmin } = req.body;
    createNewUser()
        .then((user) => {
            console.log('A new user has been saved');
            res.send(201, user);
        })
        .catch((err) => {
            console.log(err);
            res.send(err);
            // res.sendStatus(500);
        });
});

userRouter.get('/:username', (req, res) => {
    getUserByUsername(req.params.username)
        .then((user) => {
            res.send(user);
        })
        .catch((err) => {
            console.log(err);
            res.send(err);
            // res.sendStatus(500);
        });
});

userRouter.get('/id/:id', (req, res) => {
    getUserById(req.params.id)
        .then((user) => {
            res.send(user);
        })
        .catch((err) => {
            console.log(err);
            res.send(err);
            // res.sendStatus(500);
        });
});

module.exports = {
    userRouter
};
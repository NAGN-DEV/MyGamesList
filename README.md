# Organize Power
An MAL Clone Project developed by
- [Naseer Hines](https://github.com/NaseerHines)
- [Alec Anthony]()
- [Gabriel Keowen]()
- [Nicholas Chang]()

Current Deployment via [TBD]()
- LINK TO LIVE BUILD

## Contributing to Development
- Fork repository and clone locally
- Install dependencies inside project folder
- Script below will install root and client for you
```
npm run setup
```
- Create a feature branch
```
git checkout -b new-feature
```
- Add the following variables to .env
```
DB_HOST='localhost'
DB_USER='root'
DB_PASSWORD=''
DB_NAME='NAGN'
```
- Start mysql in your terminal, then npm run the build db command in your terminal
```
MAC: 'mysql.server start' OR WSL: 'sudo service mysql start', then 'npm run build:db'
```
- You can  start the server for development build with
```
npm run server:dev
```
- You can also build the db and then run the server in development build with
```
npm run start:dev
```
- Start the client development build
```
npm run client:dev
```
- Check out the SQL file this fill is what sets up the DB and also seeds it with prefilled data
```
NAGN.sql
```
- Open localhost:5173 in browser to view application
```
localhost:5173
```
- Make edits, stage changes, and make a commit
```
git add newfile.js
git commit -m "Add new feature"
```
- Push feature branch to origin
```
git push origin new-feature
```
- Submit a pull request!

## Technology Stack
### Front-End
- [Vite](https://vitejs.dev/) - Vite (French word for "quick", pronounced /vit/, like "veet") is a new breed of frontend build tooling that significantly improves the frontend development experience.
- [React 16.13](https://reactjs.org/docs/react-api.html) - A JavaScript library for building user interfaces.
- [React Router 5.2](https://reacttraining.com/react-router/) - React Router is a collection of navigational components that compose declaratively with your application.

### Server
- [Node.js 8.17](https://nodejs.org/en/docs/) - As an asynchronous event-driven JavaScript runtime, Node.js is designed to build scalable network applications.
- [Express 4.17](https://expressjs.com/en/api.html) - Fast, unopinionated, minimalist web framework for Node.js.

### Database
- [MySQL](https://dev.mysql.com/doc/) - MySQL is an open-source relational database management system.

### Authentication
- [TBD](LINK) - About

### Deployment
- [TBD](LINK) - About

### External APIs
- [N/A](N/A) - N/A

### Linter
- [N/A](N/A) - N/A


## Development Team
- [Naseer Hines](https://github.com/NaseerHines)
- [Alec Anthony]()
- [Gabriel Keowen]()
- [Nicholas Chang]()

## License

The MIT License (MIT)

Copyright (c) 2020 Naseer Hines, Alec Anthony, Gabriel Keowen, Nicholas Chang

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
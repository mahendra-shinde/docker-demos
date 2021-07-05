'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello world from container !\n');
  res.send('Do i Know you '+req.headers.from+' ?');
  console.log("Received a request"+" "+req.headers.from);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);

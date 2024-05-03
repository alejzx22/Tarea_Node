const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('BYE World!');
    });

app.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
    }
);

// node /home/alej/Documentos/Tarea_Node/index.js
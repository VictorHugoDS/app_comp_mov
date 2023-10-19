import express from 'express';
var app = express();
const port = 8080

import { lista_dados } from './lista.js'


// retorna a lista com todos os itens a serem carregados
app.get('/get_list', function(req, res) {
  res.json(lista_dados);
});

app.get('/', function(req, res) {
  console.log("WELLCOME TO OUR BACKEND! \n DO NOT ASK HIM TO MUCH BECAUSE IT'S TO YOUNG TO HIM");
});

app.listen(port, () => {
  console.log(`API aberta na porta ${port}`)
})
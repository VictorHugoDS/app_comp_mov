var express = require('express');
var app = express();



// retorna a lista com todos os itens a serem carregados
app.get('/get_list', function(req, res) {
  res.json(lista_dados);
});
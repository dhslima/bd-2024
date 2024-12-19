const Produto = require("./model/produto");
const database = require("./db");
const Categoria = require("./model/categoria");
const Detalhe = require("./model/detalhe");
const Rotulo = require("./model/rotulo");
const ProdutoRotulo = require("./model/produtorotulo");

const setupRelacoes = require("./model/relacoes");

(async () => {
  try {
    setupRelacoes();

    await database.sync();
    console.log("DB sync");
  } catch (error) {
    console.error("Erro! ", error);
  }
})();

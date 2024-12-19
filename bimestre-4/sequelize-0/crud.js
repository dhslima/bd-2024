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

    const createProduct = async (nome, tipo, preco, descricao) => {
      const p = await Produto.create({
        nome: nome,
        tipo: tipo,
        preco: preco,
        descricao: descricao,
      });
      console.log("Produto criado: ", p.toJSON());
    };

    const readProduct = async () => {};

    const readProducts = async () => {};

    const updateProduct = async () => {};

    const deleteProduct = async () => {};
  } catch (error) {
    console.error("Erro! ", error);
  }
})();

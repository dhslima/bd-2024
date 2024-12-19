const Produto = require("./produto");
const Categoria = require("./categoria");
const Detalhe = require("./detalhe");
const Rotulo = require("./rotulo");
const ProdutoRotulo = require("./produtorotulo");
// node crud.js
module.exports = () => {
  Categoria.hasMany(Produto, {
    foreignKey: "categoria_id",
  });

  Produto.belongsTo(Categoria, {
    foreignKey: "categoria_id",
  });

  Produto.hasOne(Detalhe, {
    foreignKey: "produto_id",
  });

  Detalhe.belongsTo(Produto, {
    foreignKey: "produto_id",
  });

  Produto.belongsToMany(Rotulo, {
    through: ProdutoRotulo,
  });

  Rotulo.belongsToMany(Produto, {
    through: ProdutoRotulo,
  });
};

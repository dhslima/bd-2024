const { DataTypes } = require("sequelize");
const database = require("../db");

const ProdutoRotulo = database.define("produto_rotulo", {
  atribuidoEm: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
  prioridade: {
    type: DataTypes.INTEGER,
    defaultValue: 1,
  },
});

module.exports = ProdutoRotulo;

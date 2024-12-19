const { DataTypes } = require("sequelize");
const database = require("../db");

const Detalhe = database.define("Detalhe", {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  garantia: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  estoque: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
});
module.exports = Detalhe;

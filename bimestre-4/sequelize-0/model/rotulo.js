const {DataTypes} = require('sequelize');
const database = require('../db');

const Rotulo = database.define(
    'Rotulo',
    {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            allowNull: false,
            primaryKey: true
        },
        nome: {
            type:DataTypes.STRING,
            allowNull: false
        }
    }
);

module.exports = Rotulo;
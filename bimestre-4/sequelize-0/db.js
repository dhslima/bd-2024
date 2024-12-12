const {Sequelize} = require('sequelize');
const sequelize = new Sequelize(
    'sequelize', // nome do banco
    'sequelize', // nome do usuario
    'sequelize', // senha de acesso
    {
        host: 'localhost',
        dialect: 'mysql'
    }
);
module.exports = sequelize;
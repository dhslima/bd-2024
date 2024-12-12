const Produto = require('./model/produto');
const database = require('./db');

(
    async () => {
        try {
            await database.sync();
            console.log("DB sync");

            const createProduct = async (nome, tipo, preco, descricao) => {
                const p = await Produto.create({
                    nome: nome,
                    tipo: tipo,
                    preco: preco,
                    descricao: descricao
                });
                console.log('Produto criado: ', p.toJSON());
            };

            await createProduct("Monitor", "Tela", "1000.00", "144hz");
            await createProduct("Monitor", "Tela", "1000.00", "144hz");
            await createProduct("Monitor", "Tela", "1000.00", "144hz");
            await createProduct("Monitor", "Tela", "1000.00", "144hz");
            await createProduct("Monitor", "Tela", "1000.00", "144hz");

        }
        catch (error) {
            console.error("Erro! ", error)
        }
    }
)();


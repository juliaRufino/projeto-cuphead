var database = require("../database/config")

function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM chefe;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function exibirRanking(fkUsuario) {
    var instrucao = `
    SELECT chefe.foto, chefe.nome, votoUsuario.dificuldade FROM chefe JOIN votoUsuario
    ON fkChefe = idChefe
    WHERE fkUsuario = ${fkUsuario};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// função
function exibirChefeMaisDificil() {
    var instrucao = `
    SELECT chefe.foto AS foto, chefe.nome AS nome, COUNT(dificuldade) AS quantidadeDificuldade FROM votoUsuario JOIN chefe
    ON fkChefe = idChefe
    WHERE dificuldade LIKE 'Muito Difícil'
    GROUP BY chefe.nome, chefe.foto ORDER BY quantidadeDificuldade DESC limit 1;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function exibirChefeMaisFacil() {
    var instrucao = `
    SELECT chefe.foto AS foto, chefe.nome AS nome, COUNT(dificuldade) as quantidadeDificuldade FROM votoUsuario JOIN chefe
    ON fkChefe = idChefe
    WHERE dificuldade LIKE 'Fácil'
    GROUP BY chefe.nome, chefe.foto ORDER BY quantidadeDificuldade DESC limit 1;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    exibirRanking,
    listar,
    exibirChefeMaisDificil,
    exibirChefeMaisFacil
};
var database = require("../database/config")

function listar() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        SELECT * FROM votoUsuario;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function inserirVotoUsuario(fkUsuario, fkChefe, dificuldade) {
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO votoUsuario (idVotoUsuario, fkUsuario, fkChefe, dificuldade) VALUES (null, ${fkUsuario}, ${fkChefe}, '${dificuldade}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function exibirQtdUserRanking() {
    var instrucao = `
    SELECT COUNT(DISTINCT fkUsuario) as quantidadeUsuario FROM votoUsuario;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function deletarDadosRanking(fkUsuario) {
    var instrucao = `
    DELETE FROM votoUsuario
    WHERE fkUsuario = ${fkUsuario};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function verificarUsuarioRanking(fkUsuario) {
    var instrucao = `
    SELECT COUNT(idVotoUsuario) AS quantidadeLinha  FROM votoUsuario
    WHERE fkUsuario = ${fkUsuario};
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function chefePorRegiao() {
    var instrucao = `
    SELECT chefe.regiao, COUNT(dificuldade) as quantidadeDificuldade FROM votoUsuario JOIN chefe
    ON fkChefe = idChefe
    WHERE dificuldade LIKE 'Muito Difícil'
    GROUP BY chefe.regiao ORDER BY quantidadeDificuldade;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function top10Chefes() {
    var instrucao = `
    SELECT chefe.nome, COUNT(dificuldade) as quantidadeDificuldade FROM votoUsuario JOIN chefe
    ON fkChefe = idChefe
    WHERE dificuldade LIKE 'Muito Difícil'
    GROUP BY chefe.nome ORDER BY quantidadeDificuldade DESC limit 10;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    inserirVotoUsuario,
    listar,
    exibirQtdUserRanking,
    deletarDadosRanking,
    verificarUsuarioRanking,
    chefePorRegiao,
    top10Chefes
};
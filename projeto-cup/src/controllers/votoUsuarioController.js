var votoUsuarioModel = require("../models/votoUsuarioModel");

var sessoes = [];

function testar(req, res) {
    console.log("ENTRAMOS NA votoUsuarioController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function listar(req, res) {
    votoUsuarioModel.listar()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

function inserirVotoUsuario(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var idUsuario = req.body.idUsuarioServer;
    var chefe = req.body.chefeServer;
    var dificuldadeChefe = req.body.dificuldadeChefeServer;

    // Faça as validações dos valores
    if (idUsuario == undefined) {
        res.status(400).send("O id do usuário está undefined!");
    } else if (chefe == undefined) {
        res.status(400).send("O chefe está undefined!");
    } else if (dificuldadeChefe == undefined) {
        res.status(400).send("A dificuldade do chefe está undefined!");
    } else {
        
        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        votoUsuarioModel.inserirVotoUsuario(idUsuario, chefe, dificuldadeChefe)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

function exibirQtdUserRanking(req, res) {
        
        votoUsuarioModel.exibirQtdUserRanking()
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
}

function deletarDadosRanking(req, res) {
    var fkUsuario = req.params.fkUsuario;

    votoUsuarioModel.deletarDadosRanking(fkUsuario)
        .then(
            function (resultado) {
                res.json(resultado);
            }
        )
        .catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro os dados do ranking: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

function verificarUsuarioRanking(req, res) {
    var fkUsuario = req.params.fkUsuario;

    votoUsuarioModel.verificarUsuarioRanking(fkUsuario)
        .then(
            function (resultado) {
                res.json(resultado);
            }
        )
        .catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro os dados do ranking: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

module.exports = {
    inserirVotoUsuario,
    listar,
    testar,
    exibirQtdUserRanking,
    deletarDadosRanking,
    verificarUsuarioRanking
}
var chefeModel = require("../models/chefeModel");

var sessoes = [];

function testar(req, res) {
    console.log("ENTRAMOS NA chefeController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function listar(req, res) {
    chefeModel.listar()
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

function exibirRanking(req, res) {
    var fkUsuario = req.body.fkUsuarioServer
    if(fkUsuario == undefined) {
        res.status(400).send('A fk do usuário não foi enviada!')
    } else {
        chefeModel.exibirRanking(fkUsuario).then((resultado) => {
            if (resultado.length > 0) {
                res.status(200).json(resultado)
            } else {
                res.status(204).send('Não chegou nenhum resultado!')
            }
        }).catch((erro) => {
            console.log(erro)
            res.status(500).json(erro.sqlMessage)
        })
    }
}



module.exports = {
    exibirRanking,
    listar,
    testar
}
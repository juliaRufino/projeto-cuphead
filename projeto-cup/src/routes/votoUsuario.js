var express = require("express");
var router = express.Router();

var votoUsuarioController = require("../controllers/votoUsuarioController");

router.get("/", function (req, res) {
    votoUsuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    votoUsuarioController.listar(req, res);
});

router.post("/inserirVotoUsuario", function (req, res) {
    votoUsuarioController.inserirVotoUsuario(req, res);
})

router.get("/exibirQtdUserRanking", function (req, res) {
    votoUsuarioController.exibirQtdUserRanking(req, res);
})

router.delete("/deletarDadosRanking/:fkUsuario", function (req, res) {
    votoUsuarioController.deletarDadosRanking(req, res);
})

router.get("/verificarUsuarioRanking/:fkUsuario", function (req, res) {
    votoUsuarioController.verificarUsuarioRanking(req, res);
})

module.exports = router;
var express = require("express");
var router = express.Router();

var chefeController = require("../controllers/chefeController");

router.get("/", function (req, res) {
    chefeController.testar(req, res);
});

router.get("/listar", function (req, res) {
    chefeController.listar(req, res);
});

router.post("/exibirRanking", function (req, res) {
    chefeController.exibirRanking(req, res);
})

router.get("/exibirChefeMaisDificil", function (req, res) {
    chefeController.exibirChefeMaisDificil(req, res);
})

router.get("/exibirChefeMaisFacil", function (req, res) {
    chefeController.exibirChefeMaisFacil(req, res);
})

module.exports = router;
document.addEventListener('DOMContentLoaded',()=> {
    fetch("/chefe/exibirChefeMaisDificil", {
        method: "GET",
        headers: {
            "Content-Type": "application/json"
        },

    }).then((resposta) => {
        if (resposta.ok) {
            console.log(resposta)
            resposta.json().then((chefeDificil) => {
                conteudoChefeDificil.innerHTML = 
                `
                <img class="imgChefeDashboardDificilFacil" src="${chefeDificil[0].foto}">
                <div class="areaNumero">
                    <span id="nomeChefeDificil" class="nomeChefe">${chefeDificil[0].nome}</span>
                </div>
                `
            })
        } else {
            console.log('Deu erro no then')
        }
    })
})

document.addEventListener('DOMContentLoaded',()=> {
    fetch("/chefe/exibirChefeMaisFacil", {
        method: "GET",
        headers: {
            "Content-Type": "application/json"
        },

    }).then((resposta) => {
        if (resposta.ok) {
            console.log(resposta)
            resposta.json().then((chefeFacil) => {
                conteudoChefeFacil.innerHTML = 
                `
                <img class="imgChefeDashboardDificilFacil" src="${chefeFacil[0].foto}">
                        <div class="areaNumero">
                            <span class="nomeChefe">${chefeFacil[0].nome}</span>
                </div>
                `
            })
        } else {
            console.log('Deu erro no then')
        }
    })
})

document.addEventListener('DOMContentLoaded',()=> {
    fetch("/votoUsuario/exibirQtdUserRanking", {
        method: "GET",
        headers: {
            "Content-Type": "application/json"
        },

    }).then((resposta) => {
        if (resposta.ok) {
            console.log(resposta)
            resposta.json().then((qtdUserRanking) => {
                conteudoQtdUsuario.innerHTML = 
                `
                <span id="numeroUsuario">${qtdUserRanking[0].quantidadeUsuario}</span>
                <span class="subtituloUsuario">Usuários</span>
                `
            })
        } else {
            console.log('Deu erro no then')
        }
    })
})


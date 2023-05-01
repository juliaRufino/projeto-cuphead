const navbar = document.getElementById("header");

const ativarScroll = () => {
    navbar.classList.toggle("alternada", scrollY > 0);
}

window.addEventListener('scroll', ativarScroll);
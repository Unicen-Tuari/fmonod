"use strict";
let contadorPartidasJ1 = 0;
let contadorPartidasJ2 = 0;
let contadorPartidasIA = 0;
//Me molesta usar variables globales pero no pude encontrar una manera de llamar los contadores desde una funcion
function juego(id1,jugada1,id2,jugada2){
  let resultado;
  switch (jugada1) {
    case "Rock":
      switch (jugada2) {
        case "Rock":
          resultado = "Empate!";
          break;

        case "Paper":
          resultado = "Jugador " + id2 + " gana!";
          break;

        case "Scissors":
          resultado = "Jugador " + id1 + " gana!";
          break;

        default:
      }
      break;

    case "Paper":
      switch (jugada2) {
        case "Rock":
          resultado = "Jugador " + id1 + " gana!";
          break;

        case "Paper":
          resultado = "Empate!";
          break;

        case "Scissors":
          resultado = "Jugador " + id2 + " gana!";
          break;

        default:
      }
      break;

    case "Scissors":
      switch (jugada2) {
        case "Rock":
          resultado = "Jugador " + id2 + " gana!";
          break;

        case "Paper":
          resultado = "Jugador " + id1 + " gana!";
          break;

        case "Scissors":
          resultado = "Empate!";
          break;

      default:
    }
      break;
    default:
  }
  return resultado;
}

function juego1vsIA(){
  let jugador1 = document.querySelector('input[name = "optradio"]:checked').value;
  let jugadorIA = jugadaIA();
  let resultadoJuego1vsIA = juego("1",jugador1,"IA",jugadorIA);
  let modalBody1vsIA = document.getElementById('modal-body-1vsIA');
  modalBody1vsIA.innerHTML = resultadoJuego1vsIA + "<br>";
  modalBody1vsIA.innerHTML += "Jugador 1 escogio: " + jugador1 + "<br>";
  modalBody1vsIA.innerHTML += "Jugador IA escogio: " + jugadorIA;
  if (resultadoJuego1vsIA === "Jugador 1 gana!") {
  contadorPartidasJ1 += 1;
  }
  else if (resultadoJuego1vsIA !== "Empate!") {
  contadorPartidasIA += 1;
  }
}

function juego1vs2(){
  let jugador1 = jugadaJ1();
  let jugador2 = document.querySelector('input[name = "optradioy"]:checked').value;
  let resultadoJuego1vs2 = juego("1",jugador1,"2",jugador2);
  let modalBody1vs2 = document.getElementById('modal-body-1vs2');
  modalBody1vs2.innerHTML = resultadoJuego1vs2 + "<br>";
  modalBody1vs2.innerHTML += "Jugador 1 escogio: " + jugador1 + "<br>";
  modalBody1vs2.innerHTML += "Jugador 2 escogio: " + jugador2;
  if (resultadoJuego1vs2 === "Jugador 1 gana!") {
  contadorPartidasJ1 += 1;
  }
  else if (resultadoJuego1vs2 !== "Empate!") {
  contadorPartidasJ2 += 1;
  }
}

function jugadaJ1(){
  let jugador1 = document.querySelector('input[name = "optradiox"]:checked').value;
  let menuJ1 = document.getElementById('j1');
  let menuJ2 = document.getElementById('j2');
  switchDivDisplay(menuJ1,menuJ2);
  return jugador1;
}

function jugadaIA(){
  let randomIA = Math.floor((Math.random() * 3) + 1);
  let eleccionIA = "";
  // Checkear con un if haciendo get del checkbox de variacion de probabilidad
  let checkFlag = document.getElementById('isVar').checked;
  if (checkFlag) {
  randomIA = Math.floor((Math.random() * 2) + 1);
  }

  switch (randomIA) {
    case 1:
      eleccionIA = "Rock";
      break;

    case 2:
      eleccionIA = "Paper";
      break;

    case 3:
      eleccionIA = "Scissors";
      break;

    default:
      }
      return eleccionIA;
}

function switchDivDisplay(div1,div2){
  //Esta funcion recibe dos elementos div y cambia su visibilidad
  div1.style.display = "none";
  div2.style.display = "block";
}

function showGameCounters(){
  let modalBodyResult = document.getElementById('modal-body-result');
  modalBodyResult.innerHTML = "Partidas ganadas por Jugador 1: " + contadorPartidasJ1 + "<br>";
  modalBodyResult.innerHTML += "Partidas ganadas por Jugador 2: " + contadorPartidasJ2 + "<br>";
  modalBodyResult.innerHTML += "Partidas ganadas por Jugador IA: " + contadorPartidasIA;
}

function changeBgColor(){
  $(document).ready(function () {
    //color picker with addon
    $("#colorpickerbtn").colorpicker().on('changeColor', function(e) {
            $('body')[0].style.backgroundColor = e.color.toString(
                'rgba');
        });
      });
}

function frontendLogin(){
//Aclaro por las dudas en el nombre de la funcion que no uso ninguna validacion de backend (archivos,db,etc)
let user;
let pass;
let checkFlag = document.getElementById('isVar');
user = prompt("Usuario:","Juan Perez");
pass = prompt("Contraseña:","");
if (user === null || user === "" || pass === null || pass === "") {
        alert("User cancelled the prompt.");
    }
else if (user === "admin" && pass === "admin") {
  checkFlag.disabled = false;
}

}

function main(){
  let btnjugarvsia = document.getElementById('jugar-vs-ia');
  btnjugarvsia.addEventListener("click", juego1vsIA);
  let btnjugarj1 = document.getElementById('jugar-j1');
  btnjugarj1.addEventListener("click", jugadaJ1);
  let btnjugarj2 = document.getElementById('jugar-j2');
  btnjugarj2.addEventListener("click", juego1vs2);
  let btnclosemodal = document.getElementById('close1vs2')
  btnclosemodal.addEventListener("click",function(e) {
    switchDivDisplay(document.getElementById('j2'),document.getElementById('j1'));
  } );
  let btnresult = document.getElementById('resultados');
  btnresult.addEventListener("click", showGameCounters);
  let btncolorpicker = document.getElementById('colorpickerbtn');
  btncolorpicker.addEventListener("click", changeBgColor);
  let btnlogin = document.getElementById('adminLogin');
  btnlogin.addEventListener("click", frontendLogin);
}
main();

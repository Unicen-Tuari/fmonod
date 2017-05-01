"use strict";

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
  // alert("You picked " + jugador1);
  // alert(juego("1",jugador1,"IA",jugadaIA()));
  $('#Modal1vsIA').on('shown.bs.modal', function () {
    $('#myInput').focus()
  })
  let resultadoJuego = juego("1",jugador1,"IA",jugadorIA);
  let modalBody1vsIA = document.getElementById('modal-body-1vsIA');
  modalBody1vsIA.innerHTML = resultadoJuego + "<br>";
  modalBody1vsIA.innerHTML += "Jugador 1 escogio: " + jugador1 + "<br>";
  modalBody1vsIA.innerHTML += "Jugador IA escogio: " + jugadorIA;
}

function juego1vs2(){

}

function jugadaIA(){
  // Checkear con un if haciendo get del checkbox de variacion de probabilidad
  let randomIA = Math.floor((Math.random() * 3) + 1);
  let eleccionIA = "";
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

function main(){
  let contadorPartidasJ1 = 0;
  let contadorPartidasIA = 0;
  let btnjugarvsia = document.getElementById('jugar-vs-ia');
  btnjugarvsia.addEventListener("click", juego1vsIA);

}
main();

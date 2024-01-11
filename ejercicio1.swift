import Foundation
import Darwin
/*1. Manchester United FC has hired you as a developer. Develop a program that helps the coach identify their fastest player, player with the most goals, assists, passing accuracy, and defensive involvements.
The system should also allow comparison between two players. Use the following player profiles:

Bruno Fernandes: 5 goals, 6 points in speed, 9 points in assists, 10 points in passing accuracy, 3 defensive involvements. Corresponds to jersey number 8.
Rasmus Hojlund: 12 goals, 8 points in speed, 2 points in assists, 6 points in passing accuracy, 2 defensive involvements. Corresponds to jersey number 11.
Harry Maguire: 1 goal, 5 points in speed, 1 point in assists, 7 points in passing accuracy, 9 defensive involvements. Corresponds to jersey number 5.
Alejandro Garnacho: 8 goals, 7 points in speed, 8 points in assists, 6 points in passing accuracy, 0 defensive involvements. Corresponds to jersey number 17.
Mason Mount: 2 goals, 6 points in speed, 4 points in assists, 8 points in passing accuracy, 1 defensive involvement. Corresponds to jersey number 7.
The program functions as follows: The coach accesses the system and encounters a menu with the following options:

Player Review: By entering the player's jersey number, they can access the player's characteristics. (DONE)
Compare two players: The system prompts for two jersey numbers and displays the data of both players on screen.(DONE)
Identify the fastest player: Displays the player with the most points in speed.(DONE)
Identify the top goal scorer: Displays the player with the most points in goals.(done)
Identify the player with the most assists: Displays the player with the most points in assists.(done)
Identify the player with the highest passing accuracy: Displays the player with the most points in passing accuracy.(DONE)
Identify the player with the most defensive involvements: Displays the player with the most points in defensive involvements.
The system should also allow returning to the main menu.

*/

class Jugador{
    let nombre: String
    let goals: Int
    let Speed: Int
    let Assists: Int
    let Accuracy: Int
    let Defensive: Int
    let Jersey: Int 
        init(nombre: String, goals: Int, Speed: Int, Assists: Int, Accuracy: Int, Defensive: Int, Jersey: Int){
            self.nombre = nombre
            self.goals = goals
            self.Speed = Speed
            self.Assists = Assists
            self.Accuracy = Accuracy
            self.Defensive = Defensive
            self.Jersey = Jersey
        }

    
}

    let Jugador1 = Jugador(nombre: "Bruno Fernandes", goals: 5, Speed: 6, Assists: 9, Accuracy: 10, Defensive: 3, Jersey: 8)
    let Jugador2 = Jugador(nombre: "Rasmus Hojlund", goals: 12, Speed: 8, Assists: 2, Accuracy: 6, Defensive: 2, Jersey: 11)
    let Jugador3 = Jugador(nombre: "Harry Maguire", goals: 1, Speed: 5, Assists: 1, Accuracy: 7, Defensive: 9, Jersey: 5)
    let Jugador4 = Jugador(nombre: "Alejandro Garnacho", goals: 8, Speed: 7, Assists: 8, Accuracy: 6, Defensive: 0, Jersey: 17)
    let Jugador5 = Jugador(nombre: "Mason Mount", goals: 2, Speed: 6, Assists: 4, Accuracy: 8, Defensive: 1, Jersey: 7)
    var ArrayJugador = [Jugador1, Jugador2, Jugador3, Jugador4, Jugador5]

func ReviewJugador(camiseta: Int){
    var JugadorEncontrado: Bool = false
    for i in 0...ArrayJugador.count - 1 {
        if(camiseta == ArrayJugador[i].Jersey){
            JugadorEncontrado = true
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")
            break
        }
        
    }
    if(JugadorEncontrado == false ){
            print("No se encontro dicho jugador")
        }
}

func CompararJugadores(camiseta: Int, camiseta2: Int){
    var JugadorEncontrado1: Bool = false
    var JugadorEncontrado2: Bool = false
    for i in 0...ArrayJugador.count - 1 {
        if(camiseta == ArrayJugador[i].Jersey){
            JugadorEncontrado1 = true
            break
        }
        
    }
    if(JugadorEncontrado1 == false){
        print("No se encontro el primer jugador")
    }
    for i in 0...ArrayJugador.count - 1 {
        if(camiseta2 == ArrayJugador[i].Jersey){
            JugadorEncontrado2 = true
            break
        }
    }
    if(JugadorEncontrado2 == false){
        print("No se encontro el 2do jugador")
    }

    if(JugadorEncontrado1 == true && JugadorEncontrado2 == true){

        print("Jugador 1: ")
         for i in 0...ArrayJugador.count - 1 {
        if(camiseta == ArrayJugador[i].Jersey){
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")
           
            break
        }
    }
        print ("Jugador 2: ")
        for i in 0...ArrayJugador.count - 1 {
        if(camiseta2 == ArrayJugador[i].Jersey){
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")

            break
        }
    }

    }

}

func BuscarJugadorGeneral(numero: Int, opcion: Int){
    var JugadorEncontrado: Bool = false
    switch (opcion){
        case 1:
        for i in 0...ArrayJugador.count - 1 {
        if(numero == ArrayJugador[i].Speed){
            JugadorEncontrado = true
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")
            break
        }
        
        }
        if(JugadorEncontrado == false ){
            print("No se encontro dicho jugador")
        }

        case 2:
         for i in 0...ArrayJugador.count - 1 {
        if(numero == ArrayJugador[i].goals){
            JugadorEncontrado = true
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")
            break
        }
        
        }
        if(JugadorEncontrado == false ){
            print("No se encontro dicho jugador")
        }

        case 3: 
        for i in 0...ArrayJugador.count - 1 {
        if(numero == ArrayJugador[i].Assists){
            JugadorEncontrado = true
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")
            break
        }
        
        }
        if(JugadorEncontrado == false ){
            print("No se encontro dicho jugador")
        }
        case 4:
        for i in 0...ArrayJugador.count - 1 {
        if(numero == ArrayJugador[i].Accuracy){
            JugadorEncontrado = true
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")
            break
        }
        
        }
        if(JugadorEncontrado == false ){
            print("No se encontro dicho jugador")
        }
        case 5:
          for i in 0...ArrayJugador.count - 1 {
        if(numero == ArrayJugador[i].Defensive){
            JugadorEncontrado = true
            print("Nombre: \(ArrayJugador[i].nombre) \n Goles \(ArrayJugador[i].goals) \n  Speed: \(ArrayJugador[i].Speed) \n Assists: \(ArrayJugador[i].Assists) \n Accuracy: \(ArrayJugador[i].Accuracy) \n Defensive: \(ArrayJugador[i].Defensive) ")
            break
        }

         }
         if(JugadorEncontrado == false ){
            print("No se encontro dicho jugador")
        }
        default:
        print("No esta")
    }
}

func JugadorMaXVE(){

     var aux: Int = 0
    aux = ArrayJugador[0].Speed
    for i in 0...ArrayJugador.count - 1{
        if(ArrayJugador[i].Speed > aux){
            aux = ArrayJugador[i].Speed
        }
    }

    return print(BuscarJugadorGeneral(numero: aux, opcion: 1))
}

func JugadorMaxGO(){
    
    var aux: Int = 0
    aux = ArrayJugador[0].goals
    for i in 0...ArrayJugador.count - 1{
        if(ArrayJugador[i].goals > aux){
            aux = ArrayJugador[i].goals
        }
    }

    return print(BuscarJugadorGeneral(numero: aux, opcion: 2))
}

func JugadorMaxAss(){

    var aux: Int = 0
    aux = ArrayJugador[0].Assists
    for i in 0...ArrayJugador.count - 1{
        if(ArrayJugador[i].Assists > aux){
            aux = ArrayJugador[i].Assists
        }
    }

    return print(BuscarJugadorGeneral(numero: aux, opcion: 3))
}

func JugadorMaxPass(){

    var aux: Int = 0
    aux = ArrayJugador[0].Accuracy
    for i in 0...ArrayJugador.count - 1{
        if(ArrayJugador[i].Accuracy > aux){
            aux = ArrayJugador[i].Accuracy
        }
    }

    return print(BuscarJugadorGeneral(numero: aux, opcion: 4))
}


func JugadorMaxDEF(){

    var aux: Int = 0
    aux = ArrayJugador[0].Defensive
    for i in 0...ArrayJugador.count - 1{
        if(ArrayJugador[i].Defensive > aux){
            aux = ArrayJugador[i].Defensive
        }
    }

    return print(BuscarJugadorGeneral(numero: aux, opcion: 5))
}

func menu(){

    
    print("Bienvenido al sistema de jugadores")
    print("1.Review de Jugador mediante camiseta:")
    print("2. Comparar")
    print("3. Jugador más veloz.")
    print("4. Jugador con más goles")
    print("5. Jugador con mas assists")
    print("6. Jugador con mas pase")
    print("7. Jugador con mas defensa")
    print("8. Salir")

    var opcion = Int(readLine()!)!
 

    switch(opcion){
        case 1:
        print("Introduzca camiseta: ")
        var camiseta1 = Int(readLine()!)!
        ReviewJugador(camiseta: camiseta1)
        
        case 2:
        print("Introduzca una camiseta: ")
        var camiseta1 = Int(readLine()!)!
        print("Introduzca una segunda camiseta: ")
        var  camiseta2 = Int(readLine()!)!
        CompararJugadores(camiseta: camiseta1, camiseta2: camiseta2)

        case 3:
        JugadorMaXVE()

        case 4:
        JugadorMaxGO()

        case 5:
        JugadorMaxAss()

        case 6:
        JugadorMaxPass()

        case 7:
        JugadorMaxDEF()
        
        case 8:
        exit(0)

        default:
        print("seleccione otra opcion")
    }



}

repeat{
menu()
}while(true)
/*2. A travel agency has a special offer for traveling in any season of 2024. Their destinations are:

Winter: Andorra and Switzerland. In Andorra, there are skiing activities, and in Switzerland, there's a tour of the Swiss Alps.
Summer: Spain and Portugal. In Spain, there are hiking and extreme sports activities. In Portugal, there are activities on the beaches.
Spring: France and Italy. In France, there are extreme sports activities, and in Italy, there's a cultural and historical tour.
Autumn: Belgium and Austria. In Belgium, there are hiking and extreme sports activities, and in Austria, there are cultural and historical activities.
Note: Traveling in winter costs $100, in autumn $200, in spring $300, and in summer $400.

Design a system that helps users choose their best destination according to their personal preferences and the season they want to travel in.
12. Important: With the information you have, you should ask the user the right questions and display on screen what their best destination would be.

Clue: You could consider the user's budget*/

class Winter {
    var Andorra: String = "Skiing activities"
    var Switzerland: String = "Swiss Alps"
    var costo: Int = 100
}

class Summer {
    var Spain: String = "Hiking and extreme sports activities"
    var Portugal: String = "Activities on the beaches."
    var costo: Int = 200
}

class Autumn {
    var Belgium: String = "Hiking and extreme sports activities"
    var Austria: String = "Cultural and historical activities"
    var costo: Int = 400
}

class Spring {
    var France: String = "Extreme sports activities"
    var Italy: String = "cultural and historical tour"
    var costo: Int = 300 

}

func menu(){
    print("Bienvenido a la agencia de viajes")
    print("Le ofrecemos distintos destino turísticos, en distintos biomas")
    print("Elija uno para comenzar: ")
    print("1. Verano")
    print("2. Invierno")
    print("3. Otoño")
    print("4. Primavera")
    print("5. Salir")
    let opcion1: Int = Int(readLine()!)!

    let destino = eleccion(opcion: opcion1)
    print(destino)

    
}

func eleccion(opcion: Int){
    switch(opcion){
        case 1:
        print("Ofrecemos distintas opciones")
        print("1. Spain: Hay hiking y deportes extremo")
        print("2. Portugal: Hay actividades en playas")
        print("3. Salir")
        print("Elija una opcion:")
        let opcion2 = Int(readLine()!)!
        
        if(opcion2 == 1){print("Haz elegido Spain")
        exit(0)}
        if(opcion2 == 2){print("Haz elegido Portugal")
        exit(0)} 
        else{return }
        case 2:
        print("Ofrecemos distintas opciones")
        print("1. Andorra: Skiing activities")
        print("2. Switzerland: Tour of the swiss alps")
        print("3. Salir")
        print("Elija una opcion:")
        let opcion2 = Int(readLine()!)!
        
        if(opcion2 == 1){print("Haz elegido Andorra")
        exit(0)}
        if(opcion2 == 2){print("Haz elegido Switzerland")
        exit(0)} 
        else {return}
        case 3:
        print("Ofrecemos distintas opciones")
        print("1. Belgica: Hiking and extreme adventures")
        print("2. Austria: cultural and historical cultures")
        print("3. Salir")
        print("Elija una opcion")
        let opcion2 = Int(readLine()!)!
        
        if(opcion2 == 1){print("Haz elegido Belgica")
        exit(0)}
        if(opcion2 == 2){print("Haz elegido Austria")
        exit(0)}
        else {return} 
        case 4:
        print("Ofrecemos distintas opciones")
        print("1. Francia: Extreme sports activities")
        print("2. Italia: Cultural and historical tour")
        print("3. Salir")
        print("Elija una opcion")
        let opcion2 = Int(readLine()!)!
        
        if(opcion2 == 1){print("Haz elegido Francia") 
        exit(0)} 
        if(opcion2 == 2){print("Haz elegido Italia")
        exit(0)}
        else{return}

        case 5:
        exit(0)
        default:
        print("no")
    }

}

menu()
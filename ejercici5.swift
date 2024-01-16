/*5. Turkish Airlines has just launched an offer to travel among the following destinations: Turkey, Greece, Lebanon, Spain, and Portugal. Develop an algorithm with the following characteristics:
It must have a login and validate the data; after the third failed attempt, it should be locked. (DONE)
The user must choose the origin country and the destination country, the flight date, and the condition: Economy or First Class.(DONE)
The user must choose if they want to check an additional piece of luggage into the hold.(DONE)
Hand luggage is free of charge.(DONE)
The user must purchase both the outbound and return tickets. (DONE)
The user can choose their preferred meal: Regular, Vegetarian, Kosher.(DONE)
The program must collect the following data: Name, country of origin, passport, and destination country.(DONE)
Upon completing the process, the system will display everything the user has previously chosen along with their information. 
The system will provide the option to confirm the reservation or cancel it. If the user chooses YES, a confirmation message will appear. If not, it will return to the main menu.
*/
import Foundation
import Darwin
class Turkish{
    var Destinos: String
    let nombre: String
    let origen: String
    let pasaporte: Int
    let regreso: String
    let condicion: String
    var maleta: Int? = nil
    var comidaOr: String?
    var meal = ["Regular", "Vegetarian", "Kosher"]

    init(Destinos: String, nombre: String, origen: String, pasaporte: Int, regreso: String, condicion: String){
        self.Destinos = Destinos
        self.nombre = nombre
        self.origen = origen
        self.pasaporte = pasaporte 
        self.regreso = regreso
        self.condicion = condicion
        
    }

    func agregarmaleta(){
        print("Desea agregar una maleta de mano?")
       
        print("1. si")
        print("2. no")
         var opcion = Int(readLine()!)
        maleta = opcion == 1 ? 1 : 0}

    func comida(){
        print("Tenemos estas comidas disponibles:")
        for (i, comida) in meal.enumerated() {
        print("\(i + 1). \(comida)")
         }
    print("elija una opcion: " )
    var opcion = Int(readLine()!)!
    switch opcion {
        case 1:
        comidaOr = meal[0]
        case 2:
        comidaOr = meal[1]
        case 3:
        comidaOr = meal[2]
        default:
        comidaOr = meal[3]

    }
    print("\(comidaOr ?? "")")
    }

    func informacion(){
        print("A continuacion le detallaremos toda la informacon")
        print("Nombre: \(nombre)")
        print("N* de pasaporte \(pasaporte)")
        print("Viaja desde: \(origen)")
        print("Viaja a: \(Destinos)")
        print("Regresa el: \(regreso)")
        print("Maletas adicionales: \(maleta ?? 0)")
        print("Comida: \(comidaOr ?? "")")
    }
}

func login(){
    let usuarioor: String = "david"
    let contrasenaor: String = "david"
    var contrador: Int = 0
    var verificacion: Bool = false

    repeat{
    print("Ingrese usuario: ")
    let usuario = String(readLine()!)
    print("Ingrese contrasena: ")
    let contrasena = String(readLine()!)

    if(usuario == usuarioor && contrasena == contrasenaor){
        verificacion = true
        print("Ingresando...")
    }
    else {
        contrador += 1
        print("Mal, ingresa de nuevo")
    }
    if(contrador == 3){
        print("3 veces mal, adios")
        exit(0)
    }
    }while(verificacion == false)

}

func menu(){
    var acceso: Bool = false

    repeat{
    print("Bienvenido a turkish airlines")
    print("Porfavor ingrese su nombre: ")
    let nombre = String(readLine()!)
    print("Porfavor ingrese su lugar de origen: ")
    let origen = String(readLine()!)
    print("Porfavor ingrese su numero de pasaporte: ")
    let pasaporte: Int = Int(readLine()!)!
    print("Gracias...")
    print("Tenemos distintos Destinos como:")
    print("1. Turkie")// me parece que ya cambio el nombre
    print("2. Greece")
    print("3. Lebanon")
    print("4. Spain")
    print("5. Portugal")
    var opcion: Int = Int(readLine()!)!
    var destino: String
    switch(opcion){
        case 1: 
        destino = "Turkie"
        case 2:
        destino = "Greece"
        case 3:
        destino = "Lebanon"
        case 4:
        destino = "Spain"
        case 5:
        destino = "Portugal"
        default:
        destino = "NINGUNO"
    }
    print("Que dia regresara: (FORMATO DD/MM/AAAA)")
    let fecha : String = String(readLine()!)
    print("Tenemos 2 condiciones que ofrecemos: ")
    print("1. Economy")
    print("2. First Class")
    opcion = Int(readLine()!)!
    let clase: String
    switch(opcion){
        case 1:
        clase = "Economy"
        case 2:
        clase = "First Class"
        default:
        clase = "NINGUNO"
    }
    print(destino)
    print(nombre)
    print(origen)
    print(pasaporte)
    print(fecha)
    print(clase)


    let Usuario = Turkish(Destinos: destino, nombre: nombre, origen: origen, pasaporte: pasaporte, regreso: fecha, condicion: clase)
    Usuario.agregarmaleta()
    Usuario.comida()
    Usuario.informacion()

    print("Todo conforme?")
    print("1. Si")
    print("2. No")
    var opcionazo = Int(readLine()!)!
    acceso = opcionazo == 1 ? true : false
}while(acceso == false)

print("Vuelo asignado con exito :D")
}
login()
menu()
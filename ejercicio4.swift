/*4. The RH Hotels chain has hired you to design the booking algorithm for their mobile application:

Login; it should be locked after the third failed attempt. (DONE)
The RH Hotels chain exists in 5 countries: Spain, France, Portugal, Italy, and Germany. (DONE)
Each country has its own hotels located in: Madrid, Barcelona, Valencia, Munich, Berlin, Rome, Milan, Paris, Marseille, Madeira, Lisbon, and Porto.(DONE)
All hotels have 24 rooms each: 6 VIP suites, 3 single rooms, 6 double rooms, 6 group rooms, and 3 luxury suites.
The user can make reservations at any time of the year and at any hour, and book as many rooms as desired. (DONE)
Single rooms are priced at $100 per night, double rooms at $200 per night, group rooms at $350 per night, VIP suites at $450 per night, and luxury suites at $550 per night, applicable at any time of the year. (DONE)
The algorithm functions as follows: Login, choose country, choose city, choose room type, select the number of nights, collect user data (name, surname, ID/passport), 
print the total cost, and if the user agrees, print a confirmation message for the reservation. If not, return to the main menu.*/
import Foundation
import Darwin
//ejemplo de clase

class Programmer{
    let name: String
    let apellido: String
    let dni: Int
    var locacion: String?
    var dinero: Int? = 0
    var fecha: String?

    /*
    var spain: [Spain]?
    var france: [France]?
    var italy: [Italy]?
    var portugal: [Portugal]?
    var germany: [Germany]?


    enum Italy {
        case Rome
        case Milan
    }

    enum Portugal {
        case Madeira
        case Lisbon
        case Porto
    }

    enum Germany {
        case Munich
        case Berlin
    }

    enum France {
        case Paris
        case Marseille
    }

    enum Spain { //designara distintos lugares que se pueden ir
        case Madrid
        case Barcelona
        case Valencia
    }
    */

    init(name: String, apellido: String , dni: Int){
        self.name = name
        self.apellido = apellido
        self.dni = dni
    }

    
    /*
    func code(){
        var locacion: String = ""

        guard let spain = spain else {
        print("")
        return
        }

        
        for location in spain{
        
        switch location {
        case .Madrid:
        locacion += "Madrid"
        case .Barcelona:
        locacion += "Barcelona"
        case .Valencia:
        locacion += "Valencia"
        }
        }

        print("El viaje hacia: \(locacion) ")
    }*/

    func Fecha(){

      
        print("Ingrese que fecha desea para su viaje en formato DD/MM/AAAA")
        var fechasss : String = String(readLine()!)
        fecha = fechasss
        print("Cuantos dias se quedara?")
        var numeros: Int = Int(readLine()!)!
        
        if var dinero = self.dinero {
            dinero = dinero * numeros
            self.dinero = dinero
            print("El costo total del viaje es \(dinero)")
        } else {
            print("Error: La variable 'dinero' es nil.")
        }
        
    }

    func habitacion(){
        var vip = 0
        var sm = 0
        var db = 0
        var gr = 0
        var lr = 0
        var validacion: Bool = false
        print("Contamos con 24 habitaciones:")
        print("6 VIP Suites")
        print("3 Single rooms")
        print("6 Double rooms")
        print("6. Group rooms")
        print("3. Luxury rooms")

    repeat{
        print("Cual desea ?")
        let opcion3 = Int(readLine()!)!
        switch (opcion3){
            case 1:
            if(vip <= 6){
                dinero = (dinero ?? 0) + 450
                vip += 1
            }else{
                print("Ya no hay disponibles.")
            }
            case 2:
            if(sm <= 3){
                dinero = (dinero ?? 0) + 100
                sm += 1
            }else {
                print("Ya no hay disponibles")
            }
            case 3:
            if (db <= 6){
                dinero = (dinero ?? 0) + 200
                db += 1
            }else{
                print("Ya no hay dispnibles")
            }
            case 4:
            if (gr < 6){
                dinero = (dinero ?? 0) + 350
                gr += 1
            }else{
                print("Ya no disponibles")
            }
            case 5:
            if (lr < 3){
                dinero = (dinero ?? 0) + 550
                lr += 1
            } else {
                print("ya no hay disponibles")
            }
            default:
            print("a")
        }
        print("Desea agregar otra?")
        print("1. Si")
        print ("2. NO")
        let opcion4: Int = Int(readLine()!)!
        if(opcion4 == 2){
            validacion = true
        } else {
            print("Elija otra opcion")
        }
    }while(validacion == false)
    }

    func paisesyciudades(opcion: Int){
        switch(opcion){
            case 1:
            print("Las ciudades disponibles son: ")
            print("1. Madrid")
            print("2. Barcelona")
            print("3. Valencia")
            let opcion2: Int = Int(readLine()!)!
            switch(opcion2){
                case 1: 
                locacion = "Madrid"
                return
                case 2:
                locacion = "Barcelona"
                return
                case 3:
                locacion = "Valencia"
                return
                default:
                print("Otra cosa")
                return
            }
            case 2:
            print("Las ciudades disponibles son: ")
            print("1. Paris")
            print("2. Marseille")
            let opcion2: Int = Int(readLine()!)!
            switch(opcion2){
                case 1:
                locacion = "Paris"
                return
                case 2:
                locacion = "Marseille"
                return
                default :
                print("no")
            }
            case 3:
            print("Las ciudades disponibles son: ")
            print("1. Munich")
            print("2. Berlin")
            let opcion2: Int = Int(readLine()!)!
            switch(opcion2){
                case 1:
                locacion = "Munich"
                return
                case 2:
                locacion = "Berlin"
                return
                default: 
                print("no")
            }            
            case 4:
            print("las ciudades disponibles son: ")
            print("1. Madeira")
            print("2. Lisbon")
            print("3. Porto")
            let opcion2: Int = Int(readLine()!)!
            switch (opcion2){
                case 1:
                locacion = "Madeira"
                return
                case 2:
                locacion = "Lisbon"
                return
                case 3:
                locacion = "Porto"
                return
                default :
                print("no")
                
            }
            case 5:
            print("Las ciudades disponibles son: ")
            print("1. Rome")
            print("2. Milan")
            let opcion2: Int = Int(readLine()!)!
            switch (opcion2){
                case 1:
                locacion = "Rome"
                return
                case 2 :
                locacion = "Milan"
                return
                default: 
                print("no")
            }
            
            default:
            print("nada")
        }
    }
    
    func Impresion(){
        print( "Buenas Señor/a \(name) usted ha elegido \(locacion ?? ""), pagando \(dinero ?? 0) con fechas \(fecha ?? "")")
    }
}

//Instancia de una clase

/*let Espana = Programmer(name: "David Gallo", age: 32, spain: [.Valencia, .Barcelona])
Espana.code()
let sara = Programmer(name: "sara", age: 40, spain: [.Madrid])
sara.code()
*/

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
    print("Bienvenido a la cadena de hoteles RH HOTELS, el lugar ideal para los fans de Manchester United")
    print("Ingrese su nombre:")
    let nombre: String = String(readLine()!)
    print("Ahora Ingrese su apellido: ")
    let apellido: String = String(readLine()!)
    print("Finalmente ingrese su DNI: ")
    let Dni: Int = Int(readLine()!)!
    let Usuario = Programmer(name: nombre, apellido: apellido, dni: Dni)
    print("Primero elija un pais al cual desea viajar: ")
    print("1. España")
    print("2. Italia")
    print("3. Francia")
    print("4. Alemania")
    print("5. Portugal")
    let opcion: Int = Int(readLine()!)!
    
    Usuario.paisesyciudades(opcion: opcion)
    Usuario.habitacion()
    Usuario.Fecha()
    Usuario.Impresion()
}

login()
var acceso: Bool = false
repeat{
menu()
print("desea realizar otra operacion?")
print("1. si")
print("2. no")
let opcion = Int(readLine()!)! 
acceso = opcion == 1 ? true : false
}while(acceso == false)
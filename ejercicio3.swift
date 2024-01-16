/*

The Valencia Hospital is developing an application to manage appointments. Design an algorithm for this application with the following features:

It must have a login and validate the data; after the third failed attempt, it should be locked.(DOne)
The user can schedule an appointment for: General Medicine, Emergency Care, Clinical Analysis, Cardiology, Neurology, Nutrition, Physiotherapy, Traumatology, and Internal Medicine.
There are 3 doctors for each specialty.(DONE)
The user can only book one appointment per specialist. An error message should be displayed if the user tries to choose two appointments with the same doctor or the same specialty. As a developer, you can choose the doctors' names.
The maximum limit for appointments, in general, is 3. (DONE)
Upon selecting a specialty, it will display if the user prefers a morning or afternoon appointment and show available hours. As a developer, you can choose the hours. (DONE)
Display available specialists. (DONE)
The user can choose their preferred specialist. (DONE)
The basic process is: Login -> Choose specialty -> Choose doctor -> Choose time slot.*/
import Foundation
import Darwin


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

class Medicina{
    static var Doctores: [String: [String]] = [
        "General Medicina": ["Carlos Rivas", "Daniel John", "Perez Hernan"],
        "Emergency Care": ["Daniel Alonso", "Hernan Paredes", "Thiago Rivas"],
        "Clinical Analysis": ["Daniel Alonso", "Daniel John", "Felipe Aba"],
        "Cardiology": ["Santiago Mala", "Johnsito Daniel", "Jimenez Perez"],
        "Neurology": ["Daniel Alonso", "Carlos Rivas", "Jimenez Perez"],
        "Nutrition": ["Santiago Mala", "Carlos Rivas", "Felipe Aba"],
        "Physioterapy": ["Johnsito Daniel", "Hernan Paredes", "Perez Hernan"],
        "Traumatology": ["Hernan Paredes", "Thiago Rivas", "Perez Hernan"],
        "Internal Medicine": ["Carlos paredes", "Santiago Mala", "Carlos Rivas"]
    ]

    static var Horarios: [String: [String]] = [
        "Mañana": ["7am", "9am", "11am"],
        "Tarde": ["1pm", "3pm","5pm"]
    ]

    static var Apuntado: Set<String> = []

    func apuntar(doctor: String, especialidad: String) -> String {
        let apuntadoprofesp = "\(doctor)-\(especialidad)"


            //primero los errores 
        if (Medicina.Apuntado.contains(apuntadoprofesp)){
          return  "Error ya te  apuntaste a esa"
        }

        if(Medicina.Apuntado.count >= 3){
           return "Ya te apuntaste a 3"
        }


        for cita in Medicina.Apuntado {
        let components = cita.components(separatedBy: "-")
        if components.count == 2 {
            let existingDoctor = components[0]
            let existingEspecialidad = components[1]
            
            if existingDoctor == doctor || existingEspecialidad == especialidad {
                return "No puedes elegir al mismo doctor o la misma especialidad más de una vez"
            }
        }
    }

        guard let doctorEsp = Medicina.Doctores[especialidad],
            doctorEsp.contains(doctor) else {
                return "No se puede ese doctor en esa especialidad"
            }




         Medicina.Apuntado.insert(apuntadoprofesp)
         return "Te has apuntado bien"
    }   

    static func mostrarHorarios() -> String{
        var i: Int = 1
        var validacion: Bool = false

        repeat{
        for (periodo, horas) in Horarios {
            print("\(i) para la \(periodo) los horarios son: \(horas.joined(separator: ", "))")
            i += 1
        }
        print("Elija un periodo por numero: ")
        let opcion: Int = Int(readLine()!)!
        switch(opcion){
        case 1:
            if let primera = Horarios.first{
                let(_, horas) = primera
                print("Los horarios disponibles son:\n \(horas.joined(separator: "\n"))")

               let opcionazo = Int(readLine()!)!
                print("Introduce otro.")
            
                validacion == true
                let horarioElegido = horas[opcionazo - 1]
                return("\(horarioElegido)")
            }
            
        
        case 2:
            if let segunda = Horarios.dropFirst().first{
                let(_, horas) = segunda
                print("Los horarios disponibles son:\n \(horas.joined(separator: "\n"))")
                let opcionazo = Int(readLine()!)!
         
    
                let horarioElegido = horas[opcionazo - 1]
                validacion == true
                return("\(horarioElegido)")
                
            }
        
        default:
         print("Elige de nuevo")
        }
        }while(validacion == false)
    }
    
    static func mostrarDOCESP(){
        for(especialidad, doctor) in Doctores {
            print("Para la Especialidad: \(especialidad) los doctores disponibles: \(doctor.joined(separator: ", "))")
        }
    }

    static func mostrarDOCX(opcion: Int){
        switch(opcion){
            case 1: 
            if let primera = Doctores.first {
                let (_, doctores) = primera
            print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
            print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = primera
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 2:
            if let segunda = Doctores.dropFirst().first {
                let(_, doctores) = segunda
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = segunda
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 3:
            if let tercera = Doctores.dropFirst(2).first {
                let(_, doctores) = tercera
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = tercera
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 4:
            if let cuarta = Doctores.dropFirst(3).first {
                let(_, doctores) = cuarta
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = cuarta
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 5:
            if let quinta = Doctores.dropFirst(4).first {
                let(_, doctores) = quinta
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = quinta
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 6:
            if let sexta = Doctores.dropFirst(5).first{
                let(_, doctores) = sexta
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = sexta
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 7:
            if let septima = Doctores.dropFirst(6).first{
                let(_, doctores) = septima
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = septima
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 8:
            if let octavo = Doctores.dropFirst(7).first{
                let(_, doctores) = octavo
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = octavo
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            case 9:
            if let noveno = Doctores.dropFirst(8).first{
                let(_, doctores) = noveno
                print("Los doctores disponibles son:\n \(doctores.joined(separator: "\n "))")
                print("Ahora elija uno por número:")
            guard let opcionazo = Int(readLine()!), opcionazo > 0, opcionazo <= doctores.count else {
                print("Introduce otro.")
                return
            }
    
            let doctorElegido = doctores[opcionazo - 1]
            print("Elegiste a \(doctorElegido)")

                var horario = mostrarHorarios()
                print("Elegiste la especialidad Emergency Care, con el doctor \(doctorElegido), a las: \(horario)")
                let especialidad = noveno
                let medicina = Medicina()
                let resultadoApuntar = medicina.apuntar(doctor: doctorElegido, especialidad: especialidad.key)
                print(resultadoApuntar)
            }

            default:
            print("no")
        }
    }
}


func menu(){
    var i: Int = 1
    print("Elige una especialidad: ")
    for(especialidad, doctor) in Medicina.Doctores{
        print("\(i). \(especialidad)")
        i += 1
    }

    let especialidad: Int = Int(readLine()!)!
    Medicina.mostrarDOCX(opcion: especialidad)



    
}
login()
repeat{
menu()
}while(true)


//var medicina = Medicina()




//Medicina.mostrarHorarios()
//Medicina.mostrarDOCESP()




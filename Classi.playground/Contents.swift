import UIKit

var str = "Hello, playground"

class Persona{
    
    var nome = ""
    var cognome = ""
    var altezza = ""
    var peso = ""
    
    func getNomeCompleto() -> String {
        
        return nome + " " + cognome
    }
    
}

let federico = Persona()
federico.nome = "Federico"
federico.cognome = "Barbieri"
federico.altezza = "1.70"
federico.peso = "65"

print(federico.nome)

let bob = Persona()
bob.nome = "Bob"
bob.altezza = "1.80"
bob.peso = "110"

print(bob.nome)

print(federico.getNomeCompleto())

var federicoNomeCompleto = federico.getNomeCompleto()

class Studente : Persona {
    
    var facoltaUniversitaria = ""
    
    override func getNomeCompleto() -> String {
        
        return super.getNomeCompleto() + " " + self.facoltaUniversitaria
        
        //return "Studente"
    }
}

let mario = Studente()
mario.nome = "Mario"
mario.cognome = "Rossi"
mario.altezza = "1.70"
mario.peso = "80"
mario.facoltaUniversitaria = "Informatica"

print(mario.getNomeCompleto())

class Lavoratore : Persona {
    
    var noneAzienda = ""
}

let pippo = Lavoratore()
pippo.nome = "Pippo"
pippo.cognome = "Verdi"
pippo.noneAzienda = "Apple"

print(pippo.getNomeCompleto())

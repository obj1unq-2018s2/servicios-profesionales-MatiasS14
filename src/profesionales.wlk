// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method corar(monto){asociacionProfecionalesLitoral.recibirDonacion(monto)}
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar(){return #{universidad.provincia()}}
	
	method honorariosPorHora() { return universidad.honorariosRecomendados()}
	
	method cobrar(monto){ universidad.recibirDonacion(monto/2)}
	
}

class ProfesionalAsociadoDelLitoral {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var totalRecaudado=0
	var property honorariosPorHora
		
	var property provinciasDondePuedeTrabajar= #{}
		
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method cobrar(monto){totalRecaudado+=monto}
	
	method pasarDinero(destinatario,monto){
		destinatario.cobrar(monto)
		totalRecaudado-=monto
	}
}


//objeto para poder realizar donacion de profesionales asociados
object asociacionProfecionalesLitoral{
	var donaciones=0
	method recibirDonacion(monto){donaciones+=monto}
}

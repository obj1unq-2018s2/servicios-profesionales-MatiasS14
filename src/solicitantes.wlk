class Institucion {
	var property universidades
	
	method puedeSerAtendida(profesional){
		return universidades.contains(profesional.universidad())
	}
	
}

class Persona{
	var property provincia
	
	method puedeSerAtendida(profesional){
		return provincia== profesional.provincia()
	}
	
}
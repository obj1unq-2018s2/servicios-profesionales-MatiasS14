class Empresa {
	var honorariosReferencia
	var property profesionales = #{}
	
	method contratar(profesional){profesionales+=#{profesional}}
	
	method honorariosReferencia(){return honorariosReferencia}
	
	method honorariosReferencia(unaReferencia){honorariosReferencia=unaReferencia}
	
	method profesionalesCaros(){
		
	  return profesionales.filter{profesional=> profesional.honorariosPorHora()> honorariosReferencia}
	}
	
	method universidadesFormadoras(){
	  return profesionales.map{profesional=> profesional.universidad()}.asSet()
	}
	
	method profesionalMasBarato(){
		
	  return profesionales.min{profesional=> profesional.honorariosPorHora()}
	}
	
	method provinciaEstaCubierta(unaProvincia){
		return profesionales.any{profesional=> profesional.provinciasDondePuedeTrabajar().contains(unaProvincia)}
	}
	
	method cuantosProfesionalesEstudiaronEn(unaUniversidad){
		return profesionales.count{profesional => profesional.universidad()==unaUniversidad}
	}
	
	method profesionalPocoAtractivo(profesional){
	
    }
	
}

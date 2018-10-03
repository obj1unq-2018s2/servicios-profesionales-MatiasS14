class Universidad {
	var provincia
	var honorariosRecomendados
	var donaciones= 0
	
	method provincia(){return provincia}
	method provincia(unaProvincia){provincia=unaProvincia}
	
	method honorariosRecomendados(){return honorariosRecomendados}
	
	method honorariosRecomendados(honorarios){honorariosRecomendados=honorarios}
	
	method recibirDonacion(monto){ donaciones+=monto }
}



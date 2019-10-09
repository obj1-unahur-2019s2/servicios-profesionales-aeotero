


class PersonaSolicitante {
	var property  ubicacion = " "
	
	method puedeSerAtendida(prof){
		return prof.provinciasDondePuedeTrabajar().contains(ubicacion)
	}
	
}


class InstitucionSolicitante{
	var property universidadesReconocidas = #{}
	
	method puedeSerAtendida(prof){
		return universidadesReconocidas.any({p => p == prof.universidad()})
	}// con contains				   .contains(prof.universidad()
	
	
}


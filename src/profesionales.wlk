import universidad.*

class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}

class ProfesionalVinculado {
	var property universidad
	
	method honorariosPorHora() { return universidad.honorariosRecomendados()}
	
	method provinciasDondePuedeTrabajar(){
		return #{universidad.ubicacion()}
	}
}

class ProfesionalLibre {
	var property universidad
	var property honorariosPorHora = 0
	var provinciasDondePuedeTrabajar = #{}
	
	method provinciasDondePuedeTrabajar(prov){
		provinciasDondePuedeTrabajar.add(prov)
	}
}

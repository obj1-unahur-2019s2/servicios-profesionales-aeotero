import profesionales.*
import universidad.*
import solicitantes.*

class EmpresaDeServicios {
	var empleados = #{}
	var property honorarioEmpresa = 0
	
	method agregarProfesional(prof){
		empleados.add(prof)
	}
	
	method sacarProfesional(prof){
		empleados.remove(prof)
	}
	
	method cuantosEstudiaronEn(univ){
		return ( empleados.filter({e => e.universidad() == univ }).size() )
	}	// return (empleados.count ( { e => e.universidad() == univ}))
	
	method profesionalesCaros(){
		return ( empleados.filter({e=> e.honorariosPorHora() > honorarioEmpresa}) )
	}
	
	method universidadesFormadoras (){
		var univ = #{}
		empleados.map({e => univ.add(e.universidad())})
		return univ
	}	// retutn empleados.map({e => e.universidad()})
	// el map retorna lo que le estan ingresando ( si in lista , out lista , si in conj, out conj) 
	
	method profesionalMasBarato(){
		return ( empleados.min({e => e.honorariosPorHora()}) )
	}
	
	method genteAcotada(){
		return (empleados.all({e => e.provinciasDondePuedeTrabajar().size() <= 3}))
		// return empleados.all({e=> e.provinciadondepuedetrabajar().size() <= 3)
	}
	
	method puedeSatisfacerA(solicitante){
		return empleados.any({e=> solicitante.puedeSerAtendida(e)})
	}
}
















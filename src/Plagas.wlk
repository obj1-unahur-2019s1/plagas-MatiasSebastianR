// https://github.com/obj1-unahur-2019s1/plagas-resuelo

class Hogar {
	
	var property nivelDeConfort
	var property nivelDeMugre
	
	method elementoBueno() { return nivelDeConfort <= nivelDeMugre /2 }
			
	}
	


class Huerta {
	
	var property produccion
	
	method elementoBueno() { return produccion > configuracionHuerta.nivel() }
	
}

object configuracionHuerta{
	var property nivel = 300
	
}

class Mascota {
	
	var property nivelDeSalud = 0
    	
	method elementoBueno() { return (nivelDeSalud > 250) }
	
}

class Barrio {
	var property elementos = []
	
	method agregarElementos(cosa) { elementos.add(cosa) }
	method ElementosCopados() { return elementos.filter { cosas => cosas.elementoBueno() } }
	
}

class Cucarachas {
	
	var property poblacion
	var property pesoPromedio
	
	method nivelDeDanio() { return poblacion / 2 }
	
	method transmitirEnfermedad() { pesoPromedio > 10 and poblacion >= 10 }
		
}

class Pulgas {
	
	var property poblacion
		
	method nivelDeDanio() { return poblacion*2 }
	
	method transmitirEnfermedad() { poblacion > 10 }	
	
}

class Garrapatas {
	
	
}

object mosquitos {
	var property poblacion
	
	method nivelDeDanio() {}
}
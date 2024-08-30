object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
     var energia = 30

    method decirSuEnergia() {
        return energia
    }

    method comer() {
        energia = energia + (20/2)
    }

    method volar(distancia) {
        energia = energia - 20 - (2*distancia)
    }
      
 }

object roque {
    var pajaro = pepita
    var cena = 0

    method cambiarDeAve(nombre) {
        pajaro = nombre
        cena = 0
    }

    method alimentar (alimento) {
        pajaro.comer(alimento)
        cena = cena + 1 
    }
}
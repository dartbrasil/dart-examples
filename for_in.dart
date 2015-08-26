main() {
	var candidates = [1,2,3,3,4,5,6,7,8,9];
	var callbacks = [];

	// adiciona uma função que imprime o número corrente do loop
	for(var i in candidates){
		callbacks.add(() => print("O valor nesse nodo é $i"));
	}

	// printa os números adicionados
	callbacks.forEach((c) => c());
}

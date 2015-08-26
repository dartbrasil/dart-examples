main() {
	var candidates = [1,2,3,3,4,5,6,7,8,9];
	var callbacks = [];

	// Chegando no 5 ele para tudo
	print("Exemplo de break\n");
	for(var i in candidates){
		if(i == 5) break;
		print("Passou pelo número $i");
	}

	// Chegando no 5 ele pula
	print("\n\nExemplo de continue\n");
	for(var i in candidates){
		if(i == 5) continue;
		print("Passou pelo número $i");
	}
}

main() {
	var candidates = [1,2,3,4,5,6,7,8,9];
	var callbacks = [];

	// Chegando no 5 ele para tudo
	print("Exemplo de break\n");
	for(var i in candidates){
		if(i == 5){
			print("Parou no $i");
			break;
		}
		print("Passou pelo número $i");
	}

	// Chegando no 5 ele pula
	print("\n\nExemplo de continue\n");
	for(var i in candidates){
		if(i == 5){
			print("Pulou o $i");
			continue;
		}
		print("Passou pelo número $i");
	}
}

String say(String name, String word, [String local]){
	var frase = "$name falou $word";
	if(local != null){
		frase += " em $local";
	}
	return frase;
}

main() {
	print(say("Alguém", "algo"));
	print(say("troxa", "bosta", "fossa"));
}

Function makeAddr(num n){
	return (num i) => n + i;
}

main() {
	var add2 = makeAddr(2);
	var add4 = makeAddr(4);

	print(add2);
	print(add4);

	assert(add2(3) == 5);
	assert(add4(3) == 7);
}

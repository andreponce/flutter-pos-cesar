import 'dart:io';

main(List<String> args){
	print("digite um número inteiro:");
	final pascalNum = int.parse(stdin.readLineSync()!);
	print("Digite 1 para crescente ou 0 para decrescente:");
	final decreasing = stdin.readLineSync()!="1" ? true : false;
	drawTriangle(pascalNum, decreasing);
}

void drawTriangle(int pascalNum, [bool decreasing = false]) {
	String result = "";
	int startNum = decreasing ? pascalNum : 1;
	 while(true) { 
      result += getLine(startNum);
			startNum += decreasing ? -1 : 1;
			if(startNum==0 || startNum>pascalNum) break;
   } 
	 print(result);
}

String getLine(int value){
	String line = "";
	for (int i = 0; i < value; i++) line += "*";
	line+="\n";
	return line;
}
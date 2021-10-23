import 'dart:io';

main(List<String> args){
	const grades = [5, 8, 9, 5.5, 4.3, 2, 1, 9.8, 7.5, 8.5, 8.9, 9.3, 1.45];
	var bestGrades = grades.where(isHightGrade);
	print(bestGrades);
}

bool isHightGrade(grade) => grade>8.5;
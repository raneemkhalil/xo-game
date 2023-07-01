import 'package:dart_project/dart_project.dart' as dart_project;
import 'dart:io';

void main(List<String> arguments) {
  int num;
  bool launch = true, change = false;
  Map<bool, String> xo = {
    true: 'O',
    false: 'X'
  };
  List<String> board = dart_project.initBoard();
  List<int> x = dart_project.init();
  List<int> o = dart_project.init();

  dart_project.printBoard(board);

  while(launch){
    print('${xo[change]} choose a number...');
    String? str = stdin.readLineSync();
    num = int.tryParse(str!) ?? 0;
    if(num > 0 && num <= 9){
      if(x[num] == 1 || o[num] == 1){
        print('this number is used');
        continue;
      }
    }

    switch(change.toString()){
      case 'true':
        num > 0 && num <= 9 ? o[num] = 1 : num;
        num > 0 && num <= 9 ? board[num-1] = 'O' : num; 
        dart_project.printBoard(board);
        launch = dart_project.whosWinner(o);
        break;
      case 'false':
        num > 0 && num <= 9 ? x[num] = 1 : num;
        num > 0 && num <= 9 ? board[num-1] = 'X' : num; 
        dart_project.printBoard(board);
        launch = dart_project.whosWinner(x);
        break;
    }
  
    if(launch == false){
      print('the winner is ${xo[change]}!');
    }
    num > 0 && num <= 9 ? change = !change : change;
  }
}

List<int> init(){
  List<int>array = [];
  for(int i = 0; i < 10; i++){
    array.add(0);
  }
  return array;
}

List<String> initBoard(){
  List<String>board = [];
  for(int i = 0; i < 9; i++){
    board.add((i + 1).toString());
  }
  return board;
}

void printBoard(List<String> board){
  for(int i = 0; i < 9; i+=3){
    print('-------------');
    print('| ${board.elementAt(i)} | ${board.elementAt(i+1)} | ${board.elementAt(i+2)} |');
  }
  print('-------------');
}

bool whosWinner(List<int> a){
  List<String> winnerKeys = ['123', '456', '789', '147', '258', '369', '159', '357'];
  String numbers = '';
  for(int i = 0; i <= 9; i++){
    if(a[i] == 1){
      numbers+=i.toString();
    }
  }
  print(numbers);
  for(String i in winnerKeys){
    if(numbers.contains(i[0]) && numbers.contains(i[1]) && numbers.contains(i[2])){
      return false;
    }
  }
  return true;
}
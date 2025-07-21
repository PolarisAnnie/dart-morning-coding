void main() {
  print(camelToSnake('myProject')); 
  print(camelToSnake('MyProjectName')); 
}

// 카멜 케이스를 입력 받아서 스네이크 케이스로 변환
// 예시 : myProject -> my_project
String camelToSnake(String camelStr) {
  List<String> result = [];

  for (int i = 0; i < camelStr.length; i++) {
    String currentChar = camelStr[i];

    if (currentChar.codeUnitAt(0) >= 65 && currentChar.codeUnitAt(0) <= 90) {
      if (i > 0) {
        result.add('_');
      }
      result.add(currentChar.toLowerCase());
    } else {
      result.add(currentChar);
    }
  }

  return result.join();
}

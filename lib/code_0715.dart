void main() {
  String text = 'AbcDefG';
  print(swapCase(text));
}

// 문자열을 반환하는 함수 (아스키 표를 활용)
// 1. 문자열을 함수의 인자로 전달 받아서
// 2. 문자열 내의 소문자는 대문자로, 대문자는 소문자로 변경한 뒤
// 3. 새로운 문자열 반환

String swapCase(String text) {
  List<String> textList = text.split("");
  for (int i = 0; i < textList.length; i++) {
    int textToAsci = textList[i].codeUnitAt(0);
    if (textToAsci >= 97) {
      int swapUpperCase = textToAsci - 32;
      textList[i] = String.fromCharCode(swapUpperCase);
    } else {
      int swapLowerCase = textToAsci + 32;
      textList[i] = String.fromCharCode(swapLowerCase);
    }
  }
  return textList.join('');
}

/* 풀이
String swapCase(String str){

List<int> codeUnits = str.codeUnits;
List<int> swapCodeUnits = [];
int length = codeUnits.length;

for(var i = 0; i < length; i++){
int codeUnit = codeUnits[i];
if (65 <= codeUnit && codeUnit <= 90){
  codeUnit += 32;
} else if (97 <= codeUnit && codeUnit <= 122){
  codeUnit -= 32;
  }
} 
swapCodeUnits.add(codeUnit);
}
return String.fromCharCodes(swapCodeUnits);
}
*/

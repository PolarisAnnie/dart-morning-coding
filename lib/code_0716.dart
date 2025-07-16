void main() {
  String str = 'aaabbc';
  print(compression(str));
}

// 문자열 압축하기
// aaabbc => a3b2c1
// 반환타입 : 문자열
// 한글자씩 분리해서 반복문을 이용 > 문자열 처리

String compression(String str) {
  // 1. 문자열 한글자씩 분리하기
  // aaabbc => [a,a,a,b,b,c]
  List<String> strSplit = str.split('');

  // 2. 문자열 반복문 이용해서 처리하기
  // 반복되는 문자의 수를 저장하는 변수
  int counter = 1;
  // 문자와 반복되는 수를 넣을 새로운 리스트
  List<String> newStr = [];

  if (str.isEmpty) {
    return "";
  }
  for (int i = 1; i < strSplit.length; i++) {
    // 만일 이전 글자와 현재 글자가 같다면 => counter 증가
    // 다르다면 => 이전 문자열 + counter를 newStr에 추가, counter를 1로 초기화
    if (strSplit[i] == strSplit[i - 1]) {
      counter++;
    } else {
      newStr.add('${strSplit[i - 1]}$counter');
      counter = 1;
    }
  }

  //마지막 글자 처리
  newStr.add('${strSplit[strSplit.length - 1]}$counter');

  //문자열로 다시 변환
  return newStr.join();
}

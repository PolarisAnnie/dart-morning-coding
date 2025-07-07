void main() {
  String a = 'abcedefg'; //abc, bce, ced, def, efg
  String b = 'def';

  // 문자열 a에서 b가 등장하는 위치의 인덱스 찾기
  // 만약 a에서 b가 존재하지 않으면 -1 반환
  int findIndex(String a, String b) {
    // a를 순회하면서 b에 해당하는 값 확인 필요

    for (int i = 0; i < a.length - b.length; i++) {
      int num = i + b.length;
      if (a.substring(i, num) == b) {
        return i;
      }
    }
    return -1;
  }

  print(findIndex(a, b));
}

  /*

    List<String> aSplited = a.split(''); // a 문자열 리스트로 하나씩 담기
    List<String> bSplited = b.split(''); // b 문자열 리스트로 하나씩 담기
    print(aSplited);
    for (var i = 0; i < aSplited.length - b.length + 1; i++) {
      bool isMatched = true;
      for (var j = 0; j < bSplited.length; j++) {
        if(aSplited[i+j] != bSplited[j]){
          isMatched = false;
        }
      }
    }
    if (isMatched)
    return -1;
  }

  print(findIndex(a, b));
  var result = a.indexOf(b);
  print(result);
  */
  
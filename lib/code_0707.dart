void main() {
  String s = "anagram";
  String t = "nagaram";

  if (isAnagram(s, t) == true) {
    print('$t는 $s의 에너그램입니다.');
  } else {
    print('$t는 $s의 에너그램이 아닙니다.');
  }
}

bool isAnagram(String a, String b) {
  // 1. 글자들을 하나씩 나누기 + 2. 각각 정렬하기
  List<String> aSplited = a.split('')..sort();
  List<String> bSplited = b.split('')..sort();

  // 3. 비교
  // 3-1. for문으로 돌면서 비교하기
  /*
  for(var i = 0; i<aSplited.length; i++){
  if (aSplited[i]! = bSplited[i]){
  return false;
  }
  }
  */
  //3-2. 글자를 다시 하나의 문자열로 변환한 뒤 비교하기
  return aSplited.join() == bSplited.join();

  /* 내가 작성한 코드
  // 리스트끼리는 비교를 할 때 ==를 써도 안의 내용이 비교되는 것이 아니라 리스트의 주소끼리 비교가 됨
  // 그래서 아래처럼 진행하면 무조건 false가 나올 수 밖에 없음
  // 관련해서 identical 공부해보기
  if (aSplited.length == bSplited.length) {
    if (aSplited == bSplited) {
      print('$b는 $a의 에너그램입니다.');
      return true;
    } else {
      print('$b는 $a의 에너그램이 아닙니다.');
      return false;
    }
  } else {
    print('$b는 $a의 에너그램이 아닙니다.');
    return false;
  }
  */
}

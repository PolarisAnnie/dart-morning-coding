void main() {
  String s = "abcabc";
  print(isRepeated(s));
}

// 반복되는 문자열로만 이뤄져 있으면 true
// => 반복되는 문자를 지워봤을 때 남는 글자가 없으면 true
// 반복되는 글자 개수를 총 개수로 나눴을 때 0이어야 함
// abab > 반복되는 글자 2개, 총 4개 글자를 2로 나누면 나머지가 0
bool isRepeated(String s) {
  for (int patternLength = 1; patternLength <= s.length ~/ 2; patternLength++) {
    if (s.length % patternLength == 0) {
      // 잘린 글자 수랑 남은 글자들이 같은지 확인
      String pattern = s.substring(0, patternLength);
      String repeated = pattern * (s.length ~/ patternLength);
      if (repeated == s) {
        return true;
      }
    }
  }
  return false;
}

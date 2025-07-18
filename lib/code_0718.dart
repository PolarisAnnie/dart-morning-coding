void main() {
  print(example("hello world"));
  print(example("aaabcdeab"));
}

// 문자열 str을 전달 받아서
// 각 글자가 몇 번 포함되어 있는지 맵에 저장 후 반환
// "hellow world" => {"h" : 1, "e" :1, "l" : 3, "o":2", "d":1, "":1}
// 반환 타입 Map<String, int>
// 함수 이름 example
// 함수 인자 String str

Map<String, int> example(String str) {
  Map<String, int> textCount = {};
  List<String> texts = str.split('');

  for (String text in texts) {
    if (textCount.containsKey(text)) {
      textCount[text] = textCount[text]! + 1;
    } else {
      textCount[text] = 1;
    }
  }

  return textCount;
}

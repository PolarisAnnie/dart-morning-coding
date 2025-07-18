void main() {
  print(isEmail('test@test.com'));
  print(isEmail('ttest@.com'));
  print(isEmail('test@test'));
  print(isEmail('@test.com'));
}

// 문자열 str 인자로 전달받아서
// 이메일인지 여부 반환하는 함수
// 반환타입 bool, 함수이름 isEmail, 인자 String str
// 전달받은 str이 이메일 형식이라면 true, 아니라면 false
// test@test.com => true
// test@.com => false
// test@test => false
// 글자 단위로 split해서 @, . 의 위치를 기반으로 이메일 형식 검증해보기

bool isEmail(String str) {
  int atPos = -1; // @ 위치를 저장(-1은 아직 못찾음)
  int dotPos = -1; // . 위치를 저장(-1은 아직 못찾음)
  List<String> chars = str.split('');
  for (var i = 0; i < chars.length; i++) {
    String char = chars[i];
    if (char == '@') {
      atPos = i;
    } else if (char == '.') {
      dotPos = i;
    }
  }

  // @가 없거나, 첫글자가 @인 경우
  if (atPos < 1) {
    return false;
  }
  // .이 @보다 앞에 있거나, .이 마지막 글자이거나, @ 바로 다음이 .인 경우
  if (dotPos < atPos || dotPos == chars.length - 1 || dotPos - 1 == atPos) {
    return false;
  }
  return true;
}

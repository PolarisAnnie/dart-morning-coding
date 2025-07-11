import 'dart:math';

void main() {
  print(lottoPick());
  print(lottoPick2());
}

// 로또번호 추첨하는 함수 만들기
List<int> lottoPick() {
  Random random = Random();
  List<int> lotto = [];

  // 1. Random 이용해서 1 ~ 45 중 6개의 숫자를 리스트에 추가하기 => while로 진행도 가능
  // 2. 로또 번호의 숫자는 중복되면 안됨
  for (int i = 0; i < 6; i++) {
    int lottoNum = random.nextInt(45) + 1; // 0~44 => 1~45
    if (lotto.contains(lottoNum)) {
      // 중복된 숫자가 있으면 뽑기 횟수 무효 처리
      i--;
    } else {
      lotto.add(lottoNum);
    }
  }

  // 6개의 숫자가 모두 뽑힌 후 정렬하기
  lotto.sort();
  return lotto;
}

// Set을 사용하는 방법도 있음 > List와 같은 역할을 하지만 중복을 허용하지 않음
// Set에 중복되는 값을 넣으면 안 들어감
List<int> lottoPick2() {
  Random random = Random();
  Set<int> lotto = {};

  // 1. Random 이용해서 1 ~ 45 중 6개의 숫자를 리스트에 추가하기 => while로 진행도 가능
  // 2. 로또 번호의 숫자는 중복되면 안됨
  while (lotto.length < 6) {
    int lottoNum = random.nextInt(45) + 1; // 0~44 => 1~45
    lotto.add(lottoNum);
  }

  // 6개의 숫자가 모두 뽑힌 후 리스트로 바꾸고 정렬
  List<int> lottoList = lotto.toList();
  lottoList.sort();
  return lottoList;
}

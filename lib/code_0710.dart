void main() {
  // 배열에 1 더하기
  //1234 => 1234 + 1 => 1235
  // return : [1, 2, 3, 5]
  List<int> digits = [1, 2, 3, 4];
  print(addOne(digits));

  // return : [1, 2, 4, 0]
  List<int> digits2 = [1, 2, 3, 9];
  print(addOne(digits2));

  // return : [1,0,0,0,0]
  List<int> digits3 = [9, 9, 9, 9];
  print(addOne(digits3));
}

// 첫번째 방법 > 내가 풀이한 방식
List<int> addOne(List<int> digits) {
  // 리스트 내 값들을 문자열로 join
  String temp = digits.join('');

  // join된 문자열을 숫자로 변환
  int temp2 = int.parse(temp);

  // 변환된 숫자에 1 더하기
  int temp3 = temp2 + 1;

  // 결과값을 문자열로 바꿔서 split한 상태로 List에 넣기
  List<String> stringDigits = temp3.toString().split('');

  //String List안의 값들을 int로 바꾸고 새 List에 추가하기
  List<int> digitList = [];
  for (String digit in stringDigits) {
    digitList.add(int.parse(digit));
  }

  return digitList;
}

// 두번째 방법 > 리스트 순회하면서 직접 계산하기
List<int> addOne2(List<int> digits) {
  for (var i = digits.length - 1; i >= 0; i--) {
    digits[i] += 1;
    if (digits[i] < 10) {
      return digits;
    }
    digits[i] = 0;
  }
  digits.insert(0, 1);
  return digits;
}

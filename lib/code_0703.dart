// 1~10000 더하기

void main() {
  // [1] 1~10000 더하기

  // 방법 1. for문
  int result = getSum(10000);
  print(result);

  // 방법 2. 가우스 공식
  // 1 ~ 100 => (100 *(100+1))/2
  int result2 = getSum2(10000);
  print(result2);

  // [2] 리스트 뒤집기
  // [1,2,3,4,5] => [5,4,3,2,1]
  // 방법1. List가 가지고 있는 reversed 메서드 사용
  List<int> arr = [1, 2, 3, 4, 5];
  final result3 = arr.reversed.toList();
  print(result3);

  // 방법2. 새로운 리스트 만들어서 List의 길이만큼 반복하면서 반댓값 넣어주기
  // 장점 : 원본 리스트 수정하지 않음
  // 단점 : 리스트의 길이만큼 반복해야 함
  List<int> result4 = [];
  for (var i = 0; i < arr.length; i++) {
    result4.add(arr[arr.length - 1 - i]);
  }
  print(result4);

  // 방법3. 기존 리스트에서 리스트의 길이의 반만 반복하면서 끝값과 첫값 바꿔주기 <- 내가 작업한 방식
  // 0번지와 4번지 교체, 1번지와 3번지 교체, 가운데 값은 그대로
  /*
  int temp1 = arr[0];
  arr[0] = arr[4];
  arr[4] = temp1;

  int temp2 = arr[1];
  arr[1] = arr[3];
  arr[3] = temp2;
  */
  // 장점 : 반만 반복해도 되어서 성능적으로 빨라보임
  // 단점 : 원본 리스트의 변경이 일어남
  // 리스트의 길이를 2로 나눈 몫만큼만 순회

  // 어떻게 함수화 시키지..음..
  // 총 개수 / 2 => 나머지가 있는 경우 가운데 값 그대로, 나머지가 없는 경우 모든 짝 번지끼리 교체 필요
  int remainder = arr.length % 2;
  int quotient = arr.length ~/ 2;
  if (remainder == 0) {
    for (int i = 0; i <= quotient; i++) {
      for (int j = arr.length; j >= quotient; i--) {}
      arr[arr.length];
    }
  } else {}
  print(arr);
}

int getSum(int num) {
  int sum = 0;
  for (int i = 0; i < 10000; i++) {
    sum += i + 1;
  }
  return sum;
}

int getSum2(int num) {
  int sum = (num * (num + 1)) ~/ 2;
  return sum;
}

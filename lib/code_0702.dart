void main() {
  final arr = [7, 9, 2, 3, 1];

  // 선택정렬 : 배열에서 최소값을 찾아서 제일 앞으로 보내면서 정렬하는 방식
  // [7, 9, 2, 3, 1]
  // 첫번째 라운드
  // 0~4번지까지 순회하면서 최소값 찾기 => 1
  // 0번지의 값이 최소값과 다르다면 교환
  // [1, 9, 2, 3, 7]
  // 두번째 라운드
  // 1~4번지까지 순회하면서 최소값 찾기 => 2
  // 1번지의 값이 최소값과 다르다면 교환
  // [1, 2, 9, 3, 7]
  // 세번째 라운드
  // 2~4번지까지 순회하면서 최소값 찾기 => 3
  // 2번지의 값이 최소값과 다르다면 교환
  // [1, 2, 3, 9, 7]
  // 네번째 라운드
  // 3~4번지까지 순회하면서 최소값 찾기 => 7
  // 3번지의 값이 최소값과 다르다면 교환
  // [1, 2, 3, 7, 9]

  for (int i = 0; i < arr.length - 1; i++) {
    // 순회해서 찾는 방법 고민.. 최소값 찾고 그 값의 번지도 알아야 함.
    int minIndex = i;

    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }

  print(arr);
}

void main() {
  print('2 ${isPrime(2)}');
  print('4 ${isPrime(4)}');
  print('6 ${isPrime(6)}');
  print('7 ${isPrime(7)}');
  print('9 ${isPrime(9)}');
  print('13 ${isPrime(13)}');
}

// 소수인지 판별하는 함수
// 1과 자기 자신으로만 나누어지는 수 > true 리턴
// 아니라면 false 리턴
bool isPrime(int number) {
  // 나누었을 때 나머지가 0인 숫자를 리스트로 넣기
  List<int> numList = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      numList.add(i);
    }
  }
  // 리스트 내 아이템 개수가 2개이면 true , 아니면 false
  return numList.length == 2;
}

// 방법 1: 2 ~ number-1 까지 나누어서 나머지가 0이면 false 리턴
/* 방법 2: 약수는 숫자의 절반보다 클 수 없음 / 절반만 돌면 되기 때문에 효율 높음
bool isPrime2(int number){
final half = number ~/2;
  for (var i =2 ; i <= half; i++){
  if (number % i ==0){
    return false;}
  }
return true; 
}
*/

// 방법 3: 입력받은 number의 제곱근을 구해서 제곱근까지만 반복문 돌기 -> 성능적으로 더 좋음
// 다만 숫자가 작은 경우(ex. 7,13, ..) 오히려 제곱근 구하는 것이 더 많은 연산을 필요로 할 수 있음
// 제곱근 연산 : double result = sqrt(number);

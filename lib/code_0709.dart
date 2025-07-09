void main() {
  List<int> nums = [0, 1, 0, 3, 12];
  // 0을 제일 뒤로 보내고 0이 아닌 기존 숫자들은 기존 순서를 유지하면서 뒤로 이동
  // result : [1, 3, 12, 0, 0 ]
  int nonZeroPos = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[nonZeroPos] = nums[i];
      nonZeroPos++;
      print(nums);
    }
  }
  // nonZeroPos가 늘어난 숫자만큼 0을 뒤에 채워줘야 함
  // range error가 자주 발생함 > 직접 써보고 나서 코드 작성해보는 습관 들이기
  for (int i = nonZeroPos; i < nums.length; i++) {
    nums[i] = 0;
    print(nums);
  }
}

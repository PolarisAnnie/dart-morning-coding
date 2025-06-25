//피라미드 만들기(별 5단짜리로)
//    *
//   *** <-홀수 개 / 별 2개씩 증가 / 가운데 정렬?
//. ***** <- 여백은 양 쪽으로 4 -> 3 -> 2 -> 1로 줄어듦
// *******
//*********

// 내 풀이
void main(){
  int row = 5;
  for (int i = 0 ; i < row ; i++){
   int star = 2 * i + 1;
   int blank = (row - 1) - i;
   String printStar = '*' * star ; 
   String printBlank = ' ' * blank ;
   print(printBlank + printStar + printBlank); //여기서 printBlank가 뒤에 더 들어갈 필요 없음
  }
} 

/* 문제 풀이
1. print 함수로 규칙 찾기 : 별이 늘어나는 개수(1,3,5,7,9), 공백의 개수(4->3->2->1->0)
  - 별 : 1부터 시작해서 2씩 증가
  - 공백 : (마지막 단수 - 1) 부터 시작해서 1씩 감소

2. 변수로 변환
  - 단수 : int n = 5 ; 
  - 별 : int star = 1;
  - 공백 : int space = n - 1 ; 
  - print(" " * space + "*" * star);
    star += 2;
    space-- ; 

3. 반복적인 규칙으로 돌아가는 부분을 for 문으로 수정
  int n = 5;
  int star = -1;
  int space = n ; 

  for(var i = 1; i <=n ; i++){
  star+=2 ;
  space--;
  print(" " * space + "*" * star);
  }

4. 코드 줄여보기
  int n = 5;  
  for(int i = 1; i < = n ; i++){
  print(" " * (n - i) + "*" * {(2 * i) - 1});
  }
*/
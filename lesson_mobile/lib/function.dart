void main() {
  printName('Đỗ', 'Thắng', middleName: 'Văn', middleName2: 'Thị', year: 1995);
  int sum = sumUp(1, 0, 0);
  print(sum);
}

int sumUp(int a, [int b = 2, int c = 3, int d = 4, int e = 5]) {
  return (a + b + c + d + e);
}

void printName(String firstName, String lastName,
    {required String? middleName, required String? middleName2, int? year}) {
  print('$firstName ${middleName ?? ''} $lastName $year');
}

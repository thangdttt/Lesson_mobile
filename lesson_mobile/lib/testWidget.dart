class TestWidget {
  int width;
  int height;
  String? label;

  TestWidget({required this.width, required this.height});

  TestWidget.constructor2(this.label,
      {required this.width, required this.height});

  @override
  String toString() {
    return 'TestWidget{width: $width, height: $height, label: $label}';
  }
}

void main() {
  TestWidget wg1 = TestWidget(width: 100, height: 200);
  wg1.label = 'test2';
  print(wg1);
  TestWidget wg2 = TestWidget.constructor2('test', width: 100, height: 200);
  print(wg2);
}

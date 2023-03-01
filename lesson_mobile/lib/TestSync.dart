Future<void> main() async {
  print('Đang load...');
}

Future<String> layThongTinTuSever() {
  Future<String> NoiDung =
      Future.delayed(Duration(seconds: 3), () => 'Hello all');
  return NoiDung;
}

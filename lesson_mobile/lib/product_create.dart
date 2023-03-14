import 'package:flutter/material.dart';

class createProduct extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => homeProduct();
}


class homeProduct extends State<createProduct> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('create product'),
        ),
        body: create(),
      ),
    );
  }
}
class create extends StatelessWidget{

  // final  input1 = TextEditingController();
  // final  input2 = TextEditingController();
  // final  input3 = TextEditingController();
  // final  input4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nhập URL ảnh',
                ),
                // controller: input1
            ),
            const SizedBox(width: 15),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), gapPadding: 10),
                  labelText: 'Tên sản phẩm',
                ),
                // controller: input2
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), gapPadding: 10),
                  labelText: 'Giá sản phẩm',
                ),
                // controller: input3
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), gapPadding: 10),
                  labelText: 'Mô tả',
                ),
                // controller: input4
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('tạo mới thành công!')));
                },
                child: const Text('tạo mới')),
          ],
        ),
    );
  }
}
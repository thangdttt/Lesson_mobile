import 'package:flutter/material.dart';
import 'package:lesson_mobile/product1.dart';
import 'package:lesson_mobile/product_create.dart';
import 'package:lesson_mobile/product_detail.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeProduct();
}

class HomeProduct extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              actions: [
                IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => createProduct()),
                      );
                    }),
              ],
              //backgroundColor: const Color(0xffaa249e),
              title: const Text('Your Product'),
              centerTitle: true,
            ),
            body: const ListProduct()));
  }
}

final List<Product> listProduct = [
  Product("product1", "assets/shop/aobegai.jpeg", '\$100', 'OK'),
  Product("product2", "assets/shop/aobetrai.jpeg", "\$50", 'OK'),
  Product("product3", "assets/shop/aonam.jpeg", '\$200', 'OK'),
  Product("product4", "assets/shop/aonu.jpeg", "\$200", 'OK')
];

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listProduct.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(listProduct[index].image))),
          ),
          title: Text(listProduct[index].name),
          subtitle: Text("${listProduct[index].price} USD"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  icon: const Icon(Icons.mode_edit),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return productItem(product: listProduct[index]);
                    }));
                  }),
              IconButton(
                  icon: const Icon(Icons.description),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return productDetail(listProduct[index]);
                    }));
                  }),
              IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.pink,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: const Text('bạn có thực sự muốn xoá sản phẩm này?'),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(content: Text('xoá thành công')));
                                },
                                child: const Text('Xoá')),
                          ],
                        );
                      },
                    );
                  }),
            ],
          ),
        );
      },
    );
  }
}

class productItem extends StatefulWidget {
  final Product product;

  const productItem({required this.product, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => productItemState(product);
}

class productItemState extends State<productItem> {
  final Product product;

  productItemState(this.product);

  final TextEditingController _input1 = TextEditingController();
  final TextEditingController _input2 = TextEditingController();
  final TextEditingController _input3 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _input1.text = product.name;
    _input2.text = product.price;
    _input3.text = product.description;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('update product'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(product.image))),
            ),
            const SizedBox(width: 15),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), gapPadding: 10),
                  labelText: 'Tên sản phẩm',
                ),
                controller: _input1),
            const SizedBox(
              height: 15,
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), gapPadding: 10),
                  labelText: 'Giá sản phẩm',
                ),
                controller: _input2),
            const SizedBox(
              height: 15,
            ),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), gapPadding: 10),
                  labelText: 'Mô tả',
                ),
                controller: _input3),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(_input3.toString())));
                },
                child: const Text('Cập nhật')),
          ],
        ),
      ),
    );
  }
}

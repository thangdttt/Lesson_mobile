import 'package:flutter/material.dart';
import 'package:lesson_mobile/shop.dart';
import 'package:lesson_mobile/shopDetail.dart';

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
              actions: [
                IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      // Do something when the user taps the icon
                    }),
                IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // Do something when the user taps the icon
                    }),
              ],
              backgroundColor: const Color(0xffaa249e),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // do something
                },
              ),
              title: const Text('My Shop'),
            ),body: const ListProduct()));

  }
}

final List<Product> listProduct = [
  Product("sơ mi bé gái", "assets/shop/aobegai.jpeg", '\$100', false),
  Product("sơ mi bé trai", "assets/shop/aobetrai.jpeg", "\$50", false),
  Product("polo nam", "assets/shop/aonam.jpeg", '\$200', false),
  Product("polo nữ", "assets/shop/aonu.jpeg", "\$200", false)
];

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3 / 3,
      children: [
        for (int i = 0; i < listProduct.length; i++)
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => productDetail(listProduct[i])));
            },
            child: productItem(product: listProduct[i]),
          )
      ],
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var screenSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              product.image,
              width: screenSize.width / 2.0 - 16,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )),
            height: 40,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      product.favorite = !product.favorite;
                    });
                  },
                  icon: Icon(product.favorite
                      ? Icons.favorite
                      : Icons.favorite_border),
                  color: Colors.pink,
                ),
                Expanded(
                    child: Text(
                  product.name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                )),
                IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    color: Colors.pink,
                    onPressed: () {
                      // Do something when the user taps the icon
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

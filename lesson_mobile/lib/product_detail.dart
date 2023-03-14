import 'package:flutter/material.dart';
import 'package:lesson_mobile/product1.dart';

class productDetail extends StatelessWidget {
  Product product;

  productDetail(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product detail'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              product.image,
              height: 500,
              width: 500,
              fit: BoxFit.fill,
            ),
            // Positioned(
            //     top: 30,
            //     child: Container(
            //       margin: const EdgeInsets.all(30),
            //       child: IconButton(
            //         onPressed: () {
            //           Navigator.pop(context);
            //         },
            //         icon: const Icon(
            //           Icons.arrow_back,
            //           color: Colors.black,
            //         ),
            //       ),
            //     )),
            Positioned(
                child: Text(
                  product.name,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                )),
            const SizedBox(height: 16),
            Text(
              product.price,
              style: const TextStyle(color: Colors.black, fontSize: 50),
            ),
            const SizedBox(height: 16),
            Text(
              'mô tả: ${product.description}',
              style: const TextStyle(color: Colors.black, fontSize: 30),
            )
          ],
        ),
      );
  }
}
import 'package:flashlight_pos_app/presentation/home/data/models/product/response/product_model.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            product.name ?? '',
            textAlign: TextAlign.start,
          ),
        ),
        const Expanded(
          flex: 1,
          child: Text(
            '1',
            // data.quantity,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            'Rp ${product.price ?? 0}',
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}

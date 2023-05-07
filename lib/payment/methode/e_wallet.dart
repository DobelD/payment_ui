import 'package:flutter/material.dart';

import '../../string_assets.dart';
import '../components/card.dart';
import '../components/title.dart';

class EwalletSection extends StatelessWidget {
  const EwalletSection({super.key, this.back});

  final String? back;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Labels(text: 'E - Wallet'),
            const SizedBox(height: 20),
            Cards(back: back, images: MyImage.gopay, text: 'Go-Pay'),
            Cards(back: back, images: MyImage.shoopepay, text: 'Shoopepay'),
            Cards(
                back: back,
                images: 'assets/images/ShopeePay.png',
                text: 'Dana',
                underline: false),
          ],
        ));
  }
}

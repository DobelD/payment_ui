import 'package:flutter/material.dart';
import '../../string_assets.dart';
import '../components/card.dart';
import '../components/title.dart';

class TransferSection extends StatelessWidget {
  const TransferSection({super.key, this.back});

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
            const Labels(text: 'Transfer Bank'),
            const SizedBox(height: 20),
            Cards(back: back, images: MyImage.bca, text: 'BCA'),
            Cards(
                back: back,
                images: MyImage.bsi,
                text: 'Bank Syariah Indonesia'),
            Cards(back: back, images: MyImage.mandiri, text: 'Bank Mandiri'),
            Cards(
                back: back, images: MyImage.bri, text: 'Bank Rakyat Indonesia'),
            Cards(
                back: back,
                images: MyImage.bni,
                text: 'Bank Negara Indonesia',
                underline: false),
          ],
        ));
  }
}

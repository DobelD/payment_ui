import 'package:flutter/material.dart';
import '../../string_assets.dart';
import '../components/card.dart';
import '../components/title.dart';

class GeraiSection extends StatelessWidget {
  const GeraiSection({super.key, this.back});

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
            const Labels(text: 'Gerai'),
            const SizedBox(height: 20),
            Cards(back: back, images: MyImage.alfamart, text: 'Alfamart'),
            Cards(
                back: back,
                images: MyImage.indomart,
                text: 'Indomart',
                underline: false),
          ],
        ));
  }
}

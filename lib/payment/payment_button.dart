import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_ui/payment/payment_ui.dart';
import '../../string_assets.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key, this.onPressed, this.text, this.image});

  final VoidCallback? onPressed;
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                disabledBackgroundColor: Colors.grey.shade200,
                backgroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.grey.shade400))),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const PaymentUi())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 32,
                  width: 36,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('$image'))),
                ),
                const SizedBox(width: 16),
                Text('$text',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                const Spacer(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(MyImage.chevron))),
                )
              ],
            )));
  }
}

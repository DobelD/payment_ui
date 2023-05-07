import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'methode/e_wallet.dart';
import 'methode/gerai.dart';
import 'methode/transfer.dart';

class PaymentUi extends StatelessWidget {
  const PaymentUi({super.key, this.back});

  final String? back;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Pilih metode pembayaran',
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          EwalletSection(back: back),
          const SizedBox(height: 12),
          GeraiSection(back: back),
          const SizedBox(height: 12),
          TransferSection(back: back)
        ],
      ),
    );
  }
}

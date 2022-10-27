import 'package:flutter/material.dart';
import '../theme.dart';

class GoPayLater extends StatelessWidget {
  const GoPayLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/gopaylater.png',
            height: 14,
          ),
          const SizedBox(height: 8),
          Text(
            'Lebih hemat pake GoPayLater🤩',
            style: bold16.copyWith(color: dark1),
          ),
          const SizedBox(height: 8),
          const Text(
              'Yuk, belanjad di tokopedia menggunakan GoPay Later dan nikmati cashback-nya~'),
        ],
      ),
    );
  }
}

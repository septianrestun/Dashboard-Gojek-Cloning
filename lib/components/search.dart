import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return //search
        Padding(
      padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFFFAFAFA),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color(0xFFE8E8E8),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    color: dark1,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Cari layanan, makanan, & tujuan",
                    style: regular14.copyWith(color: dark3),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                Container(
                  child: Image.network(
                    "data:image/jpeg;base64,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",
                  ),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35 / 2),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 / 2),
                      color: const Color(0xFFD1E7EE),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: SvgPicture.asset(
                      'assets/icons/goclub.svg',
                      color: blue2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

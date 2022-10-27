import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek/components/akses_cepat.dart';
import 'package:gojek/components/goclub.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/menu.dart';
import 'package:gojek/components/news.dart';
import 'package:gojek/components/paylater.dart';
import 'package:gojek/components/search.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: green1,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Center(
                child: Card(
                  child: SizedBox(child: Container()),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "Beranda",
                  style: semibold14.copyWith(color: green1),
                ),
              ),
              ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 12),
                      child: Center(
                          child: Text(
                        title,
                        style: semibold14,
                      )),
                    ),
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            //Search
            Search(),
            //Gopay
            GoPay(),
            //menu icon
            Menu(),

            // Go Club
            GoClub(),

            // Akses cepat
            AksesCepat(),

            // Go pay later
            GoPayLater(),
            // News
            SizedBox(height: 24),
            News(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../mixin/home_page_mixin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomePageWidgetsMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustomized(context),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        return ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              children: [
                saldoEmConta(context),
                const SizedBox(height: 25),
                listViewCircular(context),
                const SizedBox(height: 25),
                cardCutomized(context),
                const SizedBox(height: 25),
                customCardText(context),
                const SizedBox(height: 25),
                cardFatura(context),
                const SizedBox(height: 40),
                cardDolar(context),
                const SizedBox(height: 40),
              ],
            ),
          ],
        );
      }),
      bottomNavigationBar: homePageNavigationBar(),
    );
  }
}

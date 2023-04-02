import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../store/home_page_store.dart';
import '../widgets/home_page_dialog.dart';

mixin HomePageWidgetsMixin {
  HomePageStore store = Modular.get();
  AppBar appBarCustomized(BuildContext context) {
    return AppBar(
      toolbarHeight: 140,
      backgroundColor: const Color(0xFF8A2BE2),
      actions: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: const CircleAvatar(
                      maxRadius: 28,
                      foregroundImage: AssetImage('assets/Thomas.jpeg'),
                    ),
                  ),
                ),
                const SizedBox(width: 120),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.help_outline),
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const DialogCustomer();
                              });
                        },
                        icon: const Icon(Icons.mail_outline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Olá, Thomas Cunha', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget saldoEmConta(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const DialogCustomer();
            });
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Conta',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey.shade600)
              ],
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: const [Text('R\$ 1.000,00', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20))],
            ),
          ),
        ],
      ),
    );
  }

  Widget listViewCircular(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 20),
        itemBuilder: (BuildContext context, index) {
          return CircleAvatar(
            maxRadius: 35,
            backgroundColor: Colors.grey.shade200,
          );
        },
      ),
    );
  }

  Widget cardCutomized(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const DialogCustomer();
            });
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 20),
        child: SizedBox(
          height: 50,
          width: 330,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(Icons.my_library_add_outlined),
                  SizedBox(width: 15),
                  Text('Meus cartões', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customCardText(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const DialogCustomer();
            });
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 250,
              margin: const EdgeInsets.only(left: 20),
              child: Card(
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(text: 'E você, o que vai fazer com seu'),
                            TextSpan(text: '\nPedacinho?', style: TextStyle(color: Color(0xFF8A2BE2))),
                            TextSpan(text: 'Decide agora!'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget cardFatura(BuildContext context) {
    return InkWell(
      onTap: () async {},
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Cartão de crédito', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                    Icon(Icons.arrow_forward_ios, size: 15, color: Colors.grey.shade600),
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Fatura atual', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey.shade600)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Text('R\$ 680,40', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardDolar(BuildContext context) {
    return InkWell(
      onTap: () async {
        store.getCoinUSD();
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Dolar', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Cotação atual', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey.shade600)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Observer(builder: (_) {
                        return Row(
                          children: [
                            Text('US\$ ${store.moedaUSD}', style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget homePageNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/seta.png'), color: Color(0xFF8A2BE2), size: 20),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/dollar.png'), size: 25),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/compra.png'), size: 25),
          label: '',
        ),
      ],
      currentIndex: Modular.to.path == '/' ? 0 : 1,
      onTap: (index) {
        if (index == 0) {
          Modular.to.navigate('/');
        } else if (index == 1) {
          Modular.to.navigate('/finance');
        }
      },
    );
  }
}

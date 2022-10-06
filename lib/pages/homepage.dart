import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/icon_listtile.dart';
import 'package:walletapp/util/wallet_card.dart';

import '../util/icon_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                     children: [
                       Text("My", style:  TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                       Text(" Cards", style: TextStyle(fontSize: 26),),
                     ],
                   ),
                    //plus button
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[400]
                      ),
                        child: Icon(Icons.add)
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              //cards
              Container(
                height: 200,
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                      children: [
                        WalletCard(balance: 590.00, cardNumber: 89898898989, expiryMonth: 11, expiryYear: 20, color: Colors.deepPurple[400]),
                        WalletCard(balance: 5909.00, cardNumber: 8989800997, expiryMonth: 12, expiryYear: 19, color: Colors.blue[400]),
                        WalletCard(balance: 9000, cardNumber: 89898898989, expiryMonth: 11, expiryYear: 20, color: Colors.indigo[400]),

                      ]
                  )
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(controller: _controller, count: 3, effect: const ExpandingDotsEffect(),),
              SizedBox(height: 40),

              //3 buttons send + pay +bills
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //send
                      IconB(iconImagePath: 'assets/icons/send-money.png', buttonText: 'send'),

                      //pay
                      IconB(iconImagePath: 'assets/icons/credit-card.png', buttonText: 'Pay'),

                      //bills
                      IconB(iconImagePath: 'assets/icons/bill.png', buttonText: 'Bills'),

                    ],
                  ),
                ),
              //columns stats + transactions
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    IconListTile(iconImagePath: 'assets/icons/analysis.png', tileName: 'Statistics', tileSubname: 'Payments and Income'),
                    IconListTile(iconImagePath: 'assets/icons/transaction.png', tileName: 'Transactions', tileSubname: 'Transaction History'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
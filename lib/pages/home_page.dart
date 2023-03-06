import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../pages/util/my_button.dart';
import '../pages/util/my_list_tile.dart';
import '../pages/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 32,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //appbar
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' Cards',
                          style: TextStyle(
                              // color: Colors.white
                              fontSize: 28),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 25.0,
              // ),
              //cards
              Container(
                height: 236,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5252.75,
                      cardNumber: "**** 9864",
                      expiryMonth: 12,
                      expiryYear: 24,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    MyCard(
                      balance: 7521.74,
                      cardNumber: "**** 7856",
                      expiryMonth: 10,
                      expiryYear: 28,
                      color: Colors.teal[900]!.withOpacity(0.4),
                    ),
                    MyCard(
                      balance: 8529.65,
                      cardNumber: "**** 6532",
                      expiryMonth: 09,
                      expiryYear: 30,
                      color: Colors.green[900]!.withOpacity(0.4),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 12,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  // radius: 60,
                  dotWidth: 13.0,
                  dotHeight: 13,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              //3 buttons -> send + pay + bills
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //send button
                    MyButton(
                      iconImagePath: 'lib/icons/send-money.png',
                      buttonText: 'Send',
                    ),

                    //pay button
                    MyButton(
                      iconImagePath: 'lib/icons/credit-card.png',
                      buttonText: 'Pay',
                    ),

                    //bills button
                    MyButton(
                      iconImagePath: 'lib/icons/bill.png',
                      buttonText: 'Bills',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 12.0,
              ),

              //column ->  stats + transactions

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    MyListTile(
                      iconImagePath: 'lib/icons/statistics.png',
                      tileName: 'Statistics',
                      tileSubTitle: 'Payments and Income',
                    ),
                    // SizedBox(
                    //   height: 20.0,
                    // ),
                    MyListTile(
                      iconImagePath: 'lib/icons/transaction.png',
                      tileName: 'Transactions',
                      tileSubTitle: 'Transaction History',
                    )
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

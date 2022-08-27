import 'package:flutter/material.dart';

class SignalsScreen extends StatelessWidget {
  const SignalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'VIP اخبار و سیگنال های',
          style: TextStyle(
            fontFamily: 'vazir',
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: _getSignals(),
      ),
    );
  }

  Widget _getSignals() {
    String? imageName;
    bool ShowExitbutton = false;

    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            {
              imageName = 'ACH';
              ShowExitbutton = false;

              break;
            }
          case 1:
            {
              imageName = 'ATOM';
              ShowExitbutton = false;

              break;
            }
          case 2:
            {
              imageName = 'XRP';
              ShowExitbutton = false;

              break;
            }
          case 3:
            {
              imageName = 'SAFEMOON';
              ShowExitbutton = true;
              break;
            }
        }
        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/$imageName.png'),
              ),
            ),
            Text(
              imageName!,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      '12,560 : فروش روی',
                      style: TextStyle(
                        fontFamily: 'vazir',
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    Icon(
                      Icons.sell,
                      color: Colors.red,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '12,365 : خرید روی',
                      style: TextStyle(
                        fontFamily: 'vazir',
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    Icon(
                      Icons.price_check,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Divider(
                color: Colors.black,
                thickness: 1.7,
              ),
            ),
            Visibility(
              visible: ShowExitbutton,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'خروج از حساب',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:card_ui_kit/components/circleBadgeCard.dart';
import 'package:card_ui_kit/components/easyBadgeCard.dart';
import 'package:card_ui_kit/components/easyCard.dart';
import 'package:card_ui_kit/components/easyMultipleCard.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFe2c287),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              new EasyCard(
                icon: Icons.store,
                title: 'This is title 1',
                description: 'This is description 1',
                suffixIcon: Icons.chevron_right,
              ),
              new EasyCard(
                icon: Icons.card_giftcard,
                title: 'This is without descriptions',
                suffixIcon: Icons.chevron_right,
              ),
              new EasyCard(
                icon: Icons.thumbs_up_down,
                description: 'This is without title',
                suffixIcon: Icons.chevron_right,
              ),
              new EasyCard(
                prefixBadge: Colors.red[400],
                icon: Icons.store,
                iconColor: Colors.red[400],
                title: 'This is title with icon',
                description: 'This is the description with icon',
                suffixIcon: Icons.chevron_right,
                suffixIconColor: Colors.red[400],
              ),
              new EasyCard(
                prefixBadge: Colors.teal[500],
                title: 'This is title without icon',
                description: 'This is the description without icon',
                suffixIcon: Icons.chevron_right,
                suffixIconColor: Colors.teal[500],
              ),
              new EasyCard(
                title: 'This is suffix badge',
                description: 'This is the description with suffix badge',
                suffixBadge: Colors.yellow[700],
              ),
              new EasyCard(
                icon: Icons.time_to_leave,
                iconColor: Colors.purple[400],
                title: 'This is icon suffix badge',
                description:
                    'This is the description with icon and suffix badge',
                suffixBadge: Colors.purple[400],
              ),
              new EasyCard(
                prefixBadge: Colors.white,
                backgroundColor: Colors.lightBlue,
                title: 'This card bgcolor',
                description: 'This description bg color',
                titleColor: Colors.white,
                descriptionColor: Colors.white,
                suffixIcon: Icons.tram,
                suffixIconColor: Colors.white,
              ),
              // easy badge card
              new EasyBadgeCard(
                leftBadge: Colors.green[500],
                title: 'The left badge',
                description: 'The description badge',
                suffixIcon: Icons.chevron_right,
                suffixIconColor: Colors.green[500],
              ),
              new EasyBadgeCard(
                leftBadge: Colors.blue[400],
                title: 'The left badge',
                description: 'The description with icon',
                prefixIcon: Icons.settings_input_hdmi,
                prefixIconColor: Colors.white,
                suffixIcon: Icons.chevron_right,
                suffixIconColor: Colors.blue[400],
              ),
              new EasyBadgeCard(
                leftBadge: Colors.white,
                title: 'The white badge',
                description: 'The description with white badge and bg color',
                backgroundColor: Colors.orange[500],
                prefixIcon: Icons.settings_input_hdmi,
                prefixIconColor: Colors.orange[500],
                suffixIcon: Icons.chevron_right,
                suffixIconColor: Colors.white,
                titleColor: Colors.white,
                descriptionColor: Colors.white,
              ),
              new EasyBadgeCard(
                title: 'This title',
                description: 'This description',
                rightBadge: Colors.amber,
                suffixIcon: Icons.transfer_within_a_station,
                suffixIconColor: Colors.white,
              ),
              new EasyBadgeCard(
                title: 'This title',
                description: 'This description',
                backgroundColor: Colors.yellowAccent,
                rightBadge: Colors.white,
                suffixIcon: Icons.translate,
              ),

              // divider
              new CircleBadgeCard(
                title: 'Circle Title',
                description: 'mini description',
                backgroundColor: Colors.red,
              ),
              new CircleBadgeCard(
                title: 'Circle Title',
                description: 'mini description',
                backgroundColor: Colors.blueAccent,
                icon: Icons.crop_original,
                iconColor: Colors.blueAccent,
              ),

              //multiple choice
              new EasyMultipleCard(
                title: 'Payment method',
                suffixIcon: Icons.chevron_right,
                dividerColor: Colors.blue[100],
                items: <Widget>[
                  new ItemMultipleCard(
                    icon: Icons.account_balance_wallet,
                    title: 'Wallet',
                    status: 'available',
                  ),
                  new ItemMultipleCard(
                    icon: Icons.card_giftcard,
                    title: 'Point',
                    status: 'not available',
                    statusColor: Colors.red,
                  ),
                  new ItemMultipleCard(
                    icon: Icons.credit_card,
                    title: 'Credit card',
                    status: 'available',
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(bottom: 50.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

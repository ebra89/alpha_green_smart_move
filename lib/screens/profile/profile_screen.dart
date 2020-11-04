import 'package:flutter/material.dart';

import 'components/card_item.dart';
import 'components/stack_container.dart';


class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StackContainer(),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  CardItem(text: "Saldo",date: "23/10/2020",icon: Icons.account_balance_wallet,press: (){},),
                  CardItem(text: "Storico",date: "23/10/2020",icon: Icons.history,press: (){},),
                  CardItem(text: "Punti",date: "23/10/2020",icon: Icons.point_of_sale,press: (){},),
                  CardItem(text: "Saldo",date: "23/10/2020",icon: Icons.account_balance_wallet,press: (){},),
                  CardItem(text: "Update",date: "23/10/2020",icon: Icons.update,press: (){},),
                ],
                //itemCount: 6,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


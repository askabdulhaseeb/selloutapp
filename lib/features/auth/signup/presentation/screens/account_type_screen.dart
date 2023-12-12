import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/auth_sellout_title_widget.dart';
import '../widgets/account_type_tile_widget.dart';
import 'business_info_input_screen.dart';

class AccountTypeScreen extends StatelessWidget {
  const AccountTypeScreen({super.key});
  static const String routeName = '/account-type';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            const AuthSelloutTitleWidget(
              subtitle: 'Please Choose your account type',
            ),
            AccountTypeTileWidget(
              title: 'Personal',
              subtitle: '''
  - Buy All type of product
  - Sell your personal belongings''',
              icon: Icons.person,
              onTap: () {},
            ),
            AccountTypeTileWidget(
              title: 'Business',
              subtitle: '''
  - Sell product easily
  - Sell your services
  - Win Customer Trust
  - Manage your business easily''',
              icon: CupertinoIcons.briefcase_fill,
              onTap: () => Navigator.of(context)
                  .pushNamed(BusinessInfoInputScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}

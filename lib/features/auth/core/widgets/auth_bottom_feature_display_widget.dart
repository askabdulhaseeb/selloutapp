import 'package:flutter/material.dart';

class AuthBottomFeaturesDisplayWidget extends StatelessWidget {
  const AuthBottomFeaturesDisplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context).dividerColor.withOpacity(0.2),
            spreadRadius: 6, // Spread radius
            blurRadius: 8, // Blur radius
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          _TextButton(title: 'Login', onTap: () {}),
          _TextButton(title: 'Sign Up', onTap: () {}),
          _TextButton(title: 'Services', onTap: () {}),
          _TextButton(title: 'Antiques & Collections', onTap: () {}),
          _TextButton(title: 'Art & Craft', onTap: () {}),
          _TextButton(title: 'Used', onTap: () {}),
          _TextButton(title: 'Garage Sale', onTap: () {}),
          _TextButton(title: 'New Product', onTap: () {}),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                '© 2022 SignOut',
                style: TextStyle(color: Theme.of(context).dividerColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton({required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Theme.of(context).dividerColor,
        ),
      ),
    );
  }
}

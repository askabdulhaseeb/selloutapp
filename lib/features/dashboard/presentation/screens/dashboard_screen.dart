import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../product/feed/presentation/screens/product_feed_screen.dart';
import '../../../listing/create_listing/presentation/screens/create_listing_screen.dart';
import '../widgets/app_bar_icon_button_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static const String routeName = '/dashboard';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PersistentTabController _controller = PersistentTabController();

  List<Widget> _buildScreens() => <Widget>[
        const ProductFeedScreen(),
        const Center(child: Text('Explore')),
        const Center(child: Text('Services')),
        const CreateListingsScreen(),
        const Center(child: Text('Chat')),
        const Center(child: Text('Profile')),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() =>
      <PersistentBottomNavBarItem>[
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          title: 'Home',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Theme.of(context).iconTheme.color,
          routeAndNavigatorSettings: const RouteAndNavigatorSettings(
            initialRoute: '/',
            routes: <String, Widget Function(BuildContext)>{},
          ),
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.explore_outlined),
          title: 'Explore',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Theme.of(context).iconTheme.color,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.speedometer),
          title: 'Services',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Theme.of(context).iconTheme.color,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.add_box_outlined),
          title: 'Add',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Theme.of(context).primaryColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.text_bubble),
          title: 'Messages',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Theme.of(context).iconTheme.color,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.person_alt_circle),
          title: 'Profile',
          activeColorPrimary: Theme.of(context).primaryColor,
          inactiveColorPrimary: Theme.of(context).iconTheme.color,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            AppBarIconButtonWidget(
              icon: CupertinoIcons.settings,
              onTap: () {},
            ),
            const SizedBox(width: 6),
            AppBarIconButtonWidget(
              icon: CupertinoIcons.search,
              onTap: () {},
            ),
          ],
        ),
        actions: <Widget>[
          AppBarIconButtonWidget(
            icon: CupertinoIcons.bell,
            onTap: () {},
          ),
          const SizedBox(width: 6),
          AppBarIconButtonWidget(
            icon: CupertinoIcons.cart,
            onTap: () {},
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        resizeToAvoidBottomInset: false,
        popAllScreensOnTapOfSelectedTab: false,
        popActionScreens: PopActionScreensType.once,
        navBarStyle: NavBarStyle.style13, // Choose the nav bar style
      ),
    );
  }
}

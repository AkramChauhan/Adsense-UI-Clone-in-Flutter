import 'package:adsense_clone/pages/default_screen.dart';
import 'package:adsense_clone/pages/estimated_earning_screen.dart';
import 'package:adsense_clone/pages/page_views_screen.dart';
import 'package:flutter/material.dart';
import 'package:adsense_clone/includes/myNavigationDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adsense Clone',
      theme: ThemeData(
        primaryColor: Color(0xff2a56c6),
      ),
      home: MyDashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> with SingleTickerProviderStateMixin {
  TabController _adSenseTabController;
  
  @override
  void initState() { 
    super.initState();
    _adSenseTabController = new TabController( vsync: this, initialIndex: 0, length: 11 );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overview"),
        actions: <Widget>[
          Icon(Icons.notifications),
          Padding( padding: EdgeInsets.only(right: 10.0), ),
          Icon(Icons.more_vert),
          Padding( padding: EdgeInsets.only(right: 10.0), ),
        ],
        bottom: new TabBar(
          controller: _adSenseTabController,
          indicatorColor: Colors.white,
          isScrollable: true,
          tabs: <Widget>[
            new Tab(text: "ESTIMATED EARNINGS"),
            new Tab(text: "PAGE VIEWS"),
            new Tab(text: "IMPRESSIONS"),
            new Tab(text: "IMPRESSIONS"),
            new Tab(text: "CLICKS"),
            new Tab(text: "PAGE CTR"),
            new Tab(text: "IMPRESSION CTR"),
            new Tab(text: "CPC"),
            new Tab(text: "PAGE RPM"),
            new Tab(text: "IMPRESSION RPM"),            
          ],
        ),
      ),
      body: new TabBarView(
        controller: _adSenseTabController,
        children: <Widget>[
          new EstimatedEarningScreen(),
          new PageViewScreen(),
          new DefaultScreen(),
          new DefaultScreen(),
          new DefaultScreen(),
          new DefaultScreen(),
          new DefaultScreen(),
          new DefaultScreen(),
          new DefaultScreen(),
          new DefaultScreen(),
        ],
      ),
      drawer: Drawer(
        child: MyNavigationDrawer(),
      ),
    );
  }
}
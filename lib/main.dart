import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Github Profile", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/profile.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(height: 10.0),
            Center(child: Text("Muhammad Isrim")),
            SizedBox(height: 10.0),
            Center(
              child: RaisedButton(
                onPressed: () {},
                child: Text("Edit Profile"),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              color: Colors.grey[100],
              child: TabBar(
                controller: _tabController,
                tabs: <Widget>[
                  Tab(child: Text("Overview")),
                  Tab(child: Text("Repository")),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 200.0,
              child: TabBarView(
                children: <Widget>[
                  Center(child: Text("Overview")),
                  Center(child: Text("Repository")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

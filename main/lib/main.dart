import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('My Profile'),
        ),
      ),
    );

  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 30.0, top: 60.0),
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Order History",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                    Expanded(
                        child: Text(
                      "click here",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Track Order",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                    Expanded(
                        child: Text(
                      "click here",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
	              MyImageAsset()
              ],
            )));
  }
}

class MyImageAsset extends StatelessWidget {

	@override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/tiffin.jpg');
    Image image = Image(image: assetImage, width: 350.0, height: 350.0,);
    return Container(child: image,);
  }
}

class ThirdPage extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  return Center(
    
    child: Card(
      color: Colors.green[300],

      child: Column(
        
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Meals On Wheels'),
            subtitle: Text('Order homemade delicious food now!'),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  
                  child: const Text('PLACE ORDER'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('Cancel'),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(title:  Text("Settings"),backgroundColor: Colors.green[300],),
      body:  Text("This is Settings page"),
      bottomNavigationBar: BottomAppBar(
  color: Colors.green[400],
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
  IconButton(icon: Icon(Icons.home),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.message),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.people),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.weekend),onPressed: (){},color: Colors.white,),
],
),
),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}
class HomeScreen extends StatelessWidget{
  int counter=0;
  
TextEditingController myController = new TextEditingController();  @override

  Widget build(BuildContext context){
    int count;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
  title: Text("Meals on Wheels"),
  
  backgroundColor: Colors.green[300],
),
      body: Column(
        children: <Widget>[
          
        Text("Counter value is {$count}"),
        Checkbox(
        value: false,
        onChanged: (bool newValue){
        counter++;
                count=counter;

        print("Counter is {$counter}");

      }
      ),

      TextField(
        autofocus: false,
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Enter your name"

  ),
  onSubmitted: (text){
              
                print(text);
              
            },
),
TextField(
        autofocus: false,
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Enter your emailid"

  ),
  onSubmitted: (text){
              
                print(text);
              
            },
),
TextField(
        autofocus: false,
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Enter your password"

  ),
  onSubmitted: (text){
              
                print(text);
              
            },
),
TextField(
        autofocus: false,
        keyboardType: TextInputType.number,
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Enter your mobile no."

  ),
  onSubmitted: (text){
              
                print(text);
              
            },
),
Row(
  children: <Widget>[
    Expanded(
      child: Text('Deliver features faster', textAlign: TextAlign.center),
    ),
    Expanded(
      child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
    ),
    Expanded(
      child: FittedBox(
        fit: BoxFit.contain, // otherwise the logo will be tiny
        child: const FlutterLogo(),
      ),
    ),
  ],
)
      ],
      ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
        backgroundColor: Colors.red,
        ),

        bottomNavigationBar: BottomAppBar(
  color: Colors.green[400],
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
  IconButton(icon: Icon(Icons.person),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.favorite),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.people),onPressed: (){},color: Colors.white,),
  IconButton(icon: Icon(Icons.settings_applications),onPressed: (){},color: Colors.white,),
],
),
),

drawer: Drawer(
  
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Tejas Trivedi'),
              accountEmail: Text('takshtrivedi24@gmail.com'),
              currentAccountPicture: CircleAvatar(child: Text("T"),backgroundColor: Colors.lightGreen[200],),
              
              decoration: BoxDecoration(
                color: Colors.red[200],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Profile'),
              onTap: () { 
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new FirstPage()));
        },
              
              
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () { 
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new SecondPage()));
        },
              
            ),
            ListTile(
              leading: Icon(Icons.card_travel),
              title: Text('My Orders'),
              onTap: () { 
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new ThirdPage()));
        },
              
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () { 
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new FourthPage()));
        },
              
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log Out'),
              
            ),

            ListTile(
              leading: Icon(Icons.close),
              title: Text('Close'),
              onTap: () => Navigator.of(context).pop(),
              
            ),
          ],
        ),
      ),
      ), 
    );
    
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SizedBox(
          
            width: 100,
            child: Image.asset("assets/app-logo.png"),
          ),
        
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/user-picture.png"),
              fit: BoxFit.fitHeight
            )
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(Icons.search, color: Color(0xFFBABABA)),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
         children: <Widget>[
            CardItem(),
          CardItem(),
          CardItem()
         ],
        ),
      ),
    );
  }
}

Widget CardItem(){
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://lh3.googleusercontent.com/a-/AAuE7mAVOWwoxJkkNef0oWVqh3QBlgJluum-4OWSx5CHIg'
            ),
          ),
          title: Text("Bruce Wayne"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "teste"
          ),
        ), 
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite), onPressed: () {},
              ),
              FlatButton(
                child: Icon(Icons.share), onPressed: () {},
              )
            ],
          ),
        )
      ],
    ),
  );
}
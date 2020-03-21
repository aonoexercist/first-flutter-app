import 'package:flutter/material.dart';
import './robotdetail.dart';

class Robots extends StatefulWidget {
  @override
  _RobotsState createState() => _RobotsState();
}

class _RobotsState extends State<Robots> {
  /** Robots Api */
  String robotUrl = 'https://robohash.org/';

  /** Static data */
  final List robots = [
    {
      'id': 1,
      'name': 'Leanne Graham',
      'username': 'Bret',
      'email': 'Sincere@april.biz'
    },
    {
      'id': 2,
      'name': 'Ervin Howell',
      'username': 'Antonette',
      'email': 'Shanna@melissa.tv'
    },
    {
      'id': 3,
      'name': 'Clementine Bauch',
      'username': 'Samantha',
      'email': 'Nathan@yesenia.net'
    },
    {
      'id': 4,
      'name': 'Patricia Lebsack',
      'username': 'Karianne',
      'email': 'Julianne.OConner@kory.org'
    },
    {
      'id': 5,
      'name': 'Chelsey Dietrich',
      'username': 'Kamren',
      'email': 'Lucio_Hettinger@annie.ca'
    },
    {
      'id': 6,
      'name': 'Mrs. Dennis Schulist',
      'username': 'Leopoldo_Corkery',
      'email': 'Karley_Dach@jasper.info'
    },
    {
      'id': 7,
      'name': 'Kurtis Weissnat',
      'username': 'Elwyn.Skiles',
      'email': 'Telly.Hoeger@billy.biz'
    },
    {
      'id': 8,
      'name': 'Nicholas Runolfsdottir V',
      'username': 'Maxime_Nienow',
      'email': 'Sherwood@rosamond.me'
    },
    {
      'id': 9,
      'name': 'Glenna Reichert',
      'username': 'Delphine',
      'email': 'Chaim_McDermott@dana.io'
    },
    {
      'id': 10,
      'name': 'Clementina DuBuque',
      'username': 'Moriah.Stanton',
      'email': 'Rey.Padberg@karina.biz'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Robots'),
      ),
      body: ListView.builder(
        itemCount: robots.length,
        itemBuilder: (context, index){
          return Hero(
              tag: robots[index]['name'],
              child: Card(
                child: ListTile(
                  onTap: () {
                    print(robots[index]['name']);
                    final String name = robots[index]['name'];
                    final String image = robotUrl+index.toString();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RobotDetail(name, image)
                      )
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(robotUrl+index.toString()),
                  ),
                  title: Text(robots[index]['name']),
                  subtitle: Text(robots[index]['username']),
                ),
            ),
          );
        },
      )
    );
  }
}
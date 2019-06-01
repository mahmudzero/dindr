import 'package:flutter_web/material.dart';
// import './appbar.dart';

void main() => runApp(MyApp());

void _airDress() {

}

void _restitchDress() {

}

void _repairDress() {

}

// void navbar() {
//   return AppBar(
//     leading: Builder(
//       builder: (BuildContext context) {
//         return IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: () { Scaffold.of(context).openDrawer(); },
//           tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//         );
//       },
//     ),
//     title: Text('My Fancy Dress'),
//     actions: <Widget>[
//       IconButton(
//         icon: Icon(Icons.playlist_play),
//         tooltip: 'Air it',
//         onPressed: _airDress,
//       ),
//       IconButton(
//         icon: Icon(Icons.playlist_add),
//         tooltip: 'Restitch it',
//         onPressed: _restitchDress,
//       ),
//       IconButton(
//         icon: Icon(Icons.playlist_add_check),
//         tooltip: 'Repair it',
//         onPressed: _repairDress,
//       ),
//     ],
//   );
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Flutter lkfgj')
        // ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text('My Fancy Dress'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.playlist_play),
              tooltip: 'Air it',
              onPressed: _airDress,
            ),
            IconButton(
              icon: Icon(Icons.playlist_add),
              tooltip: 'Restitch it',
              onPressed: _restitchDress,
            ),
            IconButton(
              icon: Icon(Icons.playlist_add_check),
              tooltip: 'Repair it',
              onPressed: _repairDress,
            ),
          ],
        ),
        // body: Text("DOOOM"),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),

    );
  }
}

// class MyBody extends StatefulWidget {
//   @override
//   Widget build(c){

//   }
// }

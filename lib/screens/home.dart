
import 'package:flutter/material.dart';

import 'components/appdrawer.dart';
import 'components/body.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My List'),
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
            ),
         itemBuilder: (_) => [
           PopupMenuItem(
             child: Text('Completed Tasks'),
           ),
           PopupMenuItem(
             child: Text('All Tasks'),
           ),
         ],
    )
        ],
      ),
      body: Body()  ,
      drawer: AppDrawer(),

    );
  }
}

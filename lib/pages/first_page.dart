import 'package:flutter/material.dart';
import 'package:fundamentals/pages/second_page.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer page"),
      ),
      drawer: Drawer(

        child: Column(
          children:  [
            DrawerHeader(
              child: Icon(Icons.favorite, size: 54, color: Colors.black45,),
            ),
            ListTile(
             leading: Icon(Icons.home),
              title: Text("Bottom nav"),
              onTap: () {
               Navigator.pop(context);
               Navigator.pushNamed(context, '/secondpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S "),
            ),ListTile(
              leading: Icon(Icons.abc),
              title: Text("A B O U T "),
            ),
          ],
        )
      ),
    );
  }
}

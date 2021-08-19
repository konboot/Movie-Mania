import 'package:flutter/material.dart';
import 'package:movie_box/components/add_component.dart';

class MovielistComponent extends StatefulWidget {
  @override
  _MovielistComponentState createState() => _MovielistComponentState();
}

class _MovielistComponentState extends State<MovielistComponent> {
  Widget _buildTask(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Movie '),
            subtitle: Text('Director '),
            /*trailing: Checkbox(
              onChanged: (value) {
                print('value');
              },
              activeColor: Theme.of(context).primaryColor,
              value: true,
              ),*/
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
            indent: 5.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddScreen())),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Movies Mania',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(height: 10.0),
                      Text(
                        '',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
              );
            }
            ;
            return _buildTask(index);
          },
        ));
  }
}

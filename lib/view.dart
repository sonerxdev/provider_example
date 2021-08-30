import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/InfoModel.dart';
import 'package:provider_example/ListModel.dart';
import 'package:provider_example/textInputModel.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final infoModel = Provider.of<InfoModel>(context);
    final listModel = Provider.of<ListModel>(context);
    final realtimeText = Provider.of<RealTimeInputModel>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          '${infoModel.i}',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          infoModel.addPlus();
          listModel.addItem(_controller.text);
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextField(
            onChanged: (String text) {
              setState(() {
                realtimeText.realtimeText(text);
              });
            },
            controller: _controller,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelStyle:
                  TextStyle(backgroundColor: Colors.white, color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              border: OutlineInputBorder(),
            ),
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listModel.todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                  '${listModel.todoList[index]}',
                  style: TextStyle(color: Colors.white),
                ));
              }),
        ],
      ),
    );
  }
}

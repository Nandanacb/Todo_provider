import'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/todoprovider.dart';


class Todoscreen extends StatefulWidget{
  @override
  State<Todoscreen> createState()=> _TodoscreenState();
  }
class _TodoscreenState extends State<Todoscreen>{
  
  @override
  Widget build(BuildContext context){
    final textaddprovider=Provider.of<TextAddProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo with provider"),
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller:textaddprovider.controller,
                  decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Enter a task'),
                ),
              ),
              IconButton( icon: Icon(Icons.add),
              onPressed: textaddprovider.addToDoItem,
              ),
            ],
          ),
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount:textaddprovider.todoList.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(textaddprovider.todoList[index]),
                  trailing: IconButton(onPressed: (){
                    textaddprovider.removeToDoItem(index);
                  }, icon: Icon(Icons.delete)),
                );
              }),
          ),
            
        ],
      ),
    );
  }
  }
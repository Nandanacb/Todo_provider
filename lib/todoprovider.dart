import 'package:flutter/material.dart';

class TextAddProvider extends ChangeNotifier{
TextEditingController _controller=TextEditingController();
  List<String> _todoList=[];

List<String> get todoList=>_todoList;
TextEditingController get controller=> _controller;

  void addToDoItem() {
    
      if (_controller.text.isNotEmpty){
        _todoList.add(_controller.text);
        _controller.clear();
      }
    notifyListeners();
  }

  void removeToDoItem(int index){
  
      _todoList.removeAt(index);
    notifyListeners();
  }

}
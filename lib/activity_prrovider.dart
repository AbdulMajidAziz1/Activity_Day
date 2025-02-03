import 'package:flutter/material.dart';

class ActivityProvider with ChangeNotifier{
  List<Map<String, String>> _listData = [
    {
      'title': 'Beach Yoga'
    },
    {
      'title': 'Reformer Pilates'
    },
    {
      'title': '5-a-side Football'
    }
  ];
  
  List<Map<String, String>> _filterList = [];
  TextEditingController searchController = TextEditingController();
  
  ActivityProvider(){
    _filterList = List.from(_listData);
    searchController.addListener((){
      filterFunc();
    });
  }

  List<Map<String, String>> get passingList => _filterList;
  void filterFunc(){
    final query = searchController.text.toLowerCase();
    if(query.isEmpty){
      _filterList = List.from(_listData);
    }
    else{
      _filterList = _listData.where((activity){
        return activity['title']!.toLowerCase().contains(query);
      }).toList();
    }
    notifyListeners();
  }
}
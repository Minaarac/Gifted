import 'package:flutter/material.dart';
import 'package:shop_app/screens/filterscreen/filter_screen.dart';

class DropdownScreen extends StatefulWidget {
  static String routeName = "/dropdown";
  @override
  _DropdownScreenState createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String dropdownvalue = 'Kayıtlı Olan Biri İçin Filtreleyin';
  var items = [
    'Kayıtlı Olan Biri İçin Filtreleyin',
    'Kayıtlı Olmayan Biri İçin Filtreleyin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seçim Yapınız"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownvalue = newValue;
                  });
                },
              ),
              MaterialButton(
                color: Colors.purple,
                highlightColor: Colors.red,
                elevation: 10,
                child: Text(
                  "Devam Ediniz",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, FiltersScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

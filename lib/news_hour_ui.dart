import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newshour_categories.dart';

void main() {
  runApp(MaterialApp(
    home: news_hour(),
    debugShowCheckedModeBanner: false,
  ));
}

class news_hour extends StatefulWidget {
  @override
  State<news_hour> createState() => _news_hourState();
}

class _news_hourState extends State<news_hour> {
  bool isChecked = false;
  final validkey = GlobalKey<FormState>();
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                'News',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Hour',
                style: TextStyle(color: Colors.amber, fontSize: 16),
              ),
              Text(
                ' - Admin',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Icon(
                  Icons.settings_outlined,
                  color: Colors.black38,
                  size: 20,
                ),
              ),
            ],
          ),
          bottom: TabBar(
            indicatorColor: Colors.purpleAccent,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.purpleAccent,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Text('Data Stat', style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Text('Upload Item', style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Text('All Data', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
        body: Form(
          key: validkey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 22, left: 30, right: 30),
                height: 55,
                width: 600,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey[100]),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Select Category',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      width: 160,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]),
                      elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                      ),
                      iconSize: 14,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 54,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 6),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Cover Picture Url',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 22),
                            child: Icon(Icons.close),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 54,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 3),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Title',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 22),
                            child: Icon(Icons.close),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 22),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 50),
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            isChecked = value!;
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 51),
                    child: Text('Notify to All Users'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65, top: 50),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 51),
                    child: Text('Preview'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Container(
                  height: 40,
                  color: Colors.amber,
                  child: TextButton(
                    onPressed: () {
                      final valid = validkey.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => categories()));
                      } else {
                        return null;
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Row(
                        children: [
                          Icon(
                            Icons.save,
                            color: Colors.white,
                          ),
                          Text(
                            '   Save Data',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

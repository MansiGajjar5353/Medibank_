import 'package:flutter/material.dart';

class ExpandableCells extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpandableCellsState();
  }
}

class ExpandableCellsState extends State<ExpandableCells> {
  List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            child: ExpansionPanelList(
              expandIconColor: Colors.transparent,
              elevation: 1,
              expandedHeaderPadding: EdgeInsets.all(0),
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _data[index].isExpanded = !isExpanded;
                });
              },
              children: _data.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item.headerValue),
                          Icon(
                            isExpanded ? Icons.minimize : Icons.add,
                          ),
                        ],
                      ),
                    );
                  },
                  body: ListTile(
                    title: Text(item.expandedValue),
                  ),
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
          ),
        ));
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems() {
  return [
    Item(
      headerValue: 'Header 1',
      expandedValue: 'Expanded content 1',
    ),
    Item(
      headerValue: 'Header 1',
      expandedValue: 'Expanded content 1',
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:rwcourses/constants.dart';
import 'package:rwcourses/strings.dart';
import 'package:rwcourses/ui/filter/filter_widget.dart';

class FilterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int _filterValue = Constants.allFilter;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(Strings.filter),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FilterWidget(
              value: Constants.iosFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.ios,
            ),
            FilterWidget(
              value: Constants.androidFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.android,
            ),
            FilterWidget(
              value: Constants.sssFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.sss,
            ),
            FilterWidget(
              value: Constants.unityFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.unity,
            ),
            FilterWidget(
              value: Constants.macosFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.macos,
            ),
            FilterWidget(
              value: Constants.allFilter,
              groupValue: _filterValue,
              onChanged: _handleRadioValueChange,
              text: Strings.all,
            ),
          ],
        ),
      ),
    );
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _filterValue = value;
    });
  }
}

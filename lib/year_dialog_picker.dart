import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class YearDialogPicker extends StatefulWidget {
  const YearDialogPicker({this.year});

  final int year;

  @override
  State<StatefulWidget> createState() => _YearDialogPickerState();
}

class _YearDialogPickerState extends State<YearDialogPicker> {
  int _year;

  @override
  void initState() {
    super.initState();
    if (widget.year == null) {
      _year = DateTime.now().year;
    } else {
      _year = widget.year;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: constraints.maxWidth * 0.8,
            height: constraints.maxWidth * 0.8,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: NumberPicker.integer(
                      initialValue: _year,
                      minValue: DateTime.now().year - 50,
                      maxValue: DateTime.now().year,
                      onChanged: (num value) {
                        setState(() {
                          _year = value;
                        });
                      },
                    ),
                  ),
                ),
                ButtonTheme(
                  height: 50,
                  child: Container(
                    color: const Color(0xFFF8F8F8),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: FlatButton(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            textColor: Colors.white,
                            onPressed: () {
                              Navigator.pop(context, _year);
                            },
                            child: const Text('Save'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

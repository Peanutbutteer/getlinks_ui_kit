import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';
import 'package:numberpicker/numberpicker.dart';

class MonthYearDialogPicker extends StatefulWidget {
  const MonthYearDialogPicker({this.month, this.year});

  final int month;
  final int year;

  @override
  State<StatefulWidget> createState() => _MonthYearDialogPickerState();
}

class _MonthYearDialogPickerState extends State<MonthYearDialogPicker> {
  int _month;
  int _year;

  @override
  void initState() {
    super.initState();
    if (widget.month == null) {
      _month = DateTime.now().month;
    } else {
      _month = widget.month;
    }
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Material(
                      //   child: IntrinsicHeight(
                      //     child: Container(
                      //       width: 100,
                      //       color: Colors.white,
                      //       child: ListWheelScrollView(
                      //         controller: _controller,
                      //         physics: const FixedExtentScrollPhysics(),
                      //         itemExtent: 32.0,
                      //         diameterRatio: 1.35,
                      //         perspective: 0.004,
                      //         useMagnifier: true,
                      //         magnification: 1,
                      //         offAxisFraction: 0,
                      //         children: [1, 2, 3]
                      //             .map((value) => Text(
                      //                   value.toString(),
                      //                   textAlign: TextAlign.center,
                      //                   style: TextStyle(
                      //                       fontSize: value == 2 ? 16 : 14),
                      //                 ))
                      //             .toList(),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      NumberPicker.integer(
                        initialValue: _month,
                        minValue: 1,
                        maxValue: 12,
                        onChanged: (num value) {
                          setState(() {
                            _month = value;
                          });
                        },
                      ),
                      NumberPicker.integer(
                        initialValue: _year,
                        minValue: DateTime.now().year - 50,
                        maxValue: DateTime.now().year,
                        onChanged: (num value) {
                          setState(() {
                            _year = value;
                          });
                        },
                      )
                    ],
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
                            shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            color: GetLinksColors.paleGrey,
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
                            shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            textColor: Colors.white,
                            color: GetLinksColors.primary,
                            onPressed: () {
                              Navigator.pop(context, DateTime(_year, _month));
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

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/screens/task_single/ui/widgets/menu_bottom_sheet.dart';
import 'package:test_todo/utils/enum/single_status.dart';
import 'package:test_todo/utils/enum/task_status.dart';
import 'package:test_todo/utils/functions.dart';

class TaskSingleScreen extends StatefulWidget {
  final bool isEdit;
  final TaskModel? task;
  final Function(TaskModel) action;

  const TaskSingleScreen(
      {required this.action, this.task, required this.isEdit, Key? key})
      : super(key: key);

  @override
  State<TaskSingleScreen> createState() => _TaskSingleScreenState();
}

class _TaskSingleScreenState extends State<TaskSingleScreen> {
  late TextEditingController _titleController;

  late TextEditingController _descController;
  String date = '';

  @override
  void initState() {
    _titleController = TextEditingController();
    _descController = TextEditingController();
    if (widget.isEdit) {
      date = widget.task!.createdAt;
      _titleController.text = widget.task!.title;
      _descController.text = widget.task!.description;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                if (widget.isEdit) {
                  widget.action(widget.task!.copyWith(
                      title: _titleController.text,
                      createdAt: date,
                      description: _descController.text));
                } else {
                  widget.action(widget.task ??
                      TaskModel(
                          title: _titleController.text,
                          id: 0,
                          description: _descController.text,
                          status: TaskStatus.active.status,
                          createdAt: DateTime.now().toString()));
                }
                Navigator.pop(context);
              },
              child: Text(
                widget.isEdit ? 'Save' : 'Create',
                style: const TextStyle(color: Colors.blue),
              ),
            ),
            if (widget.isEdit)
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (c) => MenuBottomSheet(
                              task: widget.task!,
                            ));
                  },
                  child: const Icon(
                    CupertinoIcons.ellipsis,
                    size: 24,
                  ),
                ),
              )
          ],
        ),
        previousPageTitle: 'Tasks',
      ),
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + kToolbarHeight + 10,
            left: 8,
            right: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    var jiffyDate = Jiffy(date.isEmpty ? DateTime.now() : date);
                    if (Platform.isAndroid) {
                      await showDatePicker(
                              context: context,
                              initialDate: jiffyDate.dateTime,
                              firstDate: jiffyDate.dateTime
                                  .subtract(const Duration(days: 365)),
                              lastDate: jiffyDate.dateTime
                                  .add(const Duration(days: 365)))
                          .then((value) {
                        print(value.toString());
                        if (value != null) {
                          setState(() {
                            date = value.toString();
                          });
                        }
                      });
                    } else {
                      showDialog(
                          context: context,
                          builder: (c) => CupertinoDatePicker(
                              minimumDate: jiffyDate.dateTime
                                  .subtract(const Duration(days: 365)),
                              maximumDate: jiffyDate.dateTime
                                  .add(const Duration(days: 365)),
                              initialDateTime: jiffyDate.dateTime,
                              mode: CupertinoDatePickerMode.date,
                              backgroundColor: Colors.white,
                              onDateTimeChanged: (dateTime) {
                                setState(() {
                                  date = dateTime.toString();
                                });
                              }));
                    }
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.grey[100]),
                    child: Text(
                      date.isEmpty
                          ? 'dd/mm/yyy'
                          : safeDate(date, 'dd/MM/yy hh:mm'),
                      style: TextStyle(
                          color:
                              date.isNotEmpty ? Colors.blue[200] : Colors.grey,
                          fontSize: 14,
                          decorationThickness: 0),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            CupertinoTextField(
              decoration: const BoxDecoration(),
              placeholder: 'Title',
              maxLines: null,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              controller: _titleController,
            ),
            const SizedBox(
              height: 12,
            ),
            CupertinoTextField(
              placeholder: 'description',
              decoration: const BoxDecoration(),
              maxLines: null,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              controller: _descController,
            ),
          ],
        ),
      ));
}

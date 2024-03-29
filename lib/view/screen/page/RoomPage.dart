import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_windows/model/DataController.dart';
import 'package:flutter_windows/model/DataControllerManager.dart';
import 'package:flutter_windows/model/DataHandler.dart';

class RoomPage extends InheritedWidget {
  final DataHandler dataHandler;
  final DataControllerManager dataControllerManager;

  RoomPage({required Widget child, required this.dataHandler, required this.dataControllerManager}) : super(child: child);

  @override
  bool updateShouldNotify(RoomPage oldWidget) {
    return dataHandler != oldWidget.dataHandler || dataControllerManager != oldWidget.dataControllerManager;
  }

  static RoomPage of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RoomPage>()!;
  }
}
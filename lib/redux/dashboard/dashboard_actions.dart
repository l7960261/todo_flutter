import 'dart:async';

import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';

class LoadDashboard {
  final Completer completer;

  LoadDashboard([this.completer]);
}

class LoadDashboardSuccess implements PersistData {
  final DashboardEntity data;

  LoadDashboardSuccess(this.data);
}

class LoadDashboardFailure {
  final dynamic error;

  LoadDashboardFailure(this.error);

  @override
  String toString() {
    return 'LoadDashboardFailure{error: $error}';
  }
}

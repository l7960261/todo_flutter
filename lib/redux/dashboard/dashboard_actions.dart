import 'dart:async';

import 'package:todo_flutter/data/models/models.dart';

class LoadDashboard {
  final Completer completer;

  LoadDashboard([this.completer]);
}

class LoadDashboardSuccess {
  final DashboardEntity data;

  LoadDashboardSuccess(this.data);
}

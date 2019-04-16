import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/data/serializers.dart';
import 'package:todo_flutter/utils/constants.dart';
import 'package:todo_flutter/utils/web_client.dart';

class DashboardRepository {
  final WebClient webClient;
  const DashboardRepository({this.webClient = const WebClient()});

  Future<DashboardEntity> loadItem() async {
    final dynamic response =
        await webClient.get(DotEnv().env['API_HOST'] + APIPoints.dashboard);
    final DashboardResponse dashboardResponse =
        serializers.deserializeWith(DashboardResponse.serializer, response);
    return dashboardResponse.data;
  }
}

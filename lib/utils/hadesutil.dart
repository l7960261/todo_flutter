import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hades_core/flutter_hades_core.dart';

class HadesUtil {
  static String seedToPrivate(Map<dynamic, dynamic> params) {
    return HadesKeys.seedToPrivate(params['seed'], params['index']);
  }

  Future<String> seedToPrivateIsolate(String seed, int index) async {
    return await compute(
        HadesUtil.seedToPrivate, {'seed': seed, 'index': index});
  }

  static String seedToAddress(Map<dynamic, dynamic> params) {
    return HadesAccounts.createAccount(HadesAccountType.HADES,
        HadesKeys.createPublicKey(seedToPrivate(params)));
  }

  Future<String> seedToAddressIsolate(String seed, int index) async {
    return await compute(seedToAddress, {'seed': seed, 'index': index});
  }
}

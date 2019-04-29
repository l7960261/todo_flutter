import 'dart:async';
import 'package:flutter_hades_core/flutter_hades_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_flutter/utils/constants.dart';
import 'package:todo_flutter/utils/hadesutil.dart';

class WalletRepository {
  const WalletRepository();

  Future<String> getAddress() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String address = prefs.getString(kWalletAddress) ?? null;

    if (address == null) {
      final seed = HadesSeeds.generateSeed();
      address = await HadesUtil().seedToAddressIsolate(seed, 0);
      prefs.setString(kWalletAddress, address);
    }

    return address;
  }
}

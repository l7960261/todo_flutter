import 'dart:async';
import 'package:flutter_hades_core/flutter_hades_core.dart';

class WalletRepository {
  const WalletRepository();

  createSeed() {
    final seed = HadesSeeds.generateSeed();
  }
}

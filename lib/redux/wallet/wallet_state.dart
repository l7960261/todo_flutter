import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wallet_state.g.dart';

abstract class WalletState implements Built<WalletState, WalletStateBuilder> {
  factory WalletState() {
    return _$WalletState._(
      isLoaded: true,
      address: null,
      accountBalance: BigInt.zero
    );
  }

  WalletState._();

  bool get isLoaded;
  @nullable
  String get address;
  BigInt get accountBalance;


  static Serializer<WalletState> get serializer => _$walletStateSerializer;
}
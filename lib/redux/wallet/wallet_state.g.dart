// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WalletState> _$walletStateSerializer = new _$WalletStateSerializer();

class _$WalletStateSerializer implements StructuredSerializer<WalletState> {
  @override
  final Iterable<Type> types = const [WalletState, _$WalletState];
  @override
  final String wireName = 'WalletState';

  @override
  Iterable serialize(Serializers serializers, WalletState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'isLoaded',
      serializers.serialize(object.isLoaded,
          specifiedType: const FullType(bool)),
      'accountBalance',
      serializers.serialize(object.accountBalance,
          specifiedType: const FullType(BigInt)),
    ];
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  WalletState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WalletStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'isLoaded':
          result.isLoaded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accountBalance':
          result.accountBalance = serializers.deserialize(value,
              specifiedType: const FullType(BigInt)) as BigInt;
          break;
      }
    }

    return result.build();
  }
}

class _$WalletState extends WalletState {
  @override
  final bool isLoaded;
  @override
  final String address;
  @override
  final BigInt accountBalance;

  factory _$WalletState([void updates(WalletStateBuilder b)]) =>
      (new WalletStateBuilder()..update(updates)).build();

  _$WalletState._({this.isLoaded, this.address, this.accountBalance})
      : super._() {
    if (isLoaded == null) {
      throw new BuiltValueNullFieldError('WalletState', 'isLoaded');
    }
    if (accountBalance == null) {
      throw new BuiltValueNullFieldError('WalletState', 'accountBalance');
    }
  }

  @override
  WalletState rebuild(void updates(WalletStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  WalletStateBuilder toBuilder() => new WalletStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WalletState &&
        isLoaded == other.isLoaded &&
        address == other.address &&
        accountBalance == other.accountBalance;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isLoaded.hashCode), address.hashCode),
        accountBalance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WalletState')
          ..add('isLoaded', isLoaded)
          ..add('address', address)
          ..add('accountBalance', accountBalance))
        .toString();
  }
}

class WalletStateBuilder implements Builder<WalletState, WalletStateBuilder> {
  _$WalletState _$v;

  bool _isLoaded;
  bool get isLoaded => _$this._isLoaded;
  set isLoaded(bool isLoaded) => _$this._isLoaded = isLoaded;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  BigInt _accountBalance;
  BigInt get accountBalance => _$this._accountBalance;
  set accountBalance(BigInt accountBalance) =>
      _$this._accountBalance = accountBalance;

  WalletStateBuilder();

  WalletStateBuilder get _$this {
    if (_$v != null) {
      _isLoaded = _$v.isLoaded;
      _address = _$v.address;
      _accountBalance = _$v.accountBalance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WalletState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WalletState;
  }

  @override
  void update(void updates(WalletStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$WalletState build() {
    final _$result = _$v ??
        new _$WalletState._(
            isLoaded: isLoaded,
            address: address,
            accountBalance: accountBalance);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

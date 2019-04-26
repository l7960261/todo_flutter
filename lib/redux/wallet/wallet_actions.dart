class WalletGenerateRequest {}

class WalletGenerateSuccess {}

class WalletGenerateFailure {}

class WalletGenerateDone {
  String address;
  WalletGenerateDone(this.address);  
}

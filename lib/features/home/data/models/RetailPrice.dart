/// amountInMicros : 23990000
/// currencyCode : "USD"

class RetailPrice {
  RetailPrice({
      int? amountInMicros, 
      String? currencyCode,}){
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
}

  RetailPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  int? _amountInMicros;
  String? _currencyCode;
RetailPrice copyWith({  int? amountInMicros,
  String? currencyCode,
}) => RetailPrice(  amountInMicros: amountInMicros ?? _amountInMicros,
  currencyCode: currencyCode ?? _currencyCode,
);
  int? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }

}
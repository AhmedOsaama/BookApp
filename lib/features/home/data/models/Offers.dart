import 'ListPrice.dart';
import 'RetailPrice.dart';

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":23990000,"currencyCode":"USD"}
/// retailPrice : {"amountInMicros":23990000,"currencyCode":"USD"}
/// giftable : true

class Offers {
  Offers({
      int? finskyOfferType, 
      ListPrice? listPrice, 
      RetailPrice? retailPrice, 
      bool? giftable,}){
    _finskyOfferType = finskyOfferType;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
    _giftable = giftable;
}

  Offers.fromJson(dynamic json) {
    _finskyOfferType = json['finskyOfferType'];
    // _listPrice = (json['listPrice'] as Map<String, dynamic>?) as ListPrice?;
    _retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    _giftable = json['giftable'];
  }
  int? _finskyOfferType;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;
  bool? _giftable;
Offers copyWith({  int? finskyOfferType,
  ListPrice? listPrice,
  RetailPrice? retailPrice,
  bool? giftable,
}) => Offers(  finskyOfferType: finskyOfferType ?? _finskyOfferType,
  listPrice: listPrice ?? _listPrice,
  retailPrice: retailPrice ?? _retailPrice,
  giftable: giftable ?? _giftable,
);
  int? get finskyOfferType => _finskyOfferType;
  ListPrice? get listPrice => _listPrice;
  RetailPrice? get retailPrice => _retailPrice;
  bool? get giftable => _giftable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = _finskyOfferType;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    map['giftable'] = _giftable;
    return map;
  }

}
import 'package:barikoi_api/model/place.dart';

class PickResult {
  PickResult(
      {this.placeId,
      this.latitude,
      this.longitude,
      this.formattedAddress,
      this.area,
      this.city,
      this.postCode,
      this.pType,
      this.uCode});

  final int? placeId;
  num? latitude;
  num? longitude;
  String? area;
  String? formattedAddress;
  String? city;
  int? postCode;
  String? pType;
  String? uCode;
  PickResult setLongitude(num longitude) {
    this.longitude = longitude;
    return this;
  }

  PickResult setLatitude(num latitude) {
    this.latitude = latitude;
    return this;
  }

  factory PickResult.fromGeocodingResult(Place result) {
    return PickResult(
      placeId: result.id,
      formattedAddress: result.address,
      area: result.area,
      city: result.city,
    );
  }

  factory PickResult.fromPlaceDetailResult(Place result) {
    return PickResult(
      placeId: result.id,
      latitude: num.parse(result.latitude.toString()),
      longitude: num.parse(result.longitude.toString()),
      formattedAddress: result.address,
      area: result.area,
      city: result.city,
    );
  }
}

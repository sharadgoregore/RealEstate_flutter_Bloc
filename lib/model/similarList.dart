// To parse this JSON data, do
//
//     final similarProperty = similarPropertyFromJson(jsonString);

import 'dart:convert';

SimilarProperty similarPropertyFromJson(String str) =>
    SimilarProperty.fromJson(json.decode(str));

String similarPropertyToJson(SimilarProperty data) =>
    json.encode(data.toJson());

class SimilarProperty {
  SimilarProperty({
    this.data,
  });

  Data data;

  factory SimilarProperty.fromJson(Map<String, dynamic> json) =>
      SimilarProperty(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.home,
  });

  Home home;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        home: Home.fromJson(json["home"]),
      );

  Map<String, dynamic> toJson() => {
        "home": home.toJson(),
      };
}

class Home {
  Home({
    this.relatedHomes,
  });

  RelatedHomes relatedHomes;

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        relatedHomes: RelatedHomes.fromJson(json["related_homes"]),
      );

  Map<String, dynamic> toJson() => {
        "related_homes": relatedHomes.toJson(),
      };
}

class RelatedHomes {
  RelatedHomes({
    this.count,
    this.results,
    this.impressionToken,
  });

  int count;
  List<Result> results;
  ImpressionToken impressionToken;

  factory RelatedHomes.fromJson(Map<String, dynamic> json) => RelatedHomes(
        count: json["count"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        impressionToken: ImpressionToken.fromJson(json["impression_token"]),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "impression_token": impressionToken.toJson(),
      };
}

class ImpressionToken {
  ImpressionToken({
    this.product,
    this.type,
    this.apiRoute,
    this.moduleName,
    this.algoName,
    this.algoVersion,
    this.modelName,
    this.moduleType,
    this.modelVersion,
    this.impressionId,
    this.recommendationsCount,
    this.clientId,
  });

  String product;
  String type;
  String apiRoute;
  String moduleName;
  String algoName;
  String algoVersion;
  String modelName;
  String moduleType;
  String modelVersion;
  String impressionId;
  int recommendationsCount;
  String clientId;

  factory ImpressionToken.fromJson(Map<String, dynamic> json) =>
      ImpressionToken(
        product: json["product"],
        type: json["type"],
        apiRoute: json["api_route"],
        moduleName: json["module_name"],
        algoName: json["algo_name"],
        algoVersion: json["algo_version"],
        modelName: json["model_name"],
        moduleType: json["module_type"],
        modelVersion: json["model_version"],
        impressionId: json["impression_id"],
        recommendationsCount: json["recommendations_count"],
        clientId: json["client_id"],
      );

  Map<String, dynamic> toJson() => {
        "product": product,
        "type": type,
        "api_route": apiRoute,
        "module_name": moduleName,
        "algo_name": algoName,
        "algo_version": algoVersion,
        "model_name": modelName,
        "module_type": moduleType,
        "model_version": modelVersion,
        "impression_id": impressionId,
        "recommendations_count": recommendationsCount,
        "client_id": clientId,
      };
}

class Result {
  Result({
    this.propertyId,
    this.listPrice,
    this.href,
    this.flags,
    this.status,
    this.listingId,
    this.primaryPhoto,
    this.description,
    this.location,
  });

  String propertyId;
  dynamic listPrice;
  String href;
  Flags flags;
  Status status;
  String listingId;
  PrimaryPhoto primaryPhoto;
  Description description;
  Location location;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        propertyId: json["property_id"],
        listPrice: json["list_price"],
        href: json["href"],
        flags: Flags.fromJson(json["flags"]),
        status: statusValues.map[json["status"]],
        listingId: json["listing_id"],
        primaryPhoto: PrimaryPhoto.fromJson(json["primary_photo"]),
        description: Description.fromJson(json["description"]),
        location: Location.fromJson(json["location"]),
      );

  Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        "list_price": listPrice,
        "href": href,
        "flags": flags.toJson(),
        "status": statusValues.reverse[status],
        "listing_id": listingId,
        "primary_photo": primaryPhoto.toJson(),
        "description": description.toJson(),
        "location": location.toJson(),
      };
}

class Description {
  Description({
    this.baths,
    this.bathsFull,
    this.bathsHalf,
    this.beds,
    this.sqft,
  });

  dynamic baths;
  dynamic bathsFull;
  dynamic bathsHalf;
  dynamic beds;
  dynamic sqft;

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        baths: json["baths"],
        bathsFull: json["baths_full"],
        bathsHalf: json["baths_half"],
        beds: json["beds"],
        sqft: json["sqft"],
      );

  Map<String, dynamic> toJson() => {
        "baths": baths,
        "baths_full": bathsFull,
        "baths_half": bathsHalf,
        "beds": beds,
        "sqft": sqft,
      };
}

class Flags {
  Flags({
    this.isContingent,
    this.isNewConstruction,
    this.isPending,
    this.isForeclosure,
    this.isNewListing,
  });

  dynamic isContingent;
  dynamic isNewConstruction;
  dynamic isPending;
  dynamic isForeclosure;
  bool isNewListing;

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        isContingent: json["is_contingent"],
        isNewConstruction: json["is_new_construction"],
        isPending: json["is_pending"],
        isForeclosure: json["is_foreclosure"],
        isNewListing: json["is_new_listing"],
      );

  Map<String, dynamic> toJson() => {
        "is_contingent": isContingent,
        "is_new_construction": isNewConstruction,
        "is_pending": isPending,
        "is_foreclosure": isForeclosure,
        "is_new_listing": isNewListing,
      };
}

class Location {
  Location({
    this.address,
  });

  Address address;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        address: Address.fromJson(json["address"]),
      );

  Map<String, dynamic> toJson() => {
        "address": address.toJson(),
      };
}

class Address {
  Address({
    this.city,
    this.country,
    this.line,
  });

  City city;
  Country country;
  String line;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: cityValues.map[json["city"]],
        country: countryValues.map[json["country"]],
        line: json["line"],
      );

  Map<String, dynamic> toJson() => {
        "city": cityValues.reverse[city],
        "country": countryValues.reverse[country],
        "line": line,
      };
}

enum City { NEW_YORK, MANHATTAN }

final cityValues =
    EnumValues({"Manhattan": City.MANHATTAN, "New York": City.NEW_YORK});

enum Country { USA }

final countryValues = EnumValues({"USA": Country.USA});

class PrimaryPhoto {
  PrimaryPhoto({
    this.href,
  });

  String href;

  factory PrimaryPhoto.fromJson(Map<String, dynamic> json) => PrimaryPhoto(
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

enum Status { FOR_RENT }

final statusValues = EnumValues({"for rent": Status.FOR_RENT});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

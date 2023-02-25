// // To parse this JSON data, do
// //
// //     final rentList = rentListFromJson(jsonString);

// import 'dart:convert';

// RentList rentListFromJson(String str) => RentList.fromJson(json.decode(str));

// String rentListToJson(RentList data) => json.encode(data.toJson());

// class RentList {
//     RentList({
//         this.meta,
//         this.returnedRows,
//         this.matchingRows,
//         this.listings,
//     });

//     Meta meta;
//     int returnedRows;
//     int matchingRows;
//     List<Listing> listings;

//     factory RentList.fromJson(Map<String, dynamic> json) => RentList(
//         meta: Meta.fromJson(json["meta"]),
//         returnedRows: json["returned_rows"],
//         matchingRows: json["matching_rows"],
//         listings: List<Listing>.from(json["listings"].map((x) => Listing.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "meta": meta.toJson(),
//         "returned_rows": returnedRows,
//         "matching_rows": matchingRows,
//         "listings": List<dynamic>.from(listings.map((x) => x.toJson())),
//     };
// }

// class Listing {
//     Listing({
//         this.propertyId,
//         this.listingId,
//         this.propType,
//         this.lastUpdate,
//         this.address,
//         this.addressNew,
//         this.propStatus,
//         this.priceRaw,
//         this.listDate,
//         this.isShowcase,
//         this.hasSpecials,
//         this.price,
//         this.beds,
//         this.baths,
//         this.sqft,
//         this.photo,
//         this.shortPrice,
//         this.priceReduced,
//         this.photoCount,
//         this.products,
//         this.lat,
//         this.lon,
//         this.petPolicy,
//         this.hasLeadform,
//         this.source,
//         this.pageNo,
//         this.rank,
//         this.listTracking,
//         this.priceReducedDate,
//         this.sqftRaw,
//         this.hasMatterport,
//         this.bathsFull,
//         this.isNewListing,
//         this.name,
//         this.communityId,
//         this.bathsHalf,
//         this.lotSize,
//     });

//     String propertyId;
//     String listingId;
//     PropType propType;
//     DateTime lastUpdate;
//     String address;
//     AddressNew addressNew;
//     PropStatus propStatus;
//     int priceRaw;
//     DateTime listDate;
//     bool isShowcase;
//     bool hasSpecials;
//     String price;
//     String beds;
//     String baths;
//     String sqft;
//     String photo;
//     String shortPrice;
//     bool priceReduced;
//     int photoCount;
//     List<Product> products;
//     double lat;
//     double lon;
//     PetPolicy petPolicy;
//     bool hasLeadform;
//     Source source;
//     int pageNo;
//     int rank;
//     String listTracking;
//     DateTime priceReducedDate;
//     int sqftRaw;
//     bool hasMatterport;
//     int bathsFull;
//     bool isNewListing;
//     String name;
//     String communityId;
//     int bathsHalf;
//     String lotSize;

//     factory Listing.fromJson(Map<String, dynamic> json) => Listing(
//         propertyId: json["property_id"],
//         listingId: json["listing_id"],
//         propType: propTypeValues.map[json["prop_type"]],
//         lastUpdate: DateTime.parse(json["last_update"]),
//         address: json["address"],
//         addressNew: AddressNew.fromJson(json["address_new"]),
//         propStatus: propStatusValues.map[json["prop_status"]],
//         priceRaw: json["price_raw"],
//         listDate: json["list_date"] == null ? null : DateTime.parse(json["list_date"]),
//         isShowcase: json["is_showcase"],
//         hasSpecials: json["has_specials"],
//         price: json["price"],
//         beds: json["beds"],
//         baths: json["baths"],
//         sqft: json["sqft"],
//         photo: json["photo"] == null ? null : json["photo"],
//         shortPrice: json["short_price"],
//         priceReduced: json["price_reduced"] == null ? null : json["price_reduced"],
//         photoCount: json["photo_count"],
//         products: json["products"] == null ? null : List<Product>.from(json["products"].map((x) => productValues.map[x])),
//         lat: json["lat"].toDouble(),
//         lon: json["lon"].toDouble(),
//         petPolicy: json["pet_policy"] == null ? null : petPolicyValues.map[json["pet_policy"]],
//         hasLeadform: json["has_leadform"],
//         source: sourceValues.map[json["source"]],
//         pageNo: json["page_no"],
//         rank: json["rank"],
//         listTracking: json["list_tracking"],
//         priceReducedDate: json["price_reduced_date"] == null ? null : DateTime.parse(json["price_reduced_date"]),
//         sqftRaw: json["sqft_raw"] == null ? null : json["sqft_raw"],
//         hasMatterport: json["has_matterport"] == null ? null : json["has_matterport"],
//         bathsFull: json["baths_full"] == null ? null : json["baths_full"],
//         isNewListing: json["is_new_listing"] == null ? null : json["is_new_listing"],
//         name: json["name"] == null ? null : json["name"],
//         communityId: json["community_id"] == null ? null : json["community_id"],
//         bathsHalf: json["baths_half"] == null ? null : json["baths_half"],
//         lotSize: json["lot_size"] == null ? null : json["lot_size"],
//     );

//     Map<String, dynamic> toJson() => {
//         "property_id": propertyId,
//         "listing_id": listingId,
//         "prop_type": propTypeValues.reverse[propType],
//         "last_update": lastUpdate.toIso8601String(),
//         "address": address,
//         "address_new": addressNew.toJson(),
//         "prop_status": propStatusValues.reverse[propStatus],
//         "price_raw": priceRaw,
//         "list_date": listDate == null ? null : listDate.toIso8601String(),
//         "is_showcase": isShowcase,
//         "has_specials": hasSpecials,
//         "price": price,
//         "beds": beds,
//         "baths": baths,
//         "sqft": sqft,
//         "photo": photo == null ? null : photo,
//         "short_price": shortPrice,
//         "price_reduced": priceReduced == null ? null : priceReduced,
//         "photo_count": photoCount,
//         "products": products == null ? null : List<dynamic>.from(products.map((x) => productValues.reverse[x])),
//         "lat": lat,
//         "lon": lon,
//         "pet_policy": petPolicy == null ? null : petPolicyValues.reverse[petPolicy],
//         "has_leadform": hasLeadform,
//         "source": sourceValues.reverse[source],
//         "page_no": pageNo,
//         "rank": rank,
//         "list_tracking": listTracking,
//         "price_reduced_date": priceReducedDate == null ? null : priceReducedDate.toIso8601String(),
//         "sqft_raw": sqftRaw == null ? null : sqftRaw,
//         "has_matterport": hasMatterport == null ? null : hasMatterport,
//         "baths_full": bathsFull == null ? null : bathsFull,
//         "is_new_listing": isNewListing == null ? null : isNewListing,
//         "name": name == null ? null : name,
//         "community_id": communityId == null ? null : communityId,
//         "baths_half": bathsHalf == null ? null : bathsHalf,
//         "lot_size": lotSize == null ? null : lotSize,
//     };
// }

// class AddressNew {
//     AddressNew({
//         this.city,
//         this.country,
//         this.county,
//         this.countyNeededForUniq,
//         this.lat,
//         this.line,
//         this.long,
//         this.postalCode,
//         this.stateCode,
//         this.state,
//         this.timeZone,
//         this.isApproximate,
//     });

//     String city;
//     Country country;
//     CountyEnum county;
//     bool countyNeededForUniq;
//     double lat;
//     String line;
//     double long;
//     String postalCode;
//     StateCodeEnum stateCode;
//     CountyEnum state;
//     TimeZone timeZone;
//     bool isApproximate;

//     factory AddressNew.fromJson(Map<String, dynamic> json) => AddressNew(
//         city: json["city"] == null ? null : json["city"],
//         country: countryValues.map[json["country"]],
//         county: json["county"] == null ? null : countyEnumValues.map[json["county"]],
//         countyNeededForUniq: json["county_needed_for_uniq"],
//         lat: json["lat"].toDouble(),
//         line: json["line"] == null ? null : json["line"],
//         long: json["long"].toDouble(),
//         postalCode: json["postal_code"],
//         stateCode: stateCodeEnumValues.map[json["state_code"]],
//         state: countyEnumValues.map[json["state"]],
//         timeZone: timeZoneValues.map[json["time_zone"]],
//         isApproximate: json["is_approximate"] == null ? null : json["is_approximate"],
//     );

//     Map<String, dynamic> toJson() => {
//         "city": city == null ? null : city,
//         "country": countryValues.reverse[country],
//         "county": county == null ? null : countyEnumValues.reverse[county],
//         "county_needed_for_uniq": countyNeededForUniq,
//         "lat": lat,
//         "line": line == null ? null : line,
//         "long": long,
//         "postal_code": postalCode,
//         "state_code": stateCodeEnumValues.reverse[stateCode],
//         "state": countyEnumValues.reverse[state],
//         "time_zone": timeZoneValues.reverse[timeZone],
//         "is_approximate": isApproximate == null ? null : isApproximate,
//     };
// }

// enum Country { USA }

// final countryValues = EnumValues({
//     "USA": Country.USA
// });

// enum CountyEnum { KINGS, NEW_YORK, QUEENS, BRONX, RICHMOND, NASSAU }

// final countyEnumValues = EnumValues({
//     "Bronx": CountyEnum.BRONX,
//     "Kings": CountyEnum.KINGS,
//     "Nassau": CountyEnum.NASSAU,
//     "New York": CountyEnum.NEW_YORK,
//     "Queens": CountyEnum.QUEENS,
//     "Richmond": CountyEnum.RICHMOND
// });

// enum StateCodeEnum { NY }

// final stateCodeEnumValues = EnumValues({
//     "NY": StateCodeEnum.NY
// });

// enum TimeZone { AMERICA_NEW_YORK }

// final timeZoneValues = EnumValues({
//     "America/New_York": TimeZone.AMERICA_NEW_YORK
// });

// enum PetPolicy { DOGS_CATS_OK, SMALL_DOGS_OK, SMALL_DOGS_CATS_OK }

// final petPolicyValues = EnumValues({
//     "Dogs & Cats OK": PetPolicy.DOGS_CATS_OK,
//     "Small Dogs & Cats OK": PetPolicy.SMALL_DOGS_CATS_OK,
//     "Small Dogs OK": PetPolicy.SMALL_DOGS_OK
// });

// enum Product { CORE_AGENT, CORE_BROKER, UNIT_RENTAL, BASIC, COMMUNITY_RENTAL, ENHANCED, MANAGEMENT_OTHER_LISTINGS, MANAGEMENT_COMPANY_LOGO, MANAGEMENT_COMPANY_NAME, MANAGEMENT_COMPANY_WEBSITE }

// final productValues = EnumValues({
//     "basic": Product.BASIC,
//     "_COMMUNITY_RENTAL": Product.COMMUNITY_RENTAL,
//     "core.agent": Product.CORE_AGENT,
//     "core.broker": Product.CORE_BROKER,
//     "enhanced": Product.ENHANCED,
//     "management_company_logo": Product.MANAGEMENT_COMPANY_LOGO,
//     "management_company_name": Product.MANAGEMENT_COMPANY_NAME,
//     "management_company_website": Product.MANAGEMENT_COMPANY_WEBSITE,
//     "management_other_listings": Product.MANAGEMENT_OTHER_LISTINGS,
//     "_UNIT_RENTAL": Product.UNIT_RENTAL
// });

// enum PropStatus { FOR_RENT }

// final propStatusValues = EnumValues({
//     "for_rent": PropStatus.FOR_RENT
// });

// enum PropType { SINGLE_FAMILY, APARTMENT, CONDO, OTHER, DUPLEX_TRIPLEX, TOWNHOME, COOP, MULTI_FAMILY }

// final propTypeValues = EnumValues({
//     "apartment": PropType.APARTMENT,
//     "condo": PropType.CONDO,
//     "coop": PropType.COOP,
//     "duplex_triplex": PropType.DUPLEX_TRIPLEX,
//     "multi_family": PropType.MULTI_FAMILY,
//     "other": PropType.OTHER,
//     "single_family": PropType.SINGLE_FAMILY,
//     "townhome": PropType.TOWNHOME
// });

// enum Source { MLS, UNIT_RENTAL, COMMUNITY }

// final sourceValues = EnumValues({
//     "community": Source.COMMUNITY,
//     "mls": Source.MLS,
//     "unit_rental": Source.UNIT_RENTAL
// });

// class Meta {
//     Meta({
//         this.build,
//         this.schema,
//         this.trackingParams,
//         this.tracking,
//     });

//     String build;
//     String schema;
//     TrackingParams trackingParams;
//     String tracking;

//     factory Meta.fromJson(Map<String, dynamic> json) => Meta(
//         build: json["build"],
//         schema: json["schema"],
//         trackingParams: TrackingParams.fromJson(json["tracking_params"]),
//         tracking: json["tracking"],
//     );

//     Map<String, dynamic> toJson() => {
//         "build": build,
//         "schema": schema,
//         "tracking_params": trackingParams.toJson(),
//         "tracking": tracking,
//     };
// }

// class TrackingParams {
//     TrackingParams({
//         this.channel,
//         this.siteSection,
//         this.city,
//         this.county,
//         this.neighborhood,
//         this.searchCityState,
//         this.state,
//         this.zip,
//         this.srpPropertyStatus,
//         this.listingActivity,
//         this.propertyStatus,
//         this.propertyType,
//         this.searchBathrooms,
//         this.searchBedrooms,
//         this.searchMaxPrice,
//         this.searchMinPrice,
//         this.searchRadius,
//         this.searchHouseSqft,
//         this.searchLotSqft,
//         this.searchResults,
//         this.sortResults,
//         this.searchCoordinates,
//         this.version,
//     });

//     PropStatus channel;
//     PropStatus siteSection;
//     String city;
//     String county;
//     String neighborhood;
//     String searchCityState;
//     StateCodeEnum state;
//     String zip;
//     String srpPropertyStatus;
//     String listingActivity;
//     PropStatus propertyStatus;
//     String propertyType;
//     String searchBathrooms;
//     String searchBedrooms;
//     String searchMaxPrice;
//     String searchMinPrice;
//     String searchRadius;
//     String searchHouseSqft;
//     String searchLotSqft;
//     String searchResults;
//     String sortResults;
//     String searchCoordinates;
//     String version;

//     factory TrackingParams.fromJson(Map<String, dynamic> json) => TrackingParams(
//         channel: propStatusValues.map[json["channel"]],
//         siteSection: propStatusValues.map[json["siteSection"]],
//         city: json["city"],
//         county: json["county"],
//         neighborhood: json["neighborhood"],
//         searchCityState: json["searchCityState"],
//         state: stateCodeEnumValues.map[json["state"]],
//         zip: json["zip"],
//         srpPropertyStatus: json["srpPropertyStatus"],
//         listingActivity: json["listingActivity"],
//         propertyStatus: propStatusValues.map[json["propertyStatus"]],
//         propertyType: json["propertyType"],
//         searchBathrooms: json["searchBathrooms"],
//         searchBedrooms: json["searchBedrooms"],
//         searchMaxPrice: json["searchMaxPrice"],
//         searchMinPrice: json["searchMinPrice"],
//         searchRadius: json["searchRadius"],
//         searchHouseSqft: json["searchHouseSqft"],
//         searchLotSqft: json["searchLotSqft"],
//         searchResults: json["searchResults"],
//         sortResults: json["sortResults"],
//         searchCoordinates: json["searchCoordinates"],
//         version: json["version"],
//     );

//     Map<String, dynamic> toJson() => {
//         "channel": propStatusValues.reverse[channel],
//         "siteSection": propStatusValues.reverse[siteSection],
//         "city": city,
//         "county": county,
//         "neighborhood": neighborhood,
//         "searchCityState": searchCityState,
//         "state": stateCodeEnumValues.reverse[state],
//         "zip": zip,
//         "srpPropertyStatus": srpPropertyStatus,
//         "listingActivity": listingActivity,
//         "propertyStatus": propStatusValues.reverse[propertyStatus],
//         "propertyType": propertyType,
//         "searchBathrooms": searchBathrooms,
//         "searchBedrooms": searchBedrooms,
//         "searchMaxPrice": searchMaxPrice,
//         "searchMinPrice": searchMinPrice,
//         "searchRadius": searchRadius,
//         "searchHouseSqft": searchHouseSqft,
//         "searchLotSqft": searchLotSqft,
//         "searchResults": searchResults,
//         "sortResults": sortResults,
//         "searchCoordinates": searchCoordinates,
//         "version": version,
//     };
// }

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }

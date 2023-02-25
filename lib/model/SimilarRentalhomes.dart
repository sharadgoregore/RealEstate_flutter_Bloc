// To parse this JSON data, do
//
//     final similarRentelhomes = similarRentelhomesFromJson(jsonString);

import 'dart:convert';

SimilarRentelhomes similarRentelhomesFromJson(String str) => SimilarRentelhomes.fromJson(json.decode(str));

String similarRentelhomesToJson(SimilarRentelhomes data) => json.encode(data.toJson());

class SimilarRentelhomes {
    SimilarRentelhomes({
        this.properties,
    });

    List<SimilarRentel> properties;

    factory SimilarRentelhomes.fromJson(Map<String, dynamic> json) => SimilarRentelhomes(
        properties: List<SimilarRentel>.from(json["properties"].map((x) => SimilarRentel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "properties": List<dynamic>.from(properties.map((x) => x.toJson())),
    };
}

class SimilarRentel {
    SimilarRentel({
        this.propertyId,
        this.listingId,
        this.ldpUrl,
        this.fullAddressDisplay,
        this.photoUrl,
        this.priceDisplay,
        this.beds,
        this.baths,
        this.bathsFull,
        this.bathsHalf,
        this.sqftDisplay,
        this.searchFlags,
        this.savedResourceId,
        this.lat,
        this.lon,
        this.long,
        this.agentId,
        this.pricePerSqft,
        this.sqft,
        this.lotSqft,
        this.price,
        this.yearBuilt,
        this.bedsDisplay,
        this.bathsDisplay,
        this.addressDisplay,
        this.cityStateZip,
        this.searchableUrl,
        this.listDate,
        this.comparedPrice,
        this.comparedYearBuilt,
        this.comparedSqft,
        this.comparedLotSize,
        this.propStatus,
        this.listedDateTime,
        this.address,
        this.city,
        this.stateCode,
        this.state,
        this.postalCode,
        this.lotSqftDisplay,
        this.comparedPriceDiff,
        this.comparedSqftDiff,
        this.daysOnRealtor,
        this.communityName,
        this.leadAttributes,
        this.communityId,
        this.tollFreeNumber,
    });

    int propertyId;
    int listingId;
    String ldpUrl;
    String fullAddressDisplay;
    String photoUrl;
    String priceDisplay;
    String beds;
    String baths;
    String bathsFull;
    dynamic bathsHalf;
    String sqftDisplay;
    SearchFlags searchFlags;
    dynamic savedResourceId;
    double lat;
    dynamic lon;
    dynamic long;
    dynamic agentId;
    double pricePerSqft;
    int sqft;
    dynamic lotSqft;
    int price;
    dynamic yearBuilt;
    dynamic bedsDisplay;
    dynamic bathsDisplay;
    dynamic addressDisplay;
    dynamic cityStateZip;
    dynamic searchableUrl;
    dynamic listDate;
    dynamic comparedPrice;
    dynamic comparedYearBuilt;
    dynamic comparedSqft;
    dynamic comparedLotSize;
    String propStatus;
    dynamic listedDateTime;
    String address;
    String city;
    String stateCode;
    dynamic state;
    String postalCode;
    dynamic lotSqftDisplay;
    dynamic comparedPriceDiff;
    dynamic comparedSqftDiff;
    dynamic daysOnRealtor;
    String communityName;
    dynamic leadAttributes;
    dynamic communityId;
    dynamic tollFreeNumber;

    factory SimilarRentel.fromJson(Map<String, dynamic> json) => SimilarRentel(
        propertyId: json["property_id"],
        listingId: json["listing_id"],
        ldpUrl: json["ldp_url"],
        fullAddressDisplay: json["full_address_display"],
        photoUrl: json["photo_url"],
        priceDisplay: json["price_display"],
        beds: json["beds"],
        baths: json["baths"],
        bathsFull: json["baths_full"] == null ? null : json["baths_full"],
        bathsHalf: json["baths_half"],
        sqftDisplay: json["sqft_display"] == null ? null : json["sqft_display"],
        searchFlags: SearchFlags.fromJson(json["search_flags"]),
        savedResourceId: json["saved_resource_id"],
        lat: json["lat"].toDouble(),
        lon: json["lon"],
        long: json["long"],
        agentId: json["agent_id"],
        pricePerSqft: json["price_per_sqft"] == null ? null : json["price_per_sqft"].toDouble(),
        sqft: json["sqft"] == null ? null : json["sqft"],
        lotSqft: json["lot_sqft"],
        price: json["price"],
        yearBuilt: json["year_built"],
        bedsDisplay: json["beds_display"],
        bathsDisplay: json["baths_display"],
        addressDisplay: json["address_display"],
        cityStateZip: json["city_state_zip"],
        searchableUrl: json["searchable_url"],
        listDate: json["list_date"],
        comparedPrice: json["compared_price"],
        comparedYearBuilt: json["compared_year_built"],
        comparedSqft: json["compared_sqft"],
        comparedLotSize: json["compared_lot_size"],
        propStatus: json["prop_status"],
        listedDateTime: json["listed_date_time"],
        address: json["address"],
        city: json["city"],
        stateCode: json["state_code"],
        state: json["state"],
        postalCode: json["postal_code"],
        lotSqftDisplay: json["lot_sqft_display"],
        comparedPriceDiff: json["compared_price_diff"],
        comparedSqftDiff: json["compared_sqft_diff"],
        daysOnRealtor: json["days_on_realtor"],
        communityName: json["community_name"] == null ? null : json["community_name"],
        leadAttributes: json["lead_attributes"],
        communityId: json["community_id"],
        tollFreeNumber: json["toll_free_number"],
    );

    Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        "listing_id": listingId,
        "ldp_url": ldpUrl,
        "full_address_display": fullAddressDisplay,
        "photo_url": photoUrl,
        "price_display": priceDisplay,
        "beds": beds,
        "baths": baths,
        "baths_full": bathsFull == null ? null : bathsFull,
        "baths_half": bathsHalf,
        "sqft_display": sqftDisplay == null ? null : sqftDisplay,
        "search_flags": searchFlags.toJson(),
        "saved_resource_id": savedResourceId,
        "lat": lat,
        "lon": lon,
        "long": long,
        "agent_id": agentId,
        "price_per_sqft": pricePerSqft == null ? null : pricePerSqft,
        "sqft": sqft == null ? null : sqft,
        "lot_sqft": lotSqft,
        "price": price,
        "year_built": yearBuilt,
        "beds_display": bedsDisplay,
        "baths_display": bathsDisplay,
        "address_display": addressDisplay,
        "city_state_zip": cityStateZip,
        "searchable_url": searchableUrl,
        "list_date": listDate,
        "compared_price": comparedPrice,
        "compared_year_built": comparedYearBuilt,
        "compared_sqft": comparedSqft,
        "compared_lot_size": comparedLotSize,
        "prop_status": propStatus,
        "listed_date_time": listedDateTime,
        "address": address,
        "city": city,
        "state_code": stateCode,
        "state": state,
        "postal_code": postalCode,
        "lot_sqft_display": lotSqftDisplay,
        "compared_price_diff": comparedPriceDiff,
        "compared_sqft_diff": comparedSqftDiff,
        "days_on_realtor": daysOnRealtor,
        "community_name": communityName == null ? null : communityName,
        "lead_attributes": leadAttributes,
        "community_id": communityId,
        "toll_free_number": tollFreeNumber,
    };
}

class SearchFlags {
    SearchFlags({
        this.isPriceReduced,
        this.isNewListing,
        this.isPending,
    });

    bool isPriceReduced;
    bool isNewListing;
    bool isPending;

    factory SearchFlags.fromJson(Map<String, dynamic> json) => SearchFlags(
        isPriceReduced: json["is_price_reduced"],
        isNewListing: json["is_new_listing"],
        isPending: json["is_pending"],
    );

    Map<String, dynamic> toJson() => {
        "is_price_reduced": isPriceReduced,
        "is_new_listing": isNewListing,
        "is_pending": isPending,
    };
}

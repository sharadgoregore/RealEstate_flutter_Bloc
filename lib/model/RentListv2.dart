// To parse this JSON data, do
//
//     final rentListV2 = rentListV2FromJson(jsonString);

import 'dart:convert';

RentListV2 rentListV2FromJson(String str) => RentListV2.fromJson(json.decode(str));

String rentListV2ToJson(RentListV2 data) => json.encode(data.toJson());

class RentListV2 {
    RentListV2({
        this.meta,
        this.properties,
    });

    Meta meta;
    List<Property> properties;

    factory RentListV2.fromJson(Map<String, dynamic> json) => RentListV2(
        meta: Meta.fromJson(json["meta"]),
        properties: List<Property>.from(json["properties"].map((x) => Property.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "properties": List<dynamic>.from(properties.map((x) => x.toJson())),
    };
}

class Meta {
    Meta({
        this.build,
        this.schema,
        this.trackingParams,
        this.tracking,
        this.returnedRows,
        this.matchingRows,
    });

    String build;
    String schema;
    TrackingParams trackingParams;
    String tracking;
    int returnedRows;
    int matchingRows;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        build: json["build"],
        schema: json["schema"],
        trackingParams: TrackingParams.fromJson(json["tracking_params"]),
        tracking: json["tracking"],
        returnedRows: json["returned_rows"],
        matchingRows: json["matching_rows"],
    );

    Map<String, dynamic> toJson() => {
        "build": build,
        "schema": schema,
        "tracking_params": trackingParams.toJson(),
        "tracking": tracking,
        "returned_rows": returnedRows,
        "matching_rows": matchingRows,
    };
}

class TrackingParams {
    TrackingParams({
        this.channel,
        this.siteSection,
        this.city,
        this.county,
        this.neighborhood,
        this.searchCityState,
        this.state,
        this.zip,
        this.srpPropertyStatus,
        this.listingActivity,
        this.propertyStatus,
        this.propertyType,
        this.searchBathrooms,
        this.searchBedrooms,
        this.searchMaxPrice,
        this.searchMinPrice,
        this.searchRadius,
        this.searchHouseSqft,
        this.searchLotSqft,
        this.searchResults,
        this.sortResults,
        this.searchCoordinates,
        this.version,
    });

    Channel channel;
    Channel siteSection;
    String city;
    String county;
    String neighborhood;
    String searchCityState;
    StateCodeEnum state;
    String zip;
    String srpPropertyStatus;
    String listingActivity;
    Channel propertyStatus;
    String propertyType;
    String searchBathrooms;
    String searchBedrooms;
    String searchMaxPrice;
    String searchMinPrice;
    String searchRadius;
    String searchHouseSqft;
    String searchLotSqft;
    String searchResults;
    String sortResults;
    String searchCoordinates;
    String version;

    factory TrackingParams.fromJson(Map<String, dynamic> json) => TrackingParams(
        channel: channelValues.map[json["channel"]],
        siteSection: channelValues.map[json["siteSection"]],
        city: json["city"],
        county: json["county"],
        neighborhood: json["neighborhood"],
        searchCityState: json["searchCityState"],
        state: stateCodeEnumValues.map[json["state"]],
        zip: json["zip"],
        srpPropertyStatus: json["srpPropertyStatus"],
        listingActivity: json["listingActivity"],
        propertyStatus: channelValues.map[json["propertyStatus"]],
        propertyType: json["propertyType"],
        searchBathrooms: json["searchBathrooms"],
        searchBedrooms: json["searchBedrooms"],
        searchMaxPrice: json["searchMaxPrice"],
        searchMinPrice: json["searchMinPrice"],
        searchRadius: json["searchRadius"],
        searchHouseSqft: json["searchHouseSqft"],
        searchLotSqft: json["searchLotSqft"],
        searchResults: json["searchResults"],
        sortResults: json["sortResults"],
        searchCoordinates: json["searchCoordinates"],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "channel": channelValues.reverse[channel],
        "siteSection": channelValues.reverse[siteSection],
        "city": city,
        "county": county,
        "neighborhood": neighborhood,
        "searchCityState": searchCityState,
        "state": stateCodeEnumValues.reverse[state],
        "zip": zip,
        "srpPropertyStatus": srpPropertyStatus,
        "listingActivity": listingActivity,
        "propertyStatus": channelValues.reverse[propertyStatus],
        "propertyType": propertyType,
        "searchBathrooms": searchBathrooms,
        "searchBedrooms": searchBedrooms,
        "searchMaxPrice": searchMaxPrice,
        "searchMinPrice": searchMinPrice,
        "searchRadius": searchRadius,
        "searchHouseSqft": searchHouseSqft,
        "searchLotSqft": searchLotSqft,
        "searchResults": searchResults,
        "sortResults": sortResults,
        "searchCoordinates": searchCoordinates,
        "version": version,
    };
}

enum Channel { FOR_RENT }

final channelValues = EnumValues({
    "for_rent": Channel.FOR_RENT
});

enum StateCodeEnum { NY }

final stateCodeEnumValues = EnumValues({
    "NY": StateCodeEnum.NY
});

class Property {
    Property({
        this.propertyId,
        this.listingId,
        this.propType,
        this.virtualTour,
        this.listDate,
        this.lastUpdate,
        this.yearBuilt,
        this.listingStatus,
        this.beds,
        this.branding,
        this.propStatus,
        this.address,
        this.clientDisplayFlags,
        this.products,
        this.agents,
        this.leadForms,
        this.lotSize,
        this.buildingSize,
        this.rdcWebUrl,
        this.rdcAppUrl,
        this.community,
        this.dataSourceName,
        this.source,
        this.pageNo,
        this.rank,
        this.listTracking,
        this.photoCount,
        this.photos,
        this.bathsFull,
        this.price,
        this.baths,
        this.priceReducedDate,
    });

    String propertyId;
    String listingId;
    PropType propType;
    VirtualTour virtualTour;
    DateTime listDate;
    DateTime lastUpdate;
    int yearBuilt;
    ListingStatus listingStatus;
    int beds;
    Branding branding;
    Channel propStatus;
    Address address;
    ClientDisplayFlags clientDisplayFlags;
    List<Product> products;
    List<Agent> agents;
    LeadForms leadForms;
    Size lotSize;
    Size buildingSize;
    String rdcWebUrl;
    String rdcAppUrl;
    Community community;
    DataSourceName dataSourceName;
    Source source;
    int pageNo;
    int rank;
    String listTracking;
    int photoCount;
    List<Photo> photos;
    int bathsFull;
    int price;
    int baths;
    DateTime priceReducedDate;

    factory Property.fromJson(Map<String, dynamic> json) => Property(
        propertyId: json["property_id"],
        listingId: json["listing_id"],
        propType: propTypeValues.map[json["prop_type"]],
        virtualTour: json["virtual_tour"] == null ? null : VirtualTour.fromJson(json["virtual_tour"]),
        listDate: DateTime.parse(json["list_date"]),
        lastUpdate: DateTime.parse(json["last_update"]),
        yearBuilt: json["year_built"] == null ? null : json["year_built"],
        listingStatus: listingStatusValues.map[json["listing_status"]],
        beds: json["beds"],
        branding: Branding.fromJson(json["branding"]),
        propStatus: channelValues.map[json["prop_status"]],
        address: Address.fromJson(json["address"]),
        clientDisplayFlags: ClientDisplayFlags.fromJson(json["client_display_flags"]),
        products: List<Product>.from(json["products"].map((x) => productValues.map[x])),
        agents: List<Agent>.from(json["agents"].map((x) => Agent.fromJson(x))),
        leadForms: LeadForms.fromJson(json["lead_forms"]),
        lotSize: Size.fromJson(json["lot_size"]),
        buildingSize: Size.fromJson(json["building_size"]),
        rdcWebUrl: json["rdc_web_url"],
        rdcAppUrl: json["rdc_app_url"],
        community: json["community"] == null ? null : Community.fromJson(json["community"]),
        dataSourceName: dataSourceNameValues.map[json["data_source_name"]],
        source: sourceValues.map[json["source"]],
        pageNo: json["page_no"],
        rank: json["rank"],
        listTracking: json["list_tracking"],
        photoCount: json["photo_count"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
        bathsFull: json["baths_full"] == null ? null : json["baths_full"],
        price: json["price"] == null ? null : json["price"],
        baths: json["baths"] == null ? null : json["baths"],
        priceReducedDate: json["price_reduced_date"] == null ? null : DateTime.parse(json["price_reduced_date"]),
    );

    Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        "listing_id": listingId,
        "prop_type": propTypeValues.reverse[propType],
        "virtual_tour": virtualTour == null ? null : virtualTour.toJson(),
        "list_date": listDate.toIso8601String(),
        "last_update": lastUpdate.toIso8601String(),
        "year_built": yearBuilt == null ? null : yearBuilt,
        "listing_status": listingStatusValues.reverse[listingStatus],
        "beds": beds,
        "branding": branding.toJson(),
        "prop_status": channelValues.reverse[propStatus],
        "address": address.toJson(),
        "client_display_flags": clientDisplayFlags.toJson(),
        "products": List<dynamic>.from(products.map((x) => productValues.reverse[x])),
        "agents": List<dynamic>.from(agents.map((x) => x.toJson())),
        "lead_forms": leadForms.toJson(),
        "lot_size": lotSize.toJson(),
        "building_size": buildingSize.toJson(),
        "rdc_web_url": rdcWebUrl,
        "rdc_app_url": rdcAppUrl,
        "community": community == null ? null : community.toJson(),
        "data_source_name": dataSourceNameValues.reverse[dataSourceName],
        "source": sourceValues.reverse[source],
        "page_no": pageNo,
        "rank": rank,
        "list_tracking": listTracking,
        "photo_count": photoCount,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
        "baths_full": bathsFull == null ? null : bathsFull,
        "price": price == null ? null : price,
        "baths": baths == null ? null : baths,
        "price_reduced_date": priceReducedDate == null ? null : priceReducedDate.toIso8601String(),
    };
}

class Address {
    Address({
        this.city,
        this.country,
        this.county,
        this.countyNeededForUniq,
        this.lat,
        this.line,
        this.postalCode,
        this.stateCode,
        this.state,
        this.timeZone,
        this.neighborhoodName,
        this.neighborhoods,
        this.lon,
        this.isApproximate,
    });

    String city;
    Country country;
    CountyEnum county;
    bool countyNeededForUniq;
    double lat;
    String line;
    String postalCode;
    StateCodeEnum stateCode;
    CountyEnum state;
    TimeZone timeZone;
    String neighborhoodName;
    List<Neighborhood> neighborhoods;
    double lon;
    bool isApproximate;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
        country: countryValues.map[json["country"]],
        county: json["county"] == null ? null : countyEnumValues.map[json["county"]],
        countyNeededForUniq: json["county_needed_for_uniq"],
        lat: json["lat"].toDouble(),
        line: json["line"],
        postalCode: json["postal_code"],
        stateCode: stateCodeEnumValues.map[json["state_code"]],
        state: countyEnumValues.map[json["state"]],
        timeZone: timeZoneValues.map[json["time_zone"]],
        neighborhoodName: json["neighborhood_name"] == null ? null : json["neighborhood_name"],
        neighborhoods: json["neighborhoods"] == null ? null : List<Neighborhood>.from(json["neighborhoods"].map((x) => Neighborhood.fromJson(x))),
        lon: json["lon"].toDouble(),
        isApproximate: json["is_approximate"] == null ? null : json["is_approximate"],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "country": countryValues.reverse[country],
        "county": county == null ? null : countyEnumValues.reverse[county],
        "county_needed_for_uniq": countyNeededForUniq,
        "lat": lat,
        "line": line,
        "postal_code": postalCode,
        "state_code": stateCodeEnumValues.reverse[stateCode],
        "state": countyEnumValues.reverse[state],
        "time_zone": timeZoneValues.reverse[timeZone],
        "neighborhood_name": neighborhoodName == null ? null : neighborhoodName,
        "neighborhoods": neighborhoods == null ? null : List<dynamic>.from(neighborhoods.map((x) => x.toJson())),
        "lon": lon,
        "is_approximate": isApproximate == null ? null : isApproximate,
    };
}

enum Country { USA }

final countryValues = EnumValues({
    "USA": Country.USA
});

enum CountyEnum { NEW_YORK, QUEENS, KINGS, RICHMOND, BRONX }

final countyEnumValues = EnumValues({
    "Bronx": CountyEnum.BRONX,
    "Kings": CountyEnum.KINGS,
    "New York": CountyEnum.NEW_YORK,
    "Queens": CountyEnum.QUEENS,
    "Richmond": CountyEnum.RICHMOND
});

class Neighborhood {
    Neighborhood({
        this.id,
        this.level,
        this.name,
    });

    String id;
    Level level;
    String name;

    factory Neighborhood.fromJson(Map<String, dynamic> json) => Neighborhood(
        id: json["id"],
        level: levelValues.map[json["level"]],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "level": levelValues.reverse[level],
        "name": name,
    };
}

enum Level { SUB_NEIGHBORHOOD, NEIGHBORHOOD, MACRO_NEIGHBORHOOD }

final levelValues = EnumValues({
    "macro_neighborhood": Level.MACRO_NEIGHBORHOOD,
    "neighborhood": Level.NEIGHBORHOOD,
    "sub_neighborhood": Level.SUB_NEIGHBORHOOD
});

enum TimeZone { AMERICA_NEW_YORK }

final timeZoneValues = EnumValues({
    "America/New_York": TimeZone.AMERICA_NEW_YORK
});

class Agent {
    Agent({
        this.primary,
    });

    bool primary;

    factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        primary: json["primary"],
    );

    Map<String, dynamic> toJson() => {
        "primary": primary,
    };
}

class Branding {
    Branding({
        this.stateLicense,
    });

    dynamic stateLicense;

    factory Branding.fromJson(Map<String, dynamic> json) => Branding(
        stateLicense: json["state_license"],
    );

    Map<String, dynamic> toJson() => {
        "state_license": stateLicense,
    };
}

class Size {
    Size({
        this.units,
        this.size,
    });

    Units units;
    int size;

    factory Size.fromJson(Map<String, dynamic> json) => Size(
        units: unitsValues.map[json["units"]],
        size: json["size"] == null ? null : json["size"],
    );

    Map<String, dynamic> toJson() => {
        "units": unitsValues.reverse[units],
        "size": size == null ? null : size,
    };
}

enum Units { SQFT }

final unitsValues = EnumValues({
    "sqft": Units.SQFT
});

class ClientDisplayFlags {
    ClientDisplayFlags({
        this.presentationStatus,
        this.isShowcase,
        this.leadFormPhoneRequired,
        this.priceChange,
        this.hasSpecials,
        this.isMlsRental,
        this.isRentalCommunity,
        this.isRentalUnit,
        this.isCoStar,
        this.isApartmentlist,
        this.suppressMapPin,
        this.suppressPhoneCallLeadEvent,
        this.priceReduced,
        this.allowsCats,
        this.allowsDogs,
        this.allowsDogsLarge,
        this.hasMatterport,
        this.isNewListing,
        this.allowsDogsSmall,
    });

    Channel presentationStatus;
    bool isShowcase;
    bool leadFormPhoneRequired;
    int priceChange;
    bool hasSpecials;
    bool isMlsRental;
    bool isRentalCommunity;
    bool isRentalUnit;
    bool isCoStar;
    bool isApartmentlist;
    bool suppressMapPin;
    bool suppressPhoneCallLeadEvent;
    bool priceReduced;
    bool allowsCats;
    bool allowsDogs;
    bool allowsDogsLarge;
    bool hasMatterport;
    bool isNewListing;
    bool allowsDogsSmall;

    factory ClientDisplayFlags.fromJson(Map<String, dynamic> json) => ClientDisplayFlags(
        presentationStatus: channelValues.map[json["presentation_status"]],
        isShowcase: json["is_showcase"],
        leadFormPhoneRequired: json["lead_form_phone_required"],
        priceChange: json["price_change"],
        hasSpecials: json["has_specials"],
        isMlsRental: json["is_mls_rental"],
        isRentalCommunity: json["is_rental_community"],
        isRentalUnit: json["is_rental_unit"],
        isCoStar: json["is_co_star"],
        isApartmentlist: json["is_apartmentlist"],
        suppressMapPin: json["suppress_map_pin"],
        suppressPhoneCallLeadEvent: json["suppress_phone_call_lead_event"],
        priceReduced: json["price_reduced"],
        allowsCats: json["allows_cats"] == null ? null : json["allows_cats"],
        allowsDogs: json["allows_dogs"] == null ? null : json["allows_dogs"],
        allowsDogsLarge: json["allows_dogs_large"] == null ? null : json["allows_dogs_large"],
        hasMatterport: json["has_matterport"] == null ? null : json["has_matterport"],
        isNewListing: json["is_new_listing"] == null ? null : json["is_new_listing"],
        allowsDogsSmall: json["allows_dogs_small"] == null ? null : json["allows_dogs_small"],
    );

    Map<String, dynamic> toJson() => {
        "presentation_status": channelValues.reverse[presentationStatus],
        "is_showcase": isShowcase,
        "lead_form_phone_required": leadFormPhoneRequired,
        "price_change": priceChange,
        "has_specials": hasSpecials,
        "is_mls_rental": isMlsRental,
        "is_rental_community": isRentalCommunity,
        "is_rental_unit": isRentalUnit,
        "is_co_star": isCoStar,
        "is_apartmentlist": isApartmentlist,
        "suppress_map_pin": suppressMapPin,
        "suppress_phone_call_lead_event": suppressPhoneCallLeadEvent,
        "price_reduced": priceReduced,
        "allows_cats": allowsCats == null ? null : allowsCats,
        "allows_dogs": allowsDogs == null ? null : allowsDogs,
        "allows_dogs_large": allowsDogsLarge == null ? null : allowsDogsLarge,
        "has_matterport": hasMatterport == null ? null : hasMatterport,
        "is_new_listing": isNewListing == null ? null : isNewListing,
        "allows_dogs_small": allowsDogsSmall == null ? null : allowsDogsSmall,
    };
}

class Community {
    Community({
        this.bathsMax,
        this.bathsMin,
        this.bedsMax,
        this.bedsMin,
        this.contactNumber,
        this.id,
        this.name,
        this.priceMax,
        this.priceMin,
        this.sourceId,
        this.sqftMax,
        this.sqftMin,
        this.sqftHint,
        this.priceHint,
    });

    double bathsMax;
    double bathsMin;
    int bedsMax;
    int bedsMin;
    String contactNumber;
    int id;
    String name;
    int priceMax;
    int priceMin;
    String sourceId;
    int sqftMax;
    int sqftMin;
    Hint sqftHint;
    Hint priceHint;

    factory Community.fromJson(Map<String, dynamic> json) => Community(
        bathsMax: json["baths_max"].toDouble(),
        bathsMin: json["baths_min"].toDouble(),
        bedsMax: json["beds_max"],
        bedsMin: json["beds_min"],
        contactNumber: json["contact_number"] == null ? null : json["contact_number"],
        id: json["id"],
        name: json["name"] == null ? null : json["name"],
        priceMax: json["price_max"] == null ? null : json["price_max"],
        priceMin: json["price_min"] == null ? null : json["price_min"],
        sourceId: json["source_id"],
        sqftMax: json["sqft_max"] == null ? null : json["sqft_max"],
        sqftMin: json["sqft_min"] == null ? null : json["sqft_min"],
        sqftHint: json["sqft_hint"] == null ? null : hintValues.map[json["sqft_hint"]],
        priceHint: json["price_hint"] == null ? null : hintValues.map[json["price_hint"]],
    );

    Map<String, dynamic> toJson() => {
        "baths_max": bathsMax,
        "baths_min": bathsMin,
        "beds_max": bedsMax,
        "beds_min": bedsMin,
        "contact_number": contactNumber == null ? null : contactNumber,
        "id": id,
        "name": name == null ? null : name,
        "price_max": priceMax == null ? null : priceMax,
        "price_min": priceMin == null ? null : priceMin,
        "source_id": sourceId,
        "sqft_max": sqftMax == null ? null : sqftMax,
        "sqft_min": sqftMin == null ? null : sqftMin,
        "sqft_hint": sqftHint == null ? null : hintValues.reverse[sqftHint],
        "price_hint": priceHint == null ? null : hintValues.reverse[priceHint],
    };
}

enum Hint { CALL }

final hintValues = EnumValues({
    "CALL": Hint.CALL
});

enum DataSourceName { CO_STAR, COMMUNITY_RENTAL, UNIT_RENTAL }

final dataSourceNameValues = EnumValues({
    "community_rental": DataSourceName.COMMUNITY_RENTAL,
    "co-star": DataSourceName.CO_STAR,
    "unit_rental": DataSourceName.UNIT_RENTAL
});

class LeadForms {
    LeadForms({
        this.form,
        this.showAgent,
        this.showBroker,
        this.showProvider,
        this.showManagement,
    });

    Form form;
    bool showAgent;
    bool showBroker;
    bool showProvider;
    bool showManagement;

    factory LeadForms.fromJson(Map<String, dynamic> json) => LeadForms(
        form: Form.fromJson(json["form"]),
        showAgent: json["show_agent"],
        showBroker: json["show_broker"],
        showProvider: json["show_provider"],
        showManagement: json["show_management"],
    );

    Map<String, dynamic> toJson() => {
        "form": form.toJson(),
        "show_agent": showAgent,
        "show_broker": showBroker,
        "show_provider": showProvider,
        "show_management": showManagement,
    };
}

class Form {
    Form({
        this.name,
        this.email,
        this.moveInDate,
        this.phone,
        this.message,
        this.show,
    });

    Email name;
    Email email;
    MoveInDate moveInDate;
    Phone phone;
    Email message;
    bool show;

    factory Form.fromJson(Map<String, dynamic> json) => Form(
        name: Email.fromJson(json["name"]),
        email: Email.fromJson(json["email"]),
        moveInDate: MoveInDate.fromJson(json["move_in_date"]),
        phone: Phone.fromJson(json["phone"]),
        message: Email.fromJson(json["message"]),
        show: json["show"],
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "email": email.toJson(),
        "move_in_date": moveInDate.toJson(),
        "phone": phone.toJson(),
        "message": message.toJson(),
        "show": show,
    };
}

class Email {
    Email({
        this.required,
        this.minimumCharacterCount,
    });

    bool required;
    int minimumCharacterCount;

    factory Email.fromJson(Map<String, dynamic> json) => Email(
        required: json["required"],
        minimumCharacterCount: json["minimum_character_count"],
    );

    Map<String, dynamic> toJson() => {
        "required": required,
        "minimum_character_count": minimumCharacterCount,
    };
}

class MoveInDate {
    MoveInDate({
        this.required,
        this.defaultDate,
        this.minimumDaysFromToday,
        this.maximumDaysFromToday,
    });

    bool required;
    DateTime defaultDate;
    int minimumDaysFromToday;
    int maximumDaysFromToday;

    factory MoveInDate.fromJson(Map<String, dynamic> json) => MoveInDate(
        required: json["required"],
        defaultDate: DateTime.parse(json["default_date"]),
        minimumDaysFromToday: json["minimum_days_from_today"],
        maximumDaysFromToday: json["maximum_days_from_today"],
    );

    Map<String, dynamic> toJson() => {
        "required": required,
        "default_date": defaultDate.toIso8601String(),
        "minimum_days_from_today": minimumDaysFromToday,
        "maximum_days_from_today": maximumDaysFromToday,
    };
}

class Phone {
    Phone({
        this.required,
        this.minimumCharacterCount,
        this.maximumCharacterCount,
    });

    bool required;
    int minimumCharacterCount;
    int maximumCharacterCount;

    factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        required: json["required"],
        minimumCharacterCount: json["minimum_character_count"],
        maximumCharacterCount: json["maximum_character_count"],
    );

    Map<String, dynamic> toJson() => {
        "required": required,
        "minimum_character_count": minimumCharacterCount,
        "maximum_character_count": maximumCharacterCount,
    };
}

enum ListingStatus { ACTIVE }

final listingStatusValues = EnumValues({
    "active": ListingStatus.ACTIVE
});

class Photo {
    Photo({
        this.href,
    });

    String href;

    factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

enum Product { ENHANCED, MANAGEMENT_OTHER_LISTINGS, MANAGEMENT_COMPANY_LOGO, MANAGEMENT_COMPANY_NAME, MANAGEMENT_COMPANY_WEBSITE, COMMUNITY_RENTAL, UNIT_RENTAL }

final productValues = EnumValues({
    "_COMMUNITY_RENTAL": Product.COMMUNITY_RENTAL,
    "enhanced": Product.ENHANCED,
    "management_company_logo": Product.MANAGEMENT_COMPANY_LOGO,
    "management_company_name": Product.MANAGEMENT_COMPANY_NAME,
    "management_company_website": Product.MANAGEMENT_COMPANY_WEBSITE,
    "management_other_listings": Product.MANAGEMENT_OTHER_LISTINGS,
    "_UNIT_RENTAL": Product.UNIT_RENTAL
});

enum PropType { APARTMENT, CONDO }

final propTypeValues = EnumValues({
    "apartment": PropType.APARTMENT,
    "condo": PropType.CONDO
});

enum Source { COMMUNITY, UNIT_RENTAL }

final sourceValues = EnumValues({
    "community": Source.COMMUNITY,
    "unit_rental": Source.UNIT_RENTAL
});

class VirtualTour {
    VirtualTour({
        this.count,
        this.href,
    });

    int count;
    String href;

    factory VirtualTour.fromJson(Map<String, dynamic> json) => VirtualTour(
        count: json["count"],
        href: json["href"]==null?null:json["href"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "href": href==null?null:href,
    };
}

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

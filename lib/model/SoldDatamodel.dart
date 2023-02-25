// To parse this JSON data, do
//
//     final soldData = soldDataFromJson(jsonString);

import 'dart:convert';

SoldData soldDataFromJson(String str) => SoldData.fromJson(json.decode(str));

String soldDataToJson(SoldData data) => json.encode(data.toJson());

class SoldData {
    SoldData({
        this.meta,
        this.properties,
    });

    Meta meta;
    List<Property> properties;

    factory SoldData.fromJson(Map<String, dynamic> json) => SoldData(
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
    County county;
    County neighborhood;
    String searchCityState;
    StateCodeEnum state;
    County zip;
    String srpPropertyStatus;
    County listingActivity;
    Channel propertyStatus;
    String propertyType;
    String searchBathrooms;
    String searchBedrooms;
    County searchMaxPrice;
    County searchMinPrice;
    County searchRadius;
    String searchHouseSqft;
    String searchLotSqft;
    String searchResults;
    String sortResults;
    County searchCoordinates;
    String version;

    factory TrackingParams.fromJson(Map<String, dynamic> json) => TrackingParams(
        channel: channelValues.map[json["channel"]],
        siteSection: channelValues.map[json["siteSection"]],
        city: json["city"],
        county: countyValues.map[json["county"]],
        neighborhood: countyValues.map[json["neighborhood"]],
        searchCityState: json["searchCityState"],
        state: stateCodeEnumValues.map[json["state"]],
        zip: countyValues.map[json["zip"]],
        srpPropertyStatus: json["srpPropertyStatus"],
        listingActivity: countyValues.map[json["listingActivity"]],
        propertyStatus: channelValues.map[json["propertyStatus"]],
        propertyType: json["propertyType"],
        searchBathrooms: json["searchBathrooms"],
        searchBedrooms: json["searchBedrooms"],
        searchMaxPrice: countyValues.map[json["searchMaxPrice"]],
        searchMinPrice: countyValues.map[json["searchMinPrice"]],
        searchRadius: countyValues.map[json["searchRadius"]],
        searchHouseSqft: json["searchHouseSqft"],
        searchLotSqft: json["searchLotSqft"],
        searchResults: json["searchResults"],
        sortResults: json["sortResults"],
        searchCoordinates: countyValues.map[json["searchCoordinates"]],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "channel": channelValues.reverse[channel],
        "siteSection": channelValues.reverse[siteSection],
        "city": city,
        "county": countyValues.reverse[county],
        "neighborhood": countyValues.reverse[neighborhood],
        "searchCityState": searchCityState,
        "state": stateCodeEnumValues.reverse[state],
        "zip": countyValues.reverse[zip],
        "srpPropertyStatus": srpPropertyStatus,
        "listingActivity": countyValues.reverse[listingActivity],
        "propertyStatus": channelValues.reverse[propertyStatus],
        "propertyType": propertyType,
        "searchBathrooms": searchBathrooms,
        "searchBedrooms": searchBedrooms,
        "searchMaxPrice": countyValues.reverse[searchMaxPrice],
        "searchMinPrice": countyValues.reverse[searchMinPrice],
        "searchRadius": countyValues.reverse[searchRadius],
        "searchHouseSqft": searchHouseSqft,
        "searchLotSqft": searchLotSqft,
        "searchResults": searchResults,
        "sortResults": sortResults,
        "searchCoordinates": countyValues.reverse[searchCoordinates],
        "version": version,
    };
}

enum Channel { NOT_FOR_SALE }

final channelValues = EnumValues({
    "not_for_sale": Channel.NOT_FOR_SALE
});

enum County { UNKNOWN, LIVING_ROOM, DINING_ROOM, KITCHEN, EXTERIOR, BATHROOM, BEDROOM, OTHER_UNKNOWNS, SWIMMING_POOL }

final countyValues = EnumValues({
    "bathroom": County.BATHROOM,
    "bedroom": County.BEDROOM,
    "dining_room": County.DINING_ROOM,
    "exterior": County.EXTERIOR,
    "kitchen": County.KITCHEN,
    "living_room": County.LIVING_ROOM,
    "other_unknowns": County.OTHER_UNKNOWNS,
    "swimming_pool": County.SWIMMING_POOL,
    "unknown": County.UNKNOWN
});

enum StateCodeEnum { NY }

final stateCodeEnumValues = EnumValues({
    "NY": StateCodeEnum.NY
});

class Property {
    Property({
        this.propertyId,
        // this.listingId,
         this.propType,
        // this.listDate,
        // this.lastUpdate,
        // this.yearBuilt,
        // this.beds,
        // this.bathsFull,
        // this.bathsHalf,
        // this.propStatus,
        this.address,
        // this.mls,
        // this.clientDisplayFlags,
        // this.soldHistory,
        // this.products,
        // this.office,
        // this.agents,
        // this.lotSize,
        // this.buildingSize,
        this.price,
        // this.rdcWebUrl,
        // this.rdcAppUrl,
        // this.baths,
        // this.dataSourceName,
        // this.pageNo,
        // this.rank,
        // this.listTracking,
        // this.isNewConstruction,
        // this.photoCount,
        this.photos,
        // this.priceReducedDate,
        // this.garage,
    });

    String propertyId;
    String listingId;
    PropType propType;
    DateTime listDate;
    DateTime lastUpdate;
    int yearBuilt;
    int beds;
    int bathsFull;
    int bathsHalf;
    Channel propStatus;
    Address address;
    Mls mls;
    ClientDisplayFlags clientDisplayFlags;
    List<dynamic> soldHistory;
    List<Product> products;
    //Office office;
    List<Agent> agents;
    Size lotSize;
    Size buildingSize;
    int price;
    String rdcWebUrl;
    String rdcAppUrl;
    int baths;
    DataSourceName dataSourceName;
    int pageNo;
    int rank;
    String listTracking;
    bool isNewConstruction;
    int photoCount;
    List<PhotoElement> photos;
    DateTime priceReducedDate;
    String garage;

    factory Property.fromJson(Map<String, dynamic> json) => Property(
        propertyId: json["property_id"],
        // listingId: json["listing_id"],
         propType: propTypeValues.map[json["prop_type"]],
        // listDate: DateTime.parse(json["list_date"]),
        // lastUpdate: DateTime.parse(json["last_update"]),
        // yearBuilt: json["year_built"] == null ? null : json["year_built"],
        // beds: json["beds"] == null ? null : json["beds"],
        // bathsFull: json["baths_full"] == null ? null : json["baths_full"],
        // bathsHalf: json["baths_half"] == null ? null : json["baths_half"],
        // propStatus: channelValues.map[json["prop_status"]],
        address: Address.fromJson(json["address"]),
        // mls: Mls.fromJson(json["mls"]),
        // clientDisplayFlags: ClientDisplayFlags.fromJson(json["client_display_flags"]),
        // soldHistory: List<dynamic>.from(json["sold_history"].map((x) => x)),
        // products: List<Product>.from(json["products"].map((x) => productValues.map[x])),
        // office: Office.fromJson(json["office"]),
        // agents: List<Agent>.from(json["agents"].map((x) => Agent.fromJson(x))),
        // lotSize: json["lot_size"] == null ? null : Size.fromJson(json["lot_size"]),
        // buildingSize: json["building_size"] == null ? null : Size.fromJson(json["building_size"]),
        price: json["price"],
        // rdcWebUrl: json["rdc_web_url"],
        // rdcAppUrl: json["rdc_app_url"],
        // baths: json["baths"] == null ? null : json["baths"],
        // dataSourceName: dataSourceNameValues.map[json["data_source_name"]],
        // pageNo: json["page_no"],
        // rank: json["rank"],
        // listTracking: json["list_tracking"],
        // isNewConstruction: json["is_new_construction"],
        // photoCount: json["photo_count"],
        photos: List<PhotoElement>.from(json["photos"].map((x) => PhotoElement.fromJson(x))),
        // priceReducedDate: json["price_reduced_date"] == null ? null : DateTime.parse(json["price_reduced_date"]),
        // garage: json["garage"] == null ? null : json["garage"],
    );

    Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        // "listing_id": listingId,
         "prop_type": propTypeValues.reverse[propType],
        // "list_date": listDate.toIso8601String(),
        // "last_update": lastUpdate.toIso8601String(),
        // "year_built": yearBuilt == null ? null : yearBuilt,
        // "beds": beds == null ? null : beds,
        // "baths_full": bathsFull == null ? null : bathsFull,
        // "baths_half": bathsHalf == null ? null : bathsHalf,
        // "prop_status": channelValues.reverse[propStatus],
        "address": address.toJson(),
        // "mls": mls.toJson(),
        // "client_display_flags": clientDisplayFlags.toJson(),
        // "sold_history": List<dynamic>.from(soldHistory.map((x) => x)),
        // "products": List<dynamic>.from(products.map((x) => productValues.reverse[x])),
        // "office": office.toJson(),
        // "agents": List<dynamic>.from(agents.map((x) => x.toJson())),
        // "lot_size": lotSize == null ? null : lotSize.toJson(),
        // "building_size": buildingSize == null ? null : buildingSize.toJson(),
        "price": price,
        // "rdc_web_url": rdcWebUrl,
        // "rdc_app_url": rdcAppUrl,
        // "baths": baths == null ? null : baths,
        // "data_source_name": dataSourceNameValues.reverse[dataSourceName],
        // "page_no": pageNo,
        // "rank": rank,
        // "list_tracking": listTracking,
        // "is_new_construction": isNewConstruction,
        // "photo_count": photoCount,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
        // "price_reduced_date": priceReducedDate == null ? null : priceReducedDate.toIso8601String(),
        // "garage": garage == null ? null : garage,
    };
}

class Address {
    Address({
        this.line,
        this.streetNumber,
        this.street,
        this.streetSuffix,
        this.unit,
        this.city,
        this.state,
        this.stateCode,
        this.postalCode,
        this.lat,
        this.county,
        this.neighborhoodName,
        this.neighborhoods,
        this.lon,
    });

    String line;
    String streetNumber;
    String street;
    StreetSuffix streetSuffix;
    String unit;
    String city;
    CountyEnum state;
    StateCodeEnum stateCode;
    String postalCode;
    double lat;
    CountyEnum county;
    String neighborhoodName;
    List<Neighborhood> neighborhoods;
    double lon;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        line: json["line"] == null ? null : json["line"],
        streetNumber: json["street_number"] == null ? null : json["street_number"],
        street: json["street"],
        streetSuffix: json["street_suffix"] == null ? null : streetSuffixValues.map[json["street_suffix"]],
        unit: json["unit"] == null ? null : json["unit"],
        city: json["city"],
        state: countyEnumValues.map[json["state"]],
        stateCode: stateCodeEnumValues.map[json["state_code"]],
        postalCode: json["postal_code"],
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        county: json["county"] == null ? null : countyEnumValues.map[json["county"]],
        neighborhoodName: json["neighborhood_name"] == null ? null : json["neighborhood_name"],
        neighborhoods: json["neighborhoods"] == null ? null : List<Neighborhood>.from(json["neighborhoods"].map((x) => Neighborhood.fromJson(x))),
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "line": line == null ? null : line,
        "street_number": streetNumber == null ? null : streetNumber,
        "street": street,
        "street_suffix": streetSuffix == null ? null : streetSuffixValues.reverse[streetSuffix],
        "unit": unit == null ? null : unit,
        "city": city,
        "state": countyEnumValues.reverse[state],
        "state_code": stateCodeEnumValues.reverse[stateCode],
        "postal_code": postalCode,
        "lat": lat == null ? null : lat,
        "county": county == null ? null : countyEnumValues.reverse[county],
        "neighborhood_name": neighborhoodName == null ? null : neighborhoodName,
        "neighborhoods": neighborhoods == null ? null : List<dynamic>.from(neighborhoods.map((x) => x.toJson())),
        "lon": lon == null ? null : lon,
    };
}

enum CountyEnum { KINGS, NEW_YORK, QUEENS, BRONX, RICHMOND }

final countyEnumValues = EnumValues({
    "Bronx": CountyEnum.BRONX,
    "Kings": CountyEnum.KINGS,
    "New York": CountyEnum.NEW_YORK,
    "Queens": CountyEnum.QUEENS,
    "Richmond": CountyEnum.RICHMOND
});

class Neighborhood {
    Neighborhood({
        this.name,
        this.city,
        this.stateCode,
        this.id,
        this.level,
    });

    String name;
    City city;
    StateCodeEnum stateCode;
    String id;
    Level level;

    factory Neighborhood.fromJson(Map<String, dynamic> json) => Neighborhood(
        name: json["name"],
        city: cityValues.map[json["city"]],
        stateCode: stateCodeEnumValues.map[json["state_code"]],
        id: json["id"],
        level: levelValues.map[json["level"]],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "city": cityValues.reverse[city],
        "state_code": stateCodeEnumValues.reverse[stateCode],
        "id": id,
        "level": levelValues.reverse[level],
    };
}

enum City { BROOKLYN, NEW_YORK, MANHATTAN, BRONX, STATEN_ISLAND, QUEENS }

final cityValues = EnumValues({
    "Bronx": City.BRONX,
    "Brooklyn": City.BROOKLYN,
    "Manhattan": City.MANHATTAN,
    "New York": City.NEW_YORK,
    "Queens": City.QUEENS,
    "Staten Island": City.STATEN_ISLAND
});

enum Level { NEIGHBORHOOD, MACRO_NEIGHBORHOOD, SUB_NEIGHBORHOOD }

final levelValues = EnumValues({
    "macro_neighborhood": Level.MACRO_NEIGHBORHOOD,
    "neighborhood": Level.NEIGHBORHOOD,
    "sub_neighborhood": Level.SUB_NEIGHBORHOOD
});

enum StreetSuffix { ST, AVE, PL, DR, RD, CT, SQ, LN, HWY, PKWY, PLZ }

final streetSuffixValues = EnumValues({
    "Ave": StreetSuffix.AVE,
    "Ct": StreetSuffix.CT,
    "Dr": StreetSuffix.DR,
    "Hwy": StreetSuffix.HWY,
    "Ln": StreetSuffix.LN,
    "Pkwy": StreetSuffix.PKWY,
    "Pl": StreetSuffix.PL,
    "Plz": StreetSuffix.PLZ,
    "Rd": StreetSuffix.RD,
    "Sq": StreetSuffix.SQ,
    "St": StreetSuffix.ST
});

class Agent {
    Agent({
        this.primary,
        this.advertiserId,
        this.id,
        this.photo,
        this.name,
    });

    bool primary;
    String advertiserId;
    String id;
    AgentPhoto photo;
    String name;

    factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        primary: json["primary"],
        advertiserId: json["advertiser_id"] == null ? null : json["advertiser_id"],
        id: json["id"] == null ? null : json["id"],
        photo: json["photo"] == null ? null : AgentPhoto.fromJson(json["photo"]),
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "primary": primary,
        "advertiser_id": advertiserId == null ? null : advertiserId,
        "id": id == null ? null : id,
        "photo": photo == null ? null : photo.toJson(),
        "name": name,
    };
}

class AgentPhoto {
    AgentPhoto({
        this.href,
    });

    String href;

    factory AgentPhoto.fromJson(Map<String, dynamic> json) => AgentPhoto(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class Size {
    Size({
        this.size,
        this.units,
    });

    int size;
    Units units;

    factory Size.fromJson(Map<String, dynamic> json) => Size(
        size: json["size"],
        units: unitsValues.map[json["units"]],
    );

    Map<String, dynamic> toJson() => {
        "size": size,
        "units": unitsValues.reverse[units],
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
        this.isCoBrokeEmail,
        this.hasOpenHouse,
        this.isForeclosure,
        this.isShortSale,
        this.isCoBrokePhone,
        this.isNewListing,
        this.isNewPlan,
        this.isNewConstruction,
        this.isTurbo,
        this.isOfficeStandardListing,
        this.suppressMapPin,
        this.showContactALenderInLeadForm,
        this.showVeteransUnitedInLeadForm,
        this.isShowcaseChoiceEnabled,
        this.isRecentlySold,
    });

    PresentationStatus presentationStatus;
    bool isShowcase;
    bool leadFormPhoneRequired;
    int priceChange;
    bool isCoBrokeEmail;
    bool hasOpenHouse;
    bool isForeclosure;
    bool isShortSale;
    bool isCoBrokePhone;
    bool isNewListing;
    bool isNewPlan;
    bool isNewConstruction;
    bool isTurbo;
    bool isOfficeStandardListing;
    bool suppressMapPin;
    bool showContactALenderInLeadForm;
    bool showVeteransUnitedInLeadForm;
    bool isShowcaseChoiceEnabled;
    bool isRecentlySold;

    factory ClientDisplayFlags.fromJson(Map<String, dynamic> json) => ClientDisplayFlags(
        presentationStatus: presentationStatusValues.map[json["presentation_status"]],
        isShowcase: json["is_showcase"],
        leadFormPhoneRequired: json["lead_form_phone_required"],
        priceChange: json["price_change"] == null ? null : json["price_change"],
        isCoBrokeEmail: json["is_co_broke_email"],
        hasOpenHouse: json["has_open_house"],
        isForeclosure: json["is_foreclosure"],
        isShortSale: json["is_short_sale"],
        isCoBrokePhone: json["is_co_broke_phone"],
        isNewListing: json["is_new_listing"],
        isNewPlan: json["is_new_plan"],
        isNewConstruction: json["is_new_construction"],
        isTurbo: json["is_turbo"],
        isOfficeStandardListing: json["is_office_standard_listing"],
        suppressMapPin: json["suppress_map_pin"],
        showContactALenderInLeadForm: json["show_contact_a_lender_in_lead_form"],
        showVeteransUnitedInLeadForm: json["show_veterans_united_in_lead_form"],
        isShowcaseChoiceEnabled: json["is_showcase_choice_enabled"],
        isRecentlySold: json["is_recently_sold"],
    );

    Map<String, dynamic> toJson() => {
        "presentation_status": presentationStatusValues.reverse[presentationStatus],
        "is_showcase": isShowcase,
        "lead_form_phone_required": leadFormPhoneRequired,
        "price_change": priceChange == null ? null : priceChange,
        "is_co_broke_email": isCoBrokeEmail,
        "has_open_house": hasOpenHouse,
        "is_foreclosure": isForeclosure,
        "is_short_sale": isShortSale,
        "is_co_broke_phone": isCoBrokePhone,
        "is_new_listing": isNewListing,
        "is_new_plan": isNewPlan,
        "is_new_construction": isNewConstruction,
        "is_turbo": isTurbo,
        "is_office_standard_listing": isOfficeStandardListing,
        "suppress_map_pin": suppressMapPin,
        "show_contact_a_lender_in_lead_form": showContactALenderInLeadForm,
        "show_veterans_united_in_lead_form": showVeteransUnitedInLeadForm,
        "is_showcase_choice_enabled": isShowcaseChoiceEnabled,
        "is_recently_sold": isRecentlySold,
    };
}

enum PresentationStatus { RECENTLY_SOLD }

final presentationStatusValues = EnumValues({
    "recently_sold": PresentationStatus.RECENTLY_SOLD
});

enum DataSourceName { MLS }

final dataSourceNameValues = EnumValues({
    "mls": DataSourceName.MLS
});

class Mls {
    Mls({
        this.abbreviation,
        this.id,
    });

    Abbreviation abbreviation;
    String id;

    factory Mls.fromJson(Map<String, dynamic> json) => Mls(
        abbreviation: abbreviationValues.map[json["abbreviation"]],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "abbreviation": abbreviationValues.reverse[abbreviation],
        "id": id,
    };
}

enum Abbreviation { STNY, RBNY, LINY, SINY, BONY }

final abbreviationValues = EnumValues({
    "BONY": Abbreviation.BONY,
    "LINY": Abbreviation.LINY,
    "RBNY": Abbreviation.RBNY,
    "SINY": Abbreviation.SINY,
    "STNY": Abbreviation.STNY
});

class Office {
    Office({
        this.advertiserId,
        this.name,
        this.email,
        this.href,
        this.photo,
        this.id,
        this.phones,
    });

    int advertiserId;
    String name;
    String email;
    String href;
    AgentPhoto photo;
    String id;
    List<Phone> phones;

    factory Office.fromJson(Map<String, dynamic> json) => Office(
        advertiserId: json["advertiser_id"] == null ? null : json["advertiser_id"],
        name: json["name"],
        email: json["email"] == null ? null : json["email"],
        href: json["href"] == null ? null : json["href"],
        photo: json["photo"] == null ? null : AgentPhoto.fromJson(json["photo"]),
        id: json["id"],
        phones: List<Phone>.from(json["phones"].map((x) => Phone.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "advertiser_id": advertiserId == null ? null : advertiserId,
        "name": name,
        "email": email == null ? null : email,
        "href": href == null ? null : href,
        "photo": photo == null ? null : photo.toJson(),
        "id": id,
        "phones": List<dynamic>.from(phones.map((x) => x.toJson())),
    };
}

class Phone {
    Phone({
        this.number,
        this.type,
        this.primary,
    });

    String number;
    Type type;
    bool primary;

    factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        number: json["number"] == null ? null : json["number"],
        type: typeValues.map[json["type"]],
        primary: json["primary"] == null ? null : json["primary"],
    );

    Map<String, dynamic> toJson() => {
        "number": number == null ? null : number,
        "type": typeValues.reverse[type],
        "primary": primary == null ? null : primary,
    };
}

enum Type { OFFICE, FAX, BUSINESS_PHONE, EMPTY, MOBILE, TOLL_FREE, BUSINESS_MOBILE, HOME }

final typeValues = EnumValues({
    "business_mobile": Type.BUSINESS_MOBILE,
    "business_phone": Type.BUSINESS_PHONE,
    "": Type.EMPTY,
    "fax": Type.FAX,
    "home": Type.HOME,
    "mobile": Type.MOBILE,
    "office": Type.OFFICE,
    "toll_free": Type.TOLL_FREE
});

class PhotoElement {
    PhotoElement({
        this.href,
        this.description,
        this.type,
        this.title,
        this.tags,
    });

    String href;
    dynamic description;
    dynamic type;
    dynamic title;
    List<Tag> tags;

    factory PhotoElement.fromJson(Map<String, dynamic> json) => PhotoElement(
        href: json["href"],
        description: json["description"],
        type: json["type"],
        title: json["title"],
        tags: json["tags"] == null ? null : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "href": href,
        "description": description,
        "type": type,
        "title": title,
        "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x.toJson())),
    };
}

class Tag {
    Tag({
        this.label,
        this.probability,
    });

    County label;
    double probability;

    factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        label: countyValues.map[json["label"]],
        probability: json["probability"] == null ? null : json["probability"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "label": countyValues.reverse[label],
        "probability": probability == null ? null : probability,
    };
}

enum Product { CORE_AGENT, CO_BROKE, CORE_BROKER, SUPPRESS_FORECLOSURE, LISTING_OWNER_BRAND_BROKER }

final productValues = EnumValues({
    "core.agent": Product.CORE_AGENT,
    "core.broker": Product.CORE_BROKER,
    "co_broke": Product.CO_BROKE,
    "listing_owner_brand.broker": Product.LISTING_OWNER_BRAND_BROKER,
    "suppress_foreclosure": Product.SUPPRESS_FORECLOSURE
});

enum PropType { SINGLE_FAMILY, CONDO, MULTI_FAMILY }

final propTypeValues = EnumValues({
    "condo": PropType.CONDO,
    "multi_family": PropType.MULTI_FAMILY,
    "single_family": PropType.SINGLE_FAMILY
});

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

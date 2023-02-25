// To parse this JSON data, do
//
//     final soldDataDetails = soldDataDetailsFromJson(jsonString);

import 'dart:convert';

SoldDataDetails soldDataDetailsFromJson(String str) => SoldDataDetails.fromJson(json.decode(str));

String soldDataDetailsToJson(SoldDataDetails data) => json.encode(data.toJson());

class SoldDataDetails {
    SoldDataDetails({
        this.meta,
        this.properties,
    });

    Meta meta;
    List<Property> properties;

    factory SoldDataDetails.fromJson(Map<String, dynamic> json) => SoldDataDetails(
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
        this.tracking,
        this.returnedRows,
        this.matchingRows,
        this.trackingParams,
    });

    String build;
    String schema;
    String tracking;
    int returnedRows;
    int matchingRows;
    TrackingParams trackingParams;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        build: json["build"],
        schema: json["schema"],
        tracking: json["tracking"],
        returnedRows: json["returned_rows"],
        matchingRows: json["matching_rows"],
        trackingParams: TrackingParams.fromJson(json["tracking_params"]),
    );

    Map<String, dynamic> toJson() => {
        "build": build,
        "schema": schema,
        "tracking": tracking,
        "returned_rows": returnedRows,
        "matching_rows": matchingRows,
        "tracking_params": trackingParams.toJson(),
    };
}

class TrackingParams {
    TrackingParams({
        this.ldpPropertyStatus,
        this.pageType,
        this.leadDelivery,
        this.leadEnhancements,
        this.listingActivity,
        this.productType,
        this.propertyStatus,
        this.listingId,
        this.rentalDataSource,
        this.advertiserIdAgent,
        this.advertiserIdBroker,
        this.advertiserIdOffice,
        this.communityId,
        this.mprId,
        this.listingMls,
        this.planId,
        this.subId,
        this.city,
        this.neighborhood,
        this.state,
        this.zip,
        this.listingBaths,
        this.listingBeds,
        this.listingSqFt,
        this.listingEnhancements,
        this.listingPrice,
        this.photoCount,
        this.propertyType,
        this.version,
    });

    String ldpPropertyStatus;
    String pageType;
    String leadDelivery;
    String leadEnhancements;
    String listingActivity;
    String productType;
    String propertyStatus;
    String listingId;
    String rentalDataSource;
    String advertiserIdAgent;
    String advertiserIdBroker;
    String advertiserIdOffice;
    String communityId;
    String mprId;
    String listingMls;
    String planId;
    String subId;
    String city;
    String neighborhood;
    String state;
    String zip;
    String listingBaths;
    String listingBeds;
    String listingSqFt;
    String listingEnhancements;
    String listingPrice;
    String photoCount;
    String propertyType;
    String version;

    factory TrackingParams.fromJson(Map<String, dynamic> json) => TrackingParams(
        ldpPropertyStatus: json["ldpPropertyStatus"],
        pageType: json["pageType"],
        leadDelivery: json["leadDelivery"],
        leadEnhancements: json["leadEnhancements"],
        listingActivity: json["listingActivity"],
        productType: json["productType"],
        propertyStatus: json["propertyStatus"],
        listingId: json["listingId"],
        rentalDataSource: json["rentalDataSource"],
        advertiserIdAgent: json["advertiserIdAgent"],
        advertiserIdBroker: json["advertiserIdBroker"],
        advertiserIdOffice: json["advertiserIdOffice"],
        communityId: json["communityId"],
        mprId: json["mprId"],
        listingMls: json["listingMls"],
        planId: json["planId"],
        subId: json["subId"],
        city: json["city"],
        neighborhood: json["neighborhood"],
        state: json["state"],
        zip: json["zip"],
        listingBaths: json["listingBaths"],
        listingBeds: json["listingBeds"],
        listingSqFt: json["listingSqFt"],
        listingEnhancements: json["listingEnhancements"],
        listingPrice: json["listingPrice"],
        photoCount: json["photoCount"],
        propertyType: json["propertyType"],
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "ldpPropertyStatus": ldpPropertyStatus,
        "pageType": pageType,
        "leadDelivery": leadDelivery,
        "leadEnhancements": leadEnhancements,
        "listingActivity": listingActivity,
        "productType": productType,
        "propertyStatus": propertyStatus,
        "listingId": listingId,
        "rentalDataSource": rentalDataSource,
        "advertiserIdAgent": advertiserIdAgent,
        "advertiserIdBroker": advertiserIdBroker,
        "advertiserIdOffice": advertiserIdOffice,
        "communityId": communityId,
        "mprId": mprId,
        "listingMls": listingMls,
        "planId": planId,
        "subId": subId,
        "city": city,
        "neighborhood": neighborhood,
        "state": state,
        "zip": zip,
        "listingBaths": listingBaths,
        "listingBeds": listingBeds,
        "listingSqFt": listingSqFt,
        "listingEnhancements": listingEnhancements,
        "listingPrice": listingPrice,
        "photoCount": photoCount,
        "propertyType": propertyType,
        "version": version,
    };
}

class Property {
    Property({
        this.propertyId,
        this.propStatus,
        this.listingId,
        this.propType,
        this.listDate,
        this.lastUpdate,
        this.buyerAgentForFar,
        this.broker,
        this.yearBuilt,
        this.listingStatus,
        this.beds,
        this.description,
        this.bathsFull,
        this.stories,
        this.schools,
        this.heating,
        this.cooling,
        this.featureTags,
        this.address,
        this.features,
        this.mls,
        this.clientDisplayFlags,
        this.taxHistory,
       // this.soldHistory,
        this.propertyHistory,
        this.publicRecords,
        this.products,
        this.office,
        this.agents,
        this.lotSize,
        this.buildingSize,
        this.price,
        this.rdcWebUrl,
        this.rdcAppUrl,
        this.homevalueWebUrl,
        this.baths,
        this.photoCount,
        this.raw,
        this.photoAttribution,
        this.buyerOffice,
        this.dataSourceName,
        this.detailTracking,
        this.photos,
    });

    String propertyId;
    String propStatus;
    String listingId;
    String propType;
    DateTime listDate;
    DateTime lastUpdate;
    BuyerAgentForFar buyerAgentForFar;
    Broker broker;
    int yearBuilt;
    String listingStatus;
    int beds;
    String description;
    int bathsFull;
    int stories;
    List<School> schools;
    dynamic heating;
    dynamic cooling;
    List<String> featureTags;
    PropertyAddress address;
    List<Feature> features;
    Mls mls;
    ClientDisplayFlags clientDisplayFlags;
    List<TaxHistory> taxHistory;
    //List<SoldHistory> soldHistory;
    List<PropertyHistory> propertyHistory;
    List<PublicRecord> publicRecords;
    List<String> products;
    Office office;
    List<Agent> agents;
    Size lotSize;
    Size buildingSize;
    int price;
    String rdcWebUrl;
    String rdcAppUrl;
    String homevalueWebUrl;
    int baths;
    int photoCount;
    Raw raw;
    List<String> photoAttribution;
    Office buyerOffice;
    String dataSourceName;
    String detailTracking;
    List<Photo> photos;

    factory Property.fromJson(Map<String, dynamic> json) => Property(
        propertyId: json["property_id"],
        propStatus: json["prop_status"],
        listingId: json["listing_id"],
        propType: json["prop_type"],
        listDate: DateTime.parse(json["list_date"]),
        lastUpdate: DateTime.parse(json["last_update"]),
        buyerAgentForFar: BuyerAgentForFar.fromJson(json["buyer_agent_for_far"]),
        broker: Broker.fromJson(json["broker"]),
        yearBuilt: json["year_built"],
        listingStatus: json["listing_status"],
        beds: json["beds"],
        description: json["description"],
        bathsFull: json["baths_full"],
        stories: json["stories"],
        schools: List<School>.from(json["schools"].map((x) => School.fromJson(x))),
        heating: json["heating"],
        cooling: json["cooling"],
        featureTags: List<String>.from(json["feature_tags"].map((x) => x)),
        address: PropertyAddress.fromJson(json["address"]),
        features: List<Feature>.from(json["features"].map((x) => Feature.fromJson(x))),
        mls: Mls.fromJson(json["mls"]),
        clientDisplayFlags: ClientDisplayFlags.fromJson(json["client_display_flags"]),
        taxHistory: List<TaxHistory>.from(json["tax_history"].map((x) => TaxHistory.fromJson(x))),
       // soldHistory: List<SoldHistory>.from(json["sold_history"].map((x) => SoldHistory.fromJson(x))),
        propertyHistory: List<PropertyHistory>.from(json["property_history"].map((x) => PropertyHistory.fromJson(x))),
        publicRecords: List<PublicRecord>.from(json["public_records"].map((x) => PublicRecord.fromJson(x))),
        products: List<String>.from(json["products"].map((x) => x)),
        office: Office.fromJson(json["office"]),
        agents: List<Agent>.from(json["agents"].map((x) => Agent.fromJson(x))),
        lotSize: Size.fromJson(json["lot_size"]),
        buildingSize: Size.fromJson(json["building_size"]),
        price: json["price"],
        rdcWebUrl: json["rdc_web_url"],
        rdcAppUrl: json["rdc_app_url"],
        homevalueWebUrl: json["homevalue_web_url"],
        baths: json["baths"],
        photoCount: json["photo_count"],
        raw: Raw.fromJson(json["raw"]),
        photoAttribution: List<String>.from(json["photo_attribution"].map((x) => x)),
        buyerOffice: Office.fromJson(json["buyer_office"]),
        dataSourceName: json["data_source_name"],
        detailTracking: json["detail_tracking"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        "prop_status": propStatus,
        "listing_id": listingId,
        "prop_type": propType,
        "list_date": listDate.toIso8601String(),
        "last_update": lastUpdate.toIso8601String(),
        "buyer_agent_for_far": buyerAgentForFar.toJson(),
        "broker": broker.toJson(),
        "year_built": yearBuilt,
        "listing_status": listingStatus,
        "beds": beds,
        "description": description,
        "baths_full": bathsFull,
        "stories": stories,
        "schools": List<dynamic>.from(schools.map((x) => x.toJson())),
        "heating": heating,
        "cooling": cooling,
        "feature_tags": List<dynamic>.from(featureTags.map((x) => x)),
        "address": address.toJson(),
        "features": List<dynamic>.from(features.map((x) => x.toJson())),
        "mls": mls.toJson(),
        "client_display_flags": clientDisplayFlags.toJson(),
        "tax_history": List<dynamic>.from(taxHistory.map((x) => x.toJson())),
       // "sold_history": List<dynamic>.from(soldHistory.map((x) => x.toJson())),
        "property_history": List<dynamic>.from(propertyHistory.map((x) => x.toJson())),
        "public_records": List<dynamic>.from(publicRecords.map((x) => x.toJson())),
        "products": List<dynamic>.from(products.map((x) => x)),
        "office": office.toJson(),
        "agents": List<dynamic>.from(agents.map((x) => x.toJson())),
        "lot_size": lotSize.toJson(),
        "building_size": buildingSize.toJson(),
        "price": price,
        "rdc_web_url": rdcWebUrl,
        "rdc_app_url": rdcAppUrl,
        "homevalue_web_url": homevalueWebUrl,
        "baths": baths,
        "photo_count": photoCount,
        "raw": raw.toJson(),
        "photo_attribution": List<dynamic>.from(photoAttribution.map((x) => x)),
        "buyer_office": buyerOffice.toJson(),
        "data_source_name": dataSourceName,
        "detail_tracking": detailTracking,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
    };
}

class PropertyAddress {
    PropertyAddress({
        this.city,
        this.line,
        this.county,
        this.countyNeededForUniq,
        this.state,
        this.postalCode,
        this.stateCode,
        this.addressValidationCode,
        this.timeZone,
        this.lat,
        this.lon,
        this.neighborhoodName,
        this.neighborhoods,
    });

    String city;
    String line;
    String county;
    bool countyNeededForUniq;
    String state;
    String postalCode;
    String stateCode;
    String addressValidationCode;
    String timeZone;
    double lat;
    double lon;
    String neighborhoodName;
    List<Neighborhood> neighborhoods;

    factory PropertyAddress.fromJson(Map<String, dynamic> json) => PropertyAddress(
        city: json["city"],
        line: json["line"],
        county: json["county"],
        countyNeededForUniq: json["county_needed_for_uniq"],
        state: json["state"],
        postalCode: json["postal_code"],
        stateCode: json["state_code"],
        addressValidationCode: json["address_validation_code"],
        timeZone: json["time_zone"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        neighborhoodName: json["neighborhood_name"],
        neighborhoods: List<Neighborhood>.from(json["neighborhoods"].map((x) => Neighborhood.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "line": line,
        "county": county,
        "county_needed_for_uniq": countyNeededForUniq,
        "state": state,
        "postal_code": postalCode,
        "state_code": stateCode,
        "address_validation_code": addressValidationCode,
        "time_zone": timeZone,
        "lat": lat,
        "lon": lon,
        "neighborhood_name": neighborhoodName,
        "neighborhoods": List<dynamic>.from(neighborhoods.map((x) => x.toJson())),
    };
}

class Neighborhood {
    Neighborhood({
        this.name,
        this.city,
        this.stateCode,
        this.level,
        this.id,
    });

    String name;
    String city;
    String stateCode;
    String level;
    String id;

    factory Neighborhood.fromJson(Map<String, dynamic> json) => Neighborhood(
        name: json["name"],
        city: json["city"],
        stateCode: json["state_code"],
        level: json["level"],
        id: json["id"] == null ? null : json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "city": city,
        "state_code": stateCode,
        "level": level,
        "id": id == null ? null : id,
    };
}

class Agent {
    Agent({
        this.profileName,
        this.name,
        this.advertiserId,
        this.href,
        this.photo,
        this.nrdsId,
        this.nrdsVerifiedId,
        this.nrdsVerificationMethod,
        this.officeName,
        this.email,
        this.slogan,
        this.stateLicense,
        this.mlsMemberships,
        this.id,
        this.primary,
    });

    String profileName;
    String name;
    String advertiserId;
    String href;
    Photo photo;
    String nrdsId;
    String nrdsVerifiedId;
    String nrdsVerificationMethod;
    String officeName;
    String email;
    String slogan;
    dynamic stateLicense;
    AgentMlsMembership mlsMemberships;
    String id;
    bool primary;

    factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        profileName: json["profile_name"],
        name: json["name"],
        advertiserId: json["advertiser_id"],
        href: json["href"],
        photo: Photo.fromJson(json["photo"]),
        nrdsId: json["nrds_id"],
        nrdsVerifiedId: json["nrds_verified_id"],
        nrdsVerificationMethod: json["nrds_verification_method"],
        officeName: json["office_name"],
        email: json["email"],
        slogan: json["slogan"],
        stateLicense: json["state_license"],
        mlsMemberships: AgentMlsMembership.fromJson(json["mls_memberships"]),
        id: json["id"],
        primary: json["primary"],
    );

    Map<String, dynamic> toJson() => {
        "profile_name": profileName,
        "name": name,
        "advertiser_id": advertiserId,
        "href": href,
        "photo": photo.toJson(),
        "nrds_id": nrdsId,
        "nrds_verified_id": nrdsVerifiedId,
        "nrds_verification_method": nrdsVerificationMethod,
        "office_name": officeName,
        "email": email,
        "slogan": slogan,
        "state_license": stateLicense,
        "mls_memberships": mlsMemberships.toJson(),
        "id": id,
        "primary": primary,
    };
}

class AgentMlsMembership {
    AgentMlsMembership({
        this.member,
    });

    Mls member;

    factory AgentMlsMembership.fromJson(Map<String, dynamic> json) => AgentMlsMembership(
        member: Mls.fromJson(json["member"]),
    );

    Map<String, dynamic> toJson() => {
        "member": member.toJson(),
    };
}

class Mls {
    Mls({
        this.agentSystemId,
        this.name,
        this.officeSystemId,
        this.id,
        this.abbreviation,
        this.disclaimer,
    });

    String agentSystemId;
    String name;
    String officeSystemId;
    String id;
    String abbreviation;
    Disclaimer disclaimer;

    factory Mls.fromJson(Map<String, dynamic> json) => Mls(
        agentSystemId: json["agent_system_id"] == null ? null : json["agent_system_id"],
        name: json["name"],
        officeSystemId: json["office_system_id"] == null ? null : json["office_system_id"],
        id: json["id"],
        abbreviation: json["abbreviation"],
        disclaimer: json["disclaimer"] == null ? null : Disclaimer.fromJson(json["disclaimer"]),
    );

    Map<String, dynamic> toJson() => {
        "agent_system_id": agentSystemId == null ? null : agentSystemId,
        "name": name,
        "office_system_id": officeSystemId == null ? null : officeSystemId,
        "id": id,
        "abbreviation": abbreviation,
        "disclaimer": disclaimer == null ? null : disclaimer.toJson(),
    };
}

class Disclaimer {
    Disclaimer({
        this.photo,
        this.href,
        this.text,
    });

    dynamic photo;
    dynamic href;
    String text;

    factory Disclaimer.fromJson(Map<String, dynamic> json) => Disclaimer(
        photo: json["photo"],
        href: json["href"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "photo": photo,
        "href": href,
        "text": text,
    };
}

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

class Broker {
    Broker({
        this.advertiserId,
        this.name,
        this.phone1,
    });

    int advertiserId;
    String name;
    Phone1 phone1;

    factory Broker.fromJson(Map<String, dynamic> json) => Broker(
        advertiserId: json["advertiser_id"],
        name: json["name"],
        phone1: Phone1.fromJson(json["phone1"]),
    );

    Map<String, dynamic> toJson() => {
        "advertiser_id": advertiserId,
        "name": name,
        "phone1": phone1.toJson(),
    };
}

class Phone1 {
    Phone1({
        this.number,
        this.type,
    });

    String number;
    String type;

    factory Phone1.fromJson(Map<String, dynamic> json) => Phone1(
        number: json["number"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "type": type,
    };
}

class Size {
    Size({
        this.size,
        this.units,
    });

    int size;
    String units;

    factory Size.fromJson(Map<String, dynamic> json) => Size(
        size: json["size"],
        units: json["units"],
    );

    Map<String, dynamic> toJson() => {
        "size": size,
        "units": units,
    };
}

class BuyerAgentForFar {
    BuyerAgentForFar({
        this.advertiserId,
        this.name,
        this.nrdsVerifiedId,
        this.stateLicense,
        this.mlsMembership,
    });

    int advertiserId;
    String name;
    dynamic nrdsVerifiedId;
    dynamic stateLicense;
    AgentMlsMembership mlsMembership;

    factory BuyerAgentForFar.fromJson(Map<String, dynamic> json) => BuyerAgentForFar(
        advertiserId: json["advertiser_id"],
        name: json["name"],
        nrdsVerifiedId: json["nrds_verified_id"],
        stateLicense: json["state_license"],
        mlsMembership: AgentMlsMembership.fromJson(json["mls_membership"]),
    );

    Map<String, dynamic> toJson() => {
        "advertiser_id": advertiserId,
        "name": name,
        "nrds_verified_id": nrdsVerifiedId,
        "state_license": stateLicense,
        "mls_membership": mlsMembership.toJson(),
    };
}

class Office {
    Office({
        this.name,
        this.href,
        this.photo,
        this.address,
        this.slogan,
        this.email,
        this.phone1,
        this.mlsMemberships,
        this.id,
        this.phones,
        this.advertiserId,
        this.mlsMembership,
    });

    String name;
    String href;
    Photo photo;
    BuyerOfficeAddress address;
    String slogan;
    String email;
    Phone phone1;
    BuyerOfficeMlsMembership mlsMemberships;
    String id;
    List<Phone> phones;
    int advertiserId;
    BuyerOfficeMlsMembership mlsMembership;

    factory Office.fromJson(Map<String, dynamic> json) => Office(
        name: json["name"],
        href: json["href"] == null ? null : json["href"],
        photo: json["photo"] == null ? null : Photo.fromJson(json["photo"]),
        address: BuyerOfficeAddress.fromJson(json["address"]),
        slogan: json["slogan"] == null ? null : json["slogan"],
        email: json["email"] == null ? null : json["email"],
        phone1: json["phone1"] == null ? null : Phone.fromJson(json["phone1"]),
        mlsMemberships: json["mls_memberships"] == null ? null : BuyerOfficeMlsMembership.fromJson(json["mls_memberships"]),
        id: json["id"],
        phones: List<Phone>.from(json["phones"].map((x) => Phone.fromJson(x))),
        advertiserId: json["advertiser_id"] == null ? null : json["advertiser_id"],
        mlsMembership: json["mls_membership"] == null ? null : BuyerOfficeMlsMembership.fromJson(json["mls_membership"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "href": href == null ? null : href,
        "photo": photo == null ? null : photo.toJson(),
        "address": address.toJson(),
        "slogan": slogan == null ? null : slogan,
        "email": email == null ? null : email,
        "phone1": phone1 == null ? null : phone1.toJson(),
        "mls_memberships": mlsMemberships == null ? null : mlsMemberships.toJson(),
        "id": id,
        "phones": List<dynamic>.from(phones.map((x) => x.toJson())),
        "advertiser_id": advertiserId == null ? null : advertiserId,
        "mls_membership": mlsMembership == null ? null : mlsMembership.toJson(),
    };
}

class BuyerOfficeAddress {
    BuyerOfficeAddress({
        this.city,
        this.stateCode,
    });

    String city;
    String stateCode;

    factory BuyerOfficeAddress.fromJson(Map<String, dynamic> json) => BuyerOfficeAddress(
        city: json["city"],
        stateCode: json["state_code"],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "state_code": stateCode,
    };
}

class BuyerOfficeMlsMembership {
    BuyerOfficeMlsMembership({
        this.member,
    });

    Member member;

    factory BuyerOfficeMlsMembership.fromJson(Map<String, dynamic> json) => BuyerOfficeMlsMembership(
        member: Member.fromJson(json["member"]),
    );

    Map<String, dynamic> toJson() => {
        "member": member.toJson(),
    };
}

class Member {
    Member({
        this.officeSystemId,
    });

    String officeSystemId;

    factory Member.fromJson(Map<String, dynamic> json) => Member(
        officeSystemId: json["office_system_id"],
    );

    Map<String, dynamic> toJson() => {
        "office_system_id": officeSystemId,
    };
}

class Phone {
    Phone({
        this.ext,
        this.number,
        this.primary,
        this.trackable,
        this.type,
    });

    String ext;
    String number;
    bool primary;
    dynamic trackable;
    String type;

    factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        ext: json["ext"] == null ? null : json["ext"],
        number: json["number"],
        primary: json["primary"] == null ? null : json["primary"],
        trackable: json["trackable"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "ext": ext == null ? null : ext,
        "number": number,
        "primary": primary == null ? null : primary,
        "trackable": trackable,
        "type": type,
    };
}

class ClientDisplayFlags {
    ClientDisplayFlags({
        this.presentationStatus,
        this.isRecentlySold,
    });

    String presentationStatus;
    bool isRecentlySold;

    factory ClientDisplayFlags.fromJson(Map<String, dynamic> json) => ClientDisplayFlags(
        presentationStatus: json["presentation_status"],
        isRecentlySold: json["is_recently_sold"],
    );

    Map<String, dynamic> toJson() => {
        "presentation_status": presentationStatus,
        "is_recently_sold": isRecentlySold,
    };
}

class Feature {
    Feature({
        this.category,
        this.parentCategory,
        this.text,
    });

    String category;
    String parentCategory;
    List<String> text;

    factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        category: json["category"],
        parentCategory: json["parent_category"],
        text: List<String>.from(json["text"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "category": category,
        "parent_category": parentCategory,
        "text": List<dynamic>.from(text.map((x) => x)),
    };
}

class PropertyHistory {
    PropertyHistory({
        this.eventName,
        this.date,
        this.price,
        this.priceChanged,
        this.sqft,
        this.datasourceName,
        this.source,
    });

    String eventName;
    DateTime date;
    int price;
    int priceChanged;
    int sqft;
    String datasourceName;
    String source;

    factory PropertyHistory.fromJson(Map<String, dynamic> json) => PropertyHistory(
        eventName: json["event_name"],
        date: DateTime.parse(json["date"]),
        price: json["price"],
        priceChanged: json["price_changed"],
        sqft: json["sqft"],
        datasourceName: json["datasource_name"],
        source: json["source"],
    );

    Map<String, dynamic> toJson() => {
        "event_name": eventName,
        "date": date.toIso8601String(),
        "price": price,
        "price_changed": priceChanged,
        "sqft": sqft,
        "datasource_name": datasourceName,
        "source": source,
    };
}

class PublicRecord {
    PublicRecord({
        this.clId,
        this.dateUpdated,
        this.propType,
        this.beds,
        this.baths,
        this.distinctBaths,
        this.sqft,
        this.lotSize,
        this.style,
        this.stories,
        this.rooms,
        this.units,
        this.yearBuilt,
        this.yearRenovated,
        this.garage,
        this.garageSpaces,
        this.heating,
        this.cooling,
        this.fireplace,
        this.construction,
        this.exterior1,
        this.exterior2,
        this.roofing,
        this.pool,
        this.view,
    });

    String clId;
    String dateUpdated;
    String propType;
    dynamic beds;
    dynamic baths;
    dynamic distinctBaths;
    int sqft;
    int lotSize;
    dynamic style;
    int stories;
    dynamic rooms;
    int units;
    int yearBuilt;
    int yearRenovated;
    dynamic garage;
    dynamic garageSpaces;
    dynamic heating;
    dynamic cooling;
    dynamic fireplace;
    dynamic construction;
    dynamic exterior1;
    dynamic exterior2;
    dynamic roofing;
    dynamic pool;
    dynamic view;

    factory PublicRecord.fromJson(Map<String, dynamic> json) => PublicRecord(
        clId: json["cl_id"],
        dateUpdated: json["date_updated"],
        propType: json["prop_type"],
        beds: json["beds"],
        baths: json["baths"],
        distinctBaths: json["distinct_baths"],
        sqft: json["sqft"],
        lotSize: json["lot_size"],
        style: json["style"],
        stories: json["stories"],
        rooms: json["rooms"],
        units: json["units"],
        yearBuilt: json["year_built"],
        yearRenovated: json["year_renovated"],
        garage: json["garage"],
        garageSpaces: json["garage_spaces"],
        heating: json["heating"],
        cooling: json["cooling"],
        fireplace: json["fireplace"],
        construction: json["construction"],
        exterior1: json["exterior1"],
        exterior2: json["exterior2"],
        roofing: json["roofing"],
        pool: json["pool"],
        view: json["view"],
    );

    Map<String, dynamic> toJson() => {
        "cl_id": clId,
        "date_updated": dateUpdated,
        "prop_type": propType,
        "beds": beds,
        "baths": baths,
        "distinct_baths": distinctBaths,
        "sqft": sqft,
        "lot_size": lotSize,
        "style": style,
        "stories": stories,
        "rooms": rooms,
        "units": units,
        "year_built": yearBuilt,
        "year_renovated": yearRenovated,
        "garage": garage,
        "garage_spaces": garageSpaces,
        "heating": heating,
        "cooling": cooling,
        "fireplace": fireplace,
        "construction": construction,
        "exterior1": exterior1,
        "exterior2": exterior2,
        "roofing": roofing,
        "pool": pool,
        "view": view,
    };
}

class Raw {
    Raw({
        this.status,
        this.style,
    });

    String status;
    List<String> style;

    factory Raw.fromJson(Map<String, dynamic> json) => Raw(
        status: json["status"],
        style: List<String>.from(json["style"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "style": List<dynamic>.from(style.map((x) => x)),
    };
}

class School {
    School({
        this.ncesId,
        this.id,
        this.greatschoolsId,
        this.name,
        this.educationLevels,
        this.fundingType,
        this.lat,
        this.lon,
        this.studentCount,
        this.studentTeacherRatio,
        this.location,
        this.phone,
        this.distanceInMiles,
        this.grades,
        this.relevance,
        this.ratings,
    });

    String ncesId;
    String id;
    String greatschoolsId;
    String name;
    List<EducationLevel> educationLevels;
    String fundingType;
    double lat;
    double lon;
    int studentCount;
    double studentTeacherRatio;
    Location location;
    String phone;
    double distanceInMiles;
    Grades grades;
    String relevance;
    Ratings ratings;

    factory School.fromJson(Map<String, dynamic> json) => School(
        ncesId: json["nces_id"],
        id: json["id"],
        greatschoolsId: json["greatschools_id"],
        name: json["name"],
        educationLevels: List<EducationLevel>.from(json["education_levels"].map((x) => educationLevelValues.map[x])),
        fundingType: json["funding_type"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        studentCount: json["student_count"],
        studentTeacherRatio: json["student_teacher_ratio"] == null ? null : json["student_teacher_ratio"].toDouble(),
        location: Location.fromJson(json["location"]),
        phone: json["phone"],
        distanceInMiles: json["distance_in_miles"].toDouble(),
        grades: Grades.fromJson(json["grades"]),
        relevance: json["relevance"],
        ratings: Ratings.fromJson(json["ratings"]),
    );

    Map<String, dynamic> toJson() => {
        "nces_id": ncesId,
        "id": id,
        "greatschools_id": greatschoolsId,
        "name": name,
        "education_levels": List<dynamic>.from(educationLevels.map((x) => educationLevelValues.reverse[x])),
        "funding_type": fundingType,
        "lat": lat,
        "lon": lon,
        "student_count": studentCount,
        "student_teacher_ratio": studentTeacherRatio == null ? null : studentTeacherRatio,
        "location": location.toJson(),
        "phone": phone,
        "distance_in_miles": distanceInMiles,
        "grades": grades.toJson(),
        "relevance": relevance,
        "ratings": ratings.toJson(),
    };
}

enum EducationLevel { ELEMENTARY, MIDDLE, HIGH }

final educationLevelValues = EnumValues({
    "elementary": EducationLevel.ELEMENTARY,
    "high": EducationLevel.HIGH,
    "middle": EducationLevel.MIDDLE
});

class Grades {
    Grades({
        this.range,
    });

    Range range;

    factory Grades.fromJson(Map<String, dynamic> json) => Grades(
        range: Range.fromJson(json["range"]),
    );

    Map<String, dynamic> toJson() => {
        "range": range.toJson(),
    };
}

class Range {
    Range({
        this.low,
        this.high,
    });

    String low;
    String high;

    factory Range.fromJson(Map<String, dynamic> json) => Range(
        low: json["low"],
        high: json["high"],
    );

    Map<String, dynamic> toJson() => {
        "low": low,
        "high": high,
    };
}

class Location {
    Location({
        this.citySlugId,
        this.postalCode,
        this.state,
        this.county,
        this.city,
        this.street,
    });

    String citySlugId;
    String postalCode;
    String state;
    String county;
    String city;
    String street;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        citySlugId: json["city_slug_id"],
        postalCode: json["postal_code"],
        state: json["state"],
        county: json["county"],
        city: json["city"],
        street: json["street"],
    );

    Map<String, dynamic> toJson() => {
        "city_slug_id": citySlugId,
        "postal_code": postalCode,
        "state": state,
        "county": county,
        "city": city,
        "street": street,
    };
}

class Ratings {
    Ratings({
        this.greatSchoolsRating,
        this.parentRating,
    });

    int greatSchoolsRating;
    int parentRating;

    factory Ratings.fromJson(Map<String, dynamic> json) => Ratings(
        greatSchoolsRating: json["great_schools_rating"] == null ? null : json["great_schools_rating"],
        parentRating: json["parent_rating"] == null ? null : json["parent_rating"],
    );

    Map<String, dynamic> toJson() => {
        "great_schools_rating": greatSchoolsRating == null ? null : greatSchoolsRating,
        "parent_rating": parentRating == null ? null : parentRating,
    };
}

class SoldHistory {
    SoldHistory({
        this.date,
        this.source,
        this.listing,
    });

    DateTime date;
    String source;
    Listing listing;

    factory SoldHistory.fromJson(Map<String, dynamic> json) => SoldHistory(
        date: DateTime.parse(json["date"]),
        source: json["source"],
        listing: Listing.fromJson(json["listing"]),
    );

    Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "source": source,
        "listing": listing.toJson(),
    };
}

class Listing {
    Listing({
        this.price,
        this.mlsId,
    });

    int price;
    String mlsId;

    factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        price: json["price"],
        mlsId: json["mls_id"] == null ? null : json["mls_id"],
    );

    Map<String, dynamic> toJson() => {
        "price": price,
        "mls_id": mlsId == null ? null : mlsId,
    };
}

class TaxHistory {
    TaxHistory({
        this.assessment,
        this.tax,
        this.year,
    });

    Assessment assessment;
    int tax;
    String year;

    factory TaxHistory.fromJson(Map<String, dynamic> json) => TaxHistory(
        assessment: Assessment.fromJson(json["assessment"]),
        tax: json["tax"],
        year: json["year"],
    );

    Map<String, dynamic> toJson() => {
        "assessment": assessment.toJson(),
        "tax": tax,
        "year": year,
    };
}

class Assessment {
    Assessment({
        this.building,
        this.land,
        this.total,
    });

    int building;
    int land;
    int total;

    factory Assessment.fromJson(Map<String, dynamic> json) => Assessment(
        building: json["building"],
        land: json["land"],
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "building": building,
        "land": land,
        "total": total,
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

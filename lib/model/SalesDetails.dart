// To parse this JSON data, do
//
//     final productmodel = productmodelFromJson(jsonString);

import 'dart:convert';

Productmodel productmodelFromJson(String str) => Productmodel.fromJson(json.decode(str));

String productmodelToJson(Productmodel data) => json.encode(data.toJson());

class Productmodel {
    Productmodel({
         this.meta,
         this.properties,
    });

    Meta meta;
    List<Property> properties;

    factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
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
        this.moveInDate,
         this.suppressionFlags,
         this.listDate,
         this.hoaFee,
         this.hoaHistoricFee,
         this.lastUpdate,
         this.broker,
         this.yearBuilt,
         this.listingStatus,
         this.beds,
         this.description,
         this.bathsFull,
        this.stories,
         this.schools,
         this.building,
         this.buildingHref,
         this.garage,
         this.featureTags,
         this.branding,
         this.address,
         this.features,
         this.propSubType,
         this.mls,
         this.clientDisplayFlags,
         this.taxHistory,
         this.propertyHistory,
         this.products,
         this.office,
         this.agents,
         this.leadForms,
         this.buildingSize,
         this.price,
         this.rdcWebUrl,
         this.rdcAppUrl,
         this.baths,
         this.photoCount,
         this.raw,
         this.photoAttribution,
         this.mortgage,
         this.dataSourceName,
         this.trend,
         this.detailTracking,
         this.photos,
    });

    String propertyId;
    String propStatus;
    String listingId;
    String propType;
    dynamic moveInDate;
    List<String> suppressionFlags;
    DateTime listDate;
    int hoaFee;
    bool hoaHistoricFee;
    DateTime lastUpdate;
    Broker broker;
    int yearBuilt;
    String listingStatus;
    int beds;
    String description;
    int bathsFull;
    dynamic stories;
    List<School> schools;
    Building building;
    String buildingHref;
    String garage;
    List<String> featureTags;
    Branding branding;
    PropertyAddress address;
    List<Feature> features;
    String propSubType;
    Mls mls;
    ClientDisplayFlags clientDisplayFlags;
    List<dynamic> taxHistory;
    List<PropertyHistory> propertyHistory;
    List<String> products;
    Office office;
    List<Agent> agents;
    LeadForms leadForms;
    BuildingSize buildingSize;
    int price;
    String rdcWebUrl;
    String rdcAppUrl;
    int baths;
    int photoCount;
    Raw raw;
    List<String> photoAttribution;
    Mortgage mortgage;
    String dataSourceName;
    Trend trend;
    String detailTracking;
    List<PhotoElement> photos;

    factory Property.fromJson(Map<String, dynamic> json) => Property(
        propertyId: json["property_id"],
        propStatus: json["prop_status"],
        listingId: json["listing_id"],
        propType: json["prop_type"],
        moveInDate: json["move_in_date"],
        suppressionFlags: List<String>.from(json["suppression_flags"].map((x) => x)),
        listDate: DateTime.parse(json["list_date"]),
        hoaFee: json["hoa_fee"],
        hoaHistoricFee: json["hoa_historic_fee"],
        lastUpdate: DateTime.parse(json["last_update"]),
        broker: Broker.fromJson(json["broker"]),
        yearBuilt: json["year_built"],
        listingStatus: json["listing_status"],
        beds: json["beds"],
        description: json["description"],
        bathsFull: json["baths_full"],
        stories: json["stories"],
        schools: List<School>.from(json["schools"].map((x) => School.fromJson(x))),
        building: Building.fromJson(json["building"]),
        buildingHref: json["building_href"],
        garage: json["garage"],
        featureTags: List<String>.from(json["feature_tags"].map((x) => x)),
        branding: Branding.fromJson(json["branding"]),
        address: PropertyAddress.fromJson(json["address"]),
        features: List<Feature>.from(json["features"].map((x) => Feature.fromJson(x))),
        propSubType: json["prop_sub_type"],
        mls: Mls.fromJson(json["mls"]),
        clientDisplayFlags: ClientDisplayFlags.fromJson(json["client_display_flags"]),
        taxHistory: List<dynamic>.from(json["tax_history"].map((x) => x)),
        propertyHistory: List<PropertyHistory>.from(json["property_history"].map((x) => PropertyHistory.fromJson(x))),
        products: List<String>.from(json["products"].map((x) => x)),
        office: Office.fromJson(json["office"]),
        agents: List<Agent>.from(json["agents"].map((x) => Agent.fromJson(x))),
        leadForms: LeadForms.fromJson(json["lead_forms"]),
        buildingSize: BuildingSize.fromJson(json["building_size"]),
        price: json["price"],
        rdcWebUrl: json["rdc_web_url"],
        rdcAppUrl: json["rdc_app_url"],
        baths: json["baths"],
        photoCount: json["photo_count"],
        raw: Raw.fromJson(json["raw"]),
        photoAttribution: List<String>.from(json["photo_attribution"].map((x) => x)),
        mortgage: Mortgage.fromJson(json["mortgage"]),
        dataSourceName: json["data_source_name"],
        trend: Trend.fromJson(json["trend"]),
        detailTracking: json["detail_tracking"],
        photos: List<PhotoElement>.from(json["photos"].map((x) => PhotoElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        "prop_status": propStatus,
        "listing_id": listingId,
        "prop_type": propType,
        "move_in_date": moveInDate,
        "suppression_flags": List<dynamic>.from(suppressionFlags.map((x) => x)),
        "list_date": listDate.toIso8601String(),
        "hoa_fee": hoaFee,
        "hoa_historic_fee": hoaHistoricFee,
        "last_update": lastUpdate.toIso8601String(),
        "broker": broker.toJson(),
        "year_built": yearBuilt,
        "listing_status": listingStatus,
        "beds": beds,
        "description": description,
        "baths_full": bathsFull,
        "stories": stories,
        "schools": List<dynamic>.from(schools.map((x) => x.toJson())),
        "building": building.toJson(),
        "building_href": buildingHref,
        "garage": garage,
        "feature_tags": List<dynamic>.from(featureTags.map((x) => x)),
        "branding": branding.toJson(),
        "address": address.toJson(),
        "features": List<dynamic>.from(features.map((x) => x.toJson())),
        "prop_sub_type": propSubType,
        "mls": mls.toJson(),
        "client_display_flags": clientDisplayFlags.toJson(),
        "tax_history": List<dynamic>.from(taxHistory.map((x) => x)),
        "property_history": List<dynamic>.from(propertyHistory.map((x) => x.toJson())),
        "products": List<dynamic>.from(products.map((x) => x)),
        "office": office.toJson(),
        "agents": List<dynamic>.from(agents.map((x) => x.toJson())),
        "lead_forms": leadForms.toJson(),
        "building_size": buildingSize.toJson(),
        "price": price,
        "rdc_web_url": rdcWebUrl,
        "rdc_app_url": rdcAppUrl,
        "baths": baths,
        "photo_count": photoCount,
        "raw": raw.toJson(),
        "photo_attribution": List<dynamic>.from(photoAttribution.map((x) => x)),
        "mortgage": mortgage.toJson(),
        "data_source_name": dataSourceName,
        "trend": trend.toJson(),
        "detail_tracking": detailTracking,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
    };
}

class PropertyAddress {
    PropertyAddress({
         this.city,
         this.line,
         this.postalCode,
         this.addressValidationCode,
         this.stateCode,
         this.state,
         this.county,
         this.fipsCode,
         this.countyNeededForUniq,
         this.timeZone,
         this.lat,
         this.lon,
         this.neighborhoodName,
         this.neighborhoods,
    });

    String city;
    String line;
    String postalCode;
    String addressValidationCode;
    String stateCode;
    String state;
    String county;
    String fipsCode;
    bool countyNeededForUniq;
    String timeZone;
    double lat;
    double lon;
    String neighborhoodName;
    List<Neighborhood> neighborhoods;

    factory PropertyAddress.fromJson(Map<String, dynamic> json) => PropertyAddress(
        city: json["city"],
        line: json["line"],
        postalCode: json["postal_code"],
        addressValidationCode: json["address_validation_code"],
        stateCode: json["state_code"],
        state: json["state"],
        county: json["county"],
        fipsCode: json["fips_code"],
        countyNeededForUniq: json["county_needed_for_uniq"],
        timeZone: json["time_zone"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        neighborhoodName: json["neighborhood_name"],
        neighborhoods: List<Neighborhood>.from(json["neighborhoods"].map((x) => Neighborhood.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "line": line,
        "postal_code": postalCode,
        "address_validation_code": addressValidationCode,
        "state_code": stateCode,
        "state": state,
        "county": county,
        "fips_code": fipsCode,
        "county_needed_for_uniq": countyNeededForUniq,
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
    dynamic id;

    factory Neighborhood.fromJson(Map<String, dynamic> json) => Neighborhood(
        name: json["name"],
        city: json["city"],
        stateCode: json["state_code"],
        level: json["level"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "city": city,
        "state_code": stateCode,
        "level": level,
        "id": id,
    };
}

class Agent {
    Agent({
         this.name,
         this.profileName,
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

    String name;
    String profileName;
    String advertiserId;
    String href;
    AgentPhoto photo;
    String nrdsId;
    String nrdsVerifiedId;
    String nrdsVerificationMethod;
    String officeName;
    String email;
    String slogan;
    String stateLicense;
    MlsMemberships mlsMemberships;
    String id;
    bool primary;

    factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        name: json["name"],
        profileName: json["profile_name"],
        advertiserId: json["advertiser_id"],
        href: json["href"],
        photo: AgentPhoto.fromJson(json["photo"]),
        nrdsId: json["nrds_id"],
        nrdsVerifiedId: json["nrds_verified_id"],
        nrdsVerificationMethod: json["nrds_verification_method"],
        officeName: json["office_name"],
        email: json["email"],
        slogan: json["slogan"],
        stateLicense: json["state_license"],
        mlsMemberships: MlsMemberships.fromJson(json["mls_memberships"]),
        id: json["id"],
        primary: json["primary"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "profile_name": profileName,
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

class MlsMemberships {
    MlsMemberships({
         this.member,
    });

    MlsMembershipsMember member;

    factory MlsMemberships.fromJson(Map<String, dynamic> json) => MlsMemberships(
        member: MlsMembershipsMember.fromJson(json["member"]),
    );

    Map<String, dynamic> toJson() => {
        "member": member.toJson(),
    };
}

class MlsMembershipsMember {
    MlsMembershipsMember({
         this.agentSystemId,
         this.name,
         this.officeSystemId,
         this.id,
         this.abbreviation,
    });

    String agentSystemId;
    String name;
    String officeSystemId;
    String id;
    String abbreviation;

    factory MlsMembershipsMember.fromJson(Map<String, dynamic> json) => MlsMembershipsMember(
        agentSystemId: json["agent_system_id"],
        name: json["name"],
        officeSystemId: json["office_system_id"],
        id: json["id"],
        abbreviation: json["abbreviation"],
    );

    Map<String, dynamic> toJson() => {
        "agent_system_id": agentSystemId,
        "name": name,
        "office_system_id": officeSystemId,
        "id": id,
        "abbreviation": abbreviation,
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

class Branding {
    Branding({
         this.listingAgent,
         this.listingOffice,
        this.teamName,
    });

    Listing listingAgent;
    Listing listingOffice;
    dynamic teamName;

    factory Branding.fromJson(Map<String, dynamic> json) => Branding(
        listingAgent: Listing.fromJson(json["listing_agent"]),
        listingOffice: Listing.fromJson(json["listing_office"]),
        teamName: json["team_name"],
    );

    Map<String, dynamic> toJson() => {
        "listing_agent": listingAgent.toJson(),
        "listing_office": listingOffice.toJson(),
        "team_name": teamName,
    };
}

class Listing {
    Listing({
         this.photoAttribution,
         this.details,
    });

    Details photoAttribution;
    Details details;

    factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        photoAttribution: Details.fromJson(json["photo_attribution"]),
        details: Details.fromJson(json["details"]),
    );

    Map<String, dynamic> toJson() => {
        "photo_attribution": photoAttribution.toJson(),
        "details": details.toJson(),
    };
}

class Details {
    Details({
         this.name,
        this.photo,
        this.phone,
        this.slogan,
         this.showRealtorLogo,
        this.link,
        this.accentColor,
        this.stateLicense,
    });

    String name;
    String photo;
    String phone;
    dynamic slogan;
    bool showRealtorLogo;
    String link;
    dynamic accentColor;
    String stateLicense;

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        name: json["name"],
        photo: json["photo"],
        phone: json["phone"],
        slogan: json["slogan"],
        showRealtorLogo: json["show_realtor_logo"],
        link: json["link"],
        accentColor: json["accent_color"],
        stateLicense: json["state_license"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "photo": photo,
        "phone": phone,
        "slogan": slogan,
        "show_realtor_logo": showRealtorLogo,
        "link": link,
        "accent_color": accentColor,
        "state_license": stateLicense,
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

class Building {
    Building({
         this.id,
         this.permalink,
    });

    int id;
    String permalink;

    factory Building.fromJson(Map<String, dynamic> json) => Building(
        id: json["id"],
        permalink: json["permalink"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "permalink": permalink,
    };
}

class BuildingSize {
    BuildingSize({
         this.size,
         this.units,
    });

    int size;
    String units;

    factory BuildingSize.fromJson(Map<String, dynamic> json) => BuildingSize(
        size: json["size"],
        units: json["units"],
    );

    Map<String, dynamic> toJson() => {
        "size": size,
        "units": units,
    };
}

class ClientDisplayFlags {
    ClientDisplayFlags({
         this.presentationStatus,
         this.isShowcase,
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
         this.flipTheMarketEnabled,
         this.isShowcaseChoiceEnabled,
    });

    String presentationStatus;
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
    bool flipTheMarketEnabled;
    bool isShowcaseChoiceEnabled;

    factory ClientDisplayFlags.fromJson(Map<String, dynamic> json) => ClientDisplayFlags(
        presentationStatus: json["presentation_status"],
        isShowcase: json["is_showcase"],
        //leadFormPhoneRequired: json["lead_form_phone_required"],
        priceChange: json["price_change"],
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
        flipTheMarketEnabled: json["flip_the_market_enabled"],
        isShowcaseChoiceEnabled: json["is_showcase_choice_enabled"],
    );

    Map<String, dynamic> toJson() => {
        "presentation_status": presentationStatus,
        "is_showcase": isShowcase,
        "lead_form_phone_required": leadFormPhoneRequired,
        "price_change": priceChange,
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
        "flip_the_market_enabled": flipTheMarketEnabled,
        "is_showcase_choice_enabled": isShowcaseChoiceEnabled,
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

class LeadForms {
    LeadForms({
         this.form,
         this.showAgent,
         this.showBroker,
         this.showBuilder,
         this.showContactALender,
         this.showVeteransUnited,
         this.formType,
         this.leadType,
         this.isLcmEnabled,
         this.flipTheMarketEnabled,
         this.localPhone,
         this.localPhones,
         this.showTextLeads,
         this.cashbackEnabled,
         this.smarthomeEnabled,
    });

    Form form;
    bool showAgent;
    bool showBroker;
    bool showBuilder;
    bool showContactALender;
    bool showVeteransUnited;
    String formType;
    String leadType;
    bool isLcmEnabled;
    bool flipTheMarketEnabled;
    String localPhone;
    LocalPhones localPhones;
    bool showTextLeads;
    bool cashbackEnabled;
    bool smarthomeEnabled;

    factory LeadForms.fromJson(Map<String, dynamic> json) => LeadForms(
        form: Form.fromJson(json["form"]),
        showAgent: json["show_agent"],
        showBroker: json["show_broker"],
        showBuilder: json["show_builder"],
        showContactALender: json["show_contact_a_lender"],
        showVeteransUnited: json["show_veterans_united"],
        formType: json["form_type"],
        leadType: json["lead_type"],
        isLcmEnabled: json["is_lcm_enabled"],
        flipTheMarketEnabled: json["flip_the_market_enabled"],
        localPhone: json["local_phone"],
        localPhones: LocalPhones.fromJson(json["local_phones"]),
        showTextLeads: json["show_text_leads"],
        cashbackEnabled: json["cashback_enabled"],
        smarthomeEnabled: json["smarthome_enabled"],
    );

    Map<String, dynamic> toJson() => {
        "form": form.toJson(),
        "show_agent": showAgent,
        "show_broker": showBroker,
        "show_builder": showBuilder,
        "show_contact_a_lender": showContactALender,
        "show_veterans_united": showVeteransUnited,
        "form_type": formType,
        "lead_type": leadType,
        "is_lcm_enabled": isLcmEnabled,
        "flip_the_market_enabled": flipTheMarketEnabled,
        "local_phone": localPhone,
        "local_phones": localPhones.toJson(),
        "show_text_leads": showTextLeads,
        "cashback_enabled": cashbackEnabled,
        "smarthome_enabled": smarthomeEnabled,
    };
}

class Form {
    Form({
         this.name,
         this.email,
         this.phone,
         this.message,
         this.show,
    });

    Email name;
    Email email;
    FormPhone phone;
    Email message;
    bool show;

    factory Form.fromJson(Map<String, dynamic> json) => Form(
        name: Email.fromJson(json["name"]),
        email: Email.fromJson(json["email"]),
        phone: FormPhone.fromJson(json["phone"]),
        message: Email.fromJson(json["message"]),
        show: json["show"],
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "email": email.toJson(),
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

class FormPhone {
    FormPhone({
         this.required,
         this.minimumCharacterCount,
         this.maximumCharacterCount,
    });

    bool required;
    int minimumCharacterCount;
    int maximumCharacterCount;

    factory FormPhone.fromJson(Map<String, dynamic> json) => FormPhone(
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

class LocalPhones {
    LocalPhones({
         this.commConsoleMweb,
    });

    String commConsoleMweb;

    factory LocalPhones.fromJson(Map<String, dynamic> json) => LocalPhones(
        commConsoleMweb: json["comm_console_mweb"],
    );

    Map<String, dynamic> toJson() => {
        "comm_console_mweb": commConsoleMweb,
    };
}

class Mls {
    Mls({
         this.name,
         this.id,
        this.planId,
         this.abbreviation,
         this.type,
         this.disclaimer,
    });

    String name;
    String id;
    dynamic planId;
    String abbreviation;
    String type;
    Disclaimer disclaimer;

    factory Mls.fromJson(Map<String, dynamic> json) => Mls(
        name: json["name"],
        id: json["id"],
        planId: json["plan_id"],
        abbreviation: json["abbreviation"],
        type: json["type"],
        disclaimer: Disclaimer.fromJson(json["disclaimer"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "plan_id": planId,
        "abbreviation": abbreviation,
        "type": type,
        "disclaimer": disclaimer.toJson(),
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

class Mortgage {
    Mortgage({
         this.ratesUrl,
         this.estimate,
         this.maintenanceFee,
    });

    String ratesUrl;
    Estimate estimate;
    String maintenanceFee;

    factory Mortgage.fromJson(Map<String, dynamic> json) => Mortgage(
        ratesUrl: json["rates_url"],
        estimate: Estimate.fromJson(json["estimate"]),
        maintenanceFee: json["maintenance_fee"],
    );

    Map<String, dynamic> toJson() => {
        "rates_url": ratesUrl,
        "estimate": estimate.toJson(),
        "maintenance_fee": maintenanceFee,
    };
}

class Estimate {
    Estimate({
         this.loanAmount,
         this.rate,
         this.term,
         this.monthlyPayment,
         this.principalAndInterest,
         this.monthlyPropertyTaxes,
         this.monthlyHomeInsurance,
         this.hoaFees,
         this.monthlyMortgageInsurance,
         this.totalPayment,
         this.downPayment,
    });

    int loanAmount;
    double rate;
    int term;
    int monthlyPayment;
    int principalAndInterest;
    int monthlyPropertyTaxes;
    int monthlyHomeInsurance;
    int hoaFees;
    int monthlyMortgageInsurance;
    int totalPayment;
    int downPayment;

    factory Estimate.fromJson(Map<String, dynamic> json) => Estimate(
        loanAmount: json["loan_amount"],
        rate: json["rate"]?.toDouble(),
        term: json["term"],
        monthlyPayment: json["monthly_payment"],
        principalAndInterest: json["principal_and_interest"],
        monthlyPropertyTaxes: json["monthly_property_taxes"],
        monthlyHomeInsurance: json["monthly_home_insurance"],
        hoaFees: json["hoa_fees"],
        monthlyMortgageInsurance: json["monthly_mortgage_insurance"],
        totalPayment: json["total_payment"],
        downPayment: json["down_payment"],
    );

    Map<String, dynamic> toJson() => {
        "loan_amount": loanAmount,
        "rate": rate,
        "term": term,
        "monthly_payment": monthlyPayment,
        "principal_and_interest": principalAndInterest,
        "monthly_property_taxes": monthlyPropertyTaxes,
        "monthly_home_insurance": monthlyHomeInsurance,
        "hoa_fees": hoaFees,
        "monthly_mortgage_insurance": monthlyMortgageInsurance,
        "total_payment": totalPayment,
        "down_payment": downPayment,
    };
}

class Office {
    Office({
         this.name,
         this.advertiserId,
         this.mlsSet,
         this.href,
         this.photo,
         this.email,
         this.slogan,
         this.phones,
         this.address,
         this.advantagePhone,
         this.mlsMembership,
         this.id,
    });

    String name;
    int advertiserId;
    String mlsSet;
    String href;
    AgentPhoto photo;
    String email;
    String slogan;
    List<PhoneElement> phones;
    OfficeAddress address;
    AdvantagePhone advantagePhone;
    MlsMembership mlsMembership;
    String id;

    factory Office.fromJson(Map<String, dynamic> json) => Office(
        name: json["name"],
        advertiserId: json["advertiser_id"],
        mlsSet: json["mls_set"],
        href: json["href"],
        photo: AgentPhoto.fromJson(json["photo"]),
        email: json["email"],
        slogan: json["slogan"],
        phones: List<PhoneElement>.from(json["phones"].map((x) => PhoneElement.fromJson(x))),
        address: OfficeAddress.fromJson(json["address"]),
        advantagePhone: AdvantagePhone.fromJson(json["advantage_phone"]),
        mlsMembership: MlsMembership.fromJson(json["mls_membership"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "advertiser_id": advertiserId,
        "mls_set": mlsSet,
        "href": href,
        "photo": photo.toJson(),
        "email": email,
        "slogan": slogan,
        "phones": List<dynamic>.from(phones.map((x) => x.toJson())),
        "address": address.toJson(),
        "advantage_phone": advantagePhone.toJson(),
        "mls_membership": mlsMembership.toJson(),
        "id": id,
    };
}

class OfficeAddress {
    OfficeAddress({
         this.city,
         this.stateCode,
    });

    String city;
    String stateCode;

    factory OfficeAddress.fromJson(Map<String, dynamic> json) => OfficeAddress(
        city: json["city"],
        stateCode: json["state_code"],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "state_code": stateCode,
    };
}

class AdvantagePhone {
    AdvantagePhone({
         this.displayNumber,
    });

    String displayNumber;

    factory AdvantagePhone.fromJson(Map<String, dynamic> json) => AdvantagePhone(
        displayNumber: json["display_number"],
    );

    Map<String, dynamic> toJson() => {
        "display_number": displayNumber,
    };
}

class MlsMembership {
    MlsMembership({
         this.member,
    });

    MlsMembershipMember member;

    factory MlsMembership.fromJson(Map<String, dynamic> json) => MlsMembership(
        member: MlsMembershipMember.fromJson(json["member"]),
    );

    Map<String, dynamic> toJson() => {
        "member": member.toJson(),
    };
}

class MlsMembershipMember {
    MlsMembershipMember({
         this.officeSystemId,
    });

    String officeSystemId;

    factory MlsMembershipMember.fromJson(Map<String, dynamic> json) => MlsMembershipMember(
        officeSystemId: json["office_system_id"],
    );

    Map<String, dynamic> toJson() => {
        "office_system_id": officeSystemId,
    };
}

class PhoneElement {
    PhoneElement({
         this.number,
         this.type,
        this.primary,
    });

    String number;
    String type;
    bool primary;

    factory PhoneElement.fromJson(Map<String, dynamic> json) => PhoneElement(
        number: json["number"],
        type: json["type"],
        primary: json["primary"],
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "type": type,
        "primary": primary,
    };
}

class PhotoElement {
    PhotoElement({
         this.description,
         this.href,
         this.tags,
         this.type,
    });

    String description;
    String href;
    List<Tag> tags;
    Type type;

    factory PhotoElement.fromJson(Map<String, dynamic> json) => PhotoElement(
        description: json["description"],
        href: json["href"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        type: typeValues.map[json["type"]],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "href": href,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "type": typeValues.reverse[type],
    };
}

class Tag {
    Tag({
         this.label,
         this.probability,
    });

    String label;
    double probability;

    factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        label: json["label"],
        probability: json["probability"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "label": label,
        "probability": probability,
    };
}

enum Type { REALTORDOTCOM_MLS_LISTING_IMAGE }

final typeValues = EnumValues({
    "realtordotcom_mls_listing_image": Type.REALTORDOTCOM_MLS_LISTING_IMAGE
});

class PropertyHistory {
    PropertyHistory({
         this.eventName,
         this.date,
         this.price,
        this.priceRangeMin,
        this.priceRangeMax,
         this.priceChanged,
         this.sqft,
         this.datasourceName,
         this.source,
    });

    String eventName;
    DateTime date;
    int price;
    dynamic priceRangeMin;
    dynamic priceRangeMax;
    int priceChanged;
    int sqft;
    String datasourceName;
    String source;

    factory PropertyHistory.fromJson(Map<String, dynamic> json) => PropertyHistory(
        eventName: json["event_name"],
        date: DateTime.parse(json["date"]),
        price: json["price"],
        priceRangeMin: json["price_range_min"],
        priceRangeMax: json["price_range_max"],
        priceChanged: json["price_changed"],
        sqft: json["sqft"],
        datasourceName: json["datasource_name"],
        source: json["source"],
    );

    Map<String, dynamic> toJson() => {
        "event_name": eventName,
        "date": date.toIso8601String(),
        "price": price,
        "price_range_min": priceRangeMin,
        "price_range_max": priceRangeMax,
        "price_changed": priceChanged,
        "sqft": sqft,
        "datasource_name": datasourceName,
        "source": source,
    };
}

class Raw {
    Raw({
         this.status,
         this.style,
        this.taxAmount,
    });

    String status;
    List<String> style;
    dynamic taxAmount;

    factory Raw.fromJson(Map<String, dynamic> json) => Raw(
        status: json["status"],
        style: List<String>.from(json["style"].map((x) => x)),
        taxAmount: json["tax_amount"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "style": List<dynamic>.from(style.map((x) => x)),
        "tax_amount": taxAmount,
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
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        studentCount: json["student_count"],
        studentTeacherRatio: json["student_teacher_ratio"]?.toDouble(),
        location: Location.fromJson(json["location"]),
        phone: json["phone"],
        distanceInMiles: json["distance_in_miles"]?.toDouble(),
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
        "student_teacher_ratio": studentTeacherRatio,
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
        greatSchoolsRating: json["great_schools_rating"],
        parentRating: json["parent_rating"],
    );

    Map<String, dynamic> toJson() => {
        "great_schools_rating": greatSchoolsRating,
        "parent_rating": parentRating,
    };
}

class Trend {
    Trend({
         this.listingCount,
         this.activeListingCount,
         this.askingToSoldPricePercentChange,
         this.median,
         this.salesToInventoryCountPercent,
         this.salesToInventoryCountPercentMarketType,
         this.year,
         this.month,
         this.geo,
    });

    ListingCount listingCount;
    int activeListingCount;
    double askingToSoldPricePercentChange;
    Median median;
    double salesToInventoryCountPercent;
    String salesToInventoryCountPercentMarketType;
    int year;
    int month;
    Geo geo;

    factory Trend.fromJson(Map<String, dynamic> json) => Trend(
        listingCount: ListingCount.fromJson(json["listing_count"]),
        activeListingCount: json["active_listing_count"],
        askingToSoldPricePercentChange: json["asking_to_sold_price_percent_change"]?.toDouble(),
        median: Median.fromJson(json["median"]),
        salesToInventoryCountPercent: json["sales_to_inventory_count_percent"]?.toDouble(),
        salesToInventoryCountPercentMarketType: json["sales_to_inventory_count_percent_market_type"],
        year: json["year"],
        month: json["month"],
        geo: Geo.fromJson(json["geo"]),
    );

    Map<String, dynamic> toJson() => {
        "listing_count": listingCount.toJson(),
        "active_listing_count": activeListingCount,
        "asking_to_sold_price_percent_change": askingToSoldPricePercentChange,
        "median": median.toJson(),
        "sales_to_inventory_count_percent": salesToInventoryCountPercent,
        "sales_to_inventory_count_percent_market_type": salesToInventoryCountPercentMarketType,
        "year": year,
        "month": month,
        "geo": geo.toJson(),
    };
}

class Geo {
    Geo({
         this.stateCode,
         this.city,
         this.neighborhood,
    });

    String stateCode;
    String city;
    String neighborhood;

    factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        stateCode: json["state_code"],
        city: json["city"],
        neighborhood: json["neighborhood"],
    );

    Map<String, dynamic> toJson() => {
        "state_code": stateCode,
        "city": city,
        "neighborhood": neighborhood,
    };
}

class ListingCount {
    ListingCount({
         this.forSale,
         this.rental,
         this.sold,
    });

    int forSale;
    int rental;
    int sold;

    factory ListingCount.fromJson(Map<String, dynamic> json) => ListingCount(
        forSale: json["for_sale"],
        rental: json["rental"],
        sold: json["sold"],
    );

    Map<String, dynamic> toJson() => {
        "for_sale": forSale,
        "rental": rental,
        "sold": sold,
    };
}

class Median {
    Median({
         this.ageDays,
         this.listingPrice,
         this.listingPriceSqft,
         this.rentalListingPrice,
         this.closingPrice,
         this.byPropType,
    });

    int ageDays;
    int listingPrice;
    int listingPriceSqft;
    int rentalListingPrice;
    int closingPrice;
    ByPropType byPropType;

    factory Median.fromJson(Map<String, dynamic> json) => Median(
        ageDays: json["age_days"],
        listingPrice: json["listing_price"],
        listingPriceSqft: json["listing_price_sqft"],
        rentalListingPrice: json["rental_listing_price"],
        closingPrice: json["closing_price"],
        byPropType: ByPropType.fromJson(json["by_prop_type"]),
    );

    Map<String, dynamic> toJson() => {
        "age_days": ageDays,
        "listing_price": listingPrice,
        "listing_price_sqft": listingPriceSqft,
        "rental_listing_price": rentalListingPrice,
        "closing_price": closingPrice,
        "by_prop_type": byPropType.toJson(),
    };
}

class ByPropType {
    ByPropType({
         this.home,
         this.condos,
         this.condoTownhomeRowhomeCoop,
         this.land,
         this.multiFamily,
         this.singleFamily,
         this.townhomes,
    });

    CondoTownhomeRowhomeCoop home;
    CondoTownhomeRowhomeCoop condos;
    CondoTownhomeRowhomeCoop condoTownhomeRowhomeCoop;
    CondoTownhomeRowhomeCoop land;
    CondoTownhomeRowhomeCoop multiFamily;
    CondoTownhomeRowhomeCoop singleFamily;
    CondoTownhomeRowhomeCoop townhomes;

    factory ByPropType.fromJson(Map<String, dynamic> json) => ByPropType(
        home: CondoTownhomeRowhomeCoop.fromJson(json["home"]),
        condos: CondoTownhomeRowhomeCoop.fromJson(json["condos"]),
        condoTownhomeRowhomeCoop: CondoTownhomeRowhomeCoop.fromJson(json["condo_townhome_rowhome_coop"]),
        land: CondoTownhomeRowhomeCoop.fromJson(json["land"]),
        multiFamily: CondoTownhomeRowhomeCoop.fromJson(json["multi_family"]),
        singleFamily: CondoTownhomeRowhomeCoop.fromJson(json["single_family"]),
        townhomes: CondoTownhomeRowhomeCoop.fromJson(json["townhomes"]),
    );

    Map<String, dynamic> toJson() => {
        "home": home.toJson(),
        "condos": condos.toJson(),
        "condo_townhome_rowhome_coop": condoTownhomeRowhomeCoop.toJson(),
        "land": land.toJson(),
        "multi_family": multiFamily.toJson(),
        "single_family": singleFamily.toJson(),
        "townhomes": townhomes.toJson(),
    };
}

class CondoTownhomeRowhomeCoop {
    CondoTownhomeRowhomeCoop({
         this.listingPrice,
        this.closingPrice,
        this.listingPriceSqft,
        this.ageDays,
    });

    int listingPrice;
    int closingPrice;
    int listingPriceSqft;
    int ageDays;

    factory CondoTownhomeRowhomeCoop.fromJson(Map<String, dynamic> json) => CondoTownhomeRowhomeCoop(
        listingPrice: json["listing_price"],
        closingPrice: json["closing_price"],
        listingPriceSqft: json["listing_price_sqft"],
        ageDays: json["age_days"],
    );

    Map<String, dynamic> toJson() => {
        "listing_price": listingPrice,
        "closing_price": closingPrice,
        "listing_price_sqft": listingPriceSqft,
        "age_days": ageDays,
    };
}

class EnumValues<T> {
    Map<String, T> map;
     Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

// To parse this JSON data, do
//
//     final saleList = saleListFromJson(jsonString);

import 'dart:convert';

SaleList saleListFromJson(String str) => SaleList.fromJson(json.decode(str));

String saleListToJson(SaleList data) => json.encode(data.toJson());

class SaleList {
    SaleList({
        this.meta,
        this.properties,
    });

    Meta meta;
    List<Property> properties;

    factory SaleList.fromJson(Map<String, dynamic> json) => SaleList(
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
    StateData state;
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
        state: stateValues.map[json["state"]],
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
        "state": stateValues.reverse[state],
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

enum Channel { FOR_SALE }

final channelValues = EnumValues({
    "for_sale": Channel.FOR_SALE
});

enum StateData { NY }

final stateValues = EnumValues({
    "NY": StateData.NY
});

class Property {
    Property({
        this.propertyId,
        this.listingId,
        //this.products,
        this.rdcWebUrl,
        this.propType,
        this.address,
        this.branding,
        this.propStatus,
        this.price,
        this.bathsHalf,
        this.bathsFull,
        this.baths,
        this.beds,
        this.buildingSize,
        this.agents,
        this.office,
        this.lastUpdate,
        this.clientDisplayFlags,
        this.leadForms,
        this.photoCount,
        this.thumbnail,
        this.pageNo,
        this.rank,
        this.listTracking,
        this.lotSize,
        this.mls,
        this.dataSourceName,
        this.propSubType,
        this.openHouses,
        this.virtualTour,
    });

    String propertyId;
    String listingId;
    //List<LeadType> products;
    String rdcWebUrl;
    PropType propType;
    Address address;
    Branding branding;
    Channel propStatus;
    int price;
    int bathsHalf;
    int bathsFull;
    int baths;
    int beds;
    Size buildingSize;
    List<Agent> agents;
    Office office;
    DateTime lastUpdate;
    ClientDisplayFlags clientDisplayFlags;
    LeadForms leadForms;
    int photoCount;
    String thumbnail;
    int pageNo;
    int rank;
    String listTracking;
    Size lotSize;
    Mls mls;
    DataSourceName dataSourceName;
    PropSubType propSubType;
    List<OpenHouse> openHouses;
    VirtualTour virtualTour;

    factory Property.fromJson(Map<String, dynamic> json) => Property(
        propertyId: json["property_id"],
        listingId: json["listing_id"],
        //products: List<LeadType>.from(json["products"].map((x) => leadTypeValues.map[x])),
        rdcWebUrl: json["rdc_web_url"],
        propType: propTypeValues.map[json["prop_type"]],
        address: Address.fromJson(json["address"]),
        branding: Branding.fromJson(json["branding"]),
        propStatus: channelValues.map[json["prop_status"]],
        price: json["price"],
        bathsHalf: json["baths_half"] == null ? null : json["baths_half"],
        bathsFull: json["baths_full"] == null ? null : json["baths_full"],
        baths: json["baths"] == null ? null : json["baths"],
        beds: json["beds"] == null ? null : json["beds"],
        buildingSize: json["building_size"] == null ? null : Size.fromJson(json["building_size"]),
        agents: List<Agent>.from(json["agents"].map((x) => Agent.fromJson(x))),
        office: Office.fromJson(json["office"]),
        lastUpdate: DateTime.parse(json["last_update"]),
        clientDisplayFlags: ClientDisplayFlags.fromJson(json["client_display_flags"]),
        leadForms: LeadForms.fromJson(json["lead_forms"]),
        photoCount: json["photo_count"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        pageNo: json["page_no"],
        rank: json["rank"],
        listTracking: json["list_tracking"],
        lotSize: json["lot_size"] == null ? null : Size.fromJson(json["lot_size"]),
        mls: Mls.fromJson(json["mls"]),
        dataSourceName: dataSourceNameValues.map[json["data_source_name"]],
        propSubType: json["prop_sub_type"] == null ? null : propSubTypeValues.map[json["prop_sub_type"]],
        openHouses: json["open_houses"] == null ? null : List<OpenHouse>.from(json["open_houses"].map((x) => OpenHouse.fromJson(x))),
        virtualTour: json["virtual_tour"] == null ? null : VirtualTour.fromJson(json["virtual_tour"]),
    );

    Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        "listing_id": listingId,
       // "products": List<dynamic>.from(products.map((x) => leadTypeValues.reverse[x])),
        "rdc_web_url": rdcWebUrl,
        "prop_type": propTypeValues.reverse[propType],
        "address": address.toJson(),
        "branding": branding.toJson(),
        "prop_status": channelValues.reverse[propStatus],
        "price": price,
        "baths_half": bathsHalf == null ? null : bathsHalf,
        "baths_full": bathsFull == null ? null : bathsFull,
        "baths": baths == null ? null : baths,
        "beds": beds == null ? null : beds,
        "building_size": buildingSize == null ? null : buildingSize.toJson(),
        "agents": List<dynamic>.from(agents.map((x) => x.toJson())),
        "office": office.toJson(),
        "last_update": lastUpdate.toIso8601String(),
        "client_display_flags": clientDisplayFlags.toJson(),
        "lead_forms": leadForms.toJson(),
        "photo_count": photoCount,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "page_no": pageNo,
        "rank": rank,
        "list_tracking": listTracking,
        "lot_size": lotSize == null ? null : lotSize.toJson(),
        "mls": mls.toJson(),
        "data_source_name": dataSourceNameValues.reverse[dataSourceName],
        "prop_sub_type": propSubType == null ? null : propSubTypeValues.reverse[propSubType],
        "open_houses": openHouses == null ? null : List<dynamic>.from(openHouses.map((x) => x.toJson())),
        "virtual_tour": virtualTour == null ? null : virtualTour.toJson(),
    };
}

class Address {
    Address({
        this.city,
        this.line,
        this.postalCode,
        this.stateCode,
        this.state,
        this.county,
        this.fipsCode,
        this.countyNeededForUniq,
        this.lat,
        this.lon,
        this.neighborhoodName,
        this.isApproximate,
        this.timeZone,
    });

    String city;
    String line;
    String postalCode;
    StateData stateCode;
    County state;
    County county;
    String fipsCode;
    bool countyNeededForUniq;
    double lat;
    double lon;
    String neighborhoodName;
    bool isApproximate;
    AddressTimeZone timeZone;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
        line: json["line"] == null ? null : json["line"],
        postalCode: json["postal_code"],
        stateCode: stateValues.map[json["state_code"]],
        state: countyValues.map[json["state"]],
        county: countyValues.map[json["county"]],
        fipsCode: json["fips_code"] == null ? null : json["fips_code"],
        countyNeededForUniq: json["county_needed_for_uniq"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        neighborhoodName: json["neighborhood_name"] == null ? null : json["neighborhood_name"],
        isApproximate: json["is_approximate"] == null ? null : json["is_approximate"],
        timeZone: json["time_zone"] == null ? null : addressTimeZoneValues.map[json["time_zone"]],
    );

    Map<String, dynamic> toJson() => {
        "city": city,
        "line": line == null ? null : line,
        "postal_code": postalCode,
        "state_code": stateValues.reverse[stateCode],
        "state": countyValues.reverse[state],
        "county": countyValues.reverse[county],
        "fips_code": fipsCode == null ? null : fipsCode,
        "county_needed_for_uniq": countyNeededForUniq,
        "lat": lat,
        "lon": lon,
        "neighborhood_name": neighborhoodName == null ? null : neighborhoodName,
        "is_approximate": isApproximate == null ? null : isApproximate,
        "time_zone": timeZone == null ? null : addressTimeZoneValues.reverse[timeZone],
    };
}

enum County { RICHMOND, QUEENS, KINGS, BRONX, NEW_YORK }

final countyValues = EnumValues({
    "Bronx": County.BRONX,
    "Kings": County.KINGS,
    "New York": County.NEW_YORK,
    "Queens": County.QUEENS,
    "Richmond": County.RICHMOND
});

enum AddressTimeZone { AMERICA_NEW_YORK }

final addressTimeZoneValues = EnumValues({
    "America/New_York": AddressTimeZone.AMERICA_NEW_YORK
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
    VirtualTour photo;
    String name;

    factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        primary: json["primary"],
        advertiserId: json["advertiser_id"] == null ? null : json["advertiser_id"],
        id: json["id"] == null ? null : json["id"],
        photo: json["photo"] == null ? null : VirtualTour.fromJson(json["photo"]),
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

class VirtualTour {
    VirtualTour({
        this.href,
    });

    String href;

    factory VirtualTour.fromJson(Map<String, dynamic> json) => VirtualTour(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class Branding {
    Branding({
        this.listingOffice,
    });

    ListingOffice listingOffice;

    factory Branding.fromJson(Map<String, dynamic> json) => Branding(
        listingOffice: ListingOffice.fromJson(json["listing_office"]),
    );

    Map<String, dynamic> toJson() => {
        "listing_office": listingOffice.toJson(),
    };
}

class ListingOffice {
    ListingOffice({
        this.listItem,
    });

    ListItem listItem;

    factory ListingOffice.fromJson(Map<String, dynamic> json) => ListingOffice(
        listItem: ListItem.fromJson(json["list_item"]),
    );

    Map<String, dynamic> toJson() => {
        "list_item": listItem.toJson(),
    };
}

class ListItem {
    ListItem({
        this.name,
        this.photo,
        this.phone,
        this.slogan,
        this.showRealtorLogo,
        this.link,
        this.accentColor,
    });

    String name;
    String photo;
    dynamic phone;
    dynamic slogan;
    bool showRealtorLogo;
    dynamic link;
    dynamic accentColor;

    factory ListItem.fromJson(Map<String, dynamic> json) => ListItem(
        name: json["name"],
        photo: json["photo"] == null ? null : json["photo"],
        phone: json["phone"],
        slogan: json["slogan"],
        showRealtorLogo: json["show_realtor_logo"],
        link: json["link"],
        accentColor: json["accent_color"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "photo": photo == null ? null : photo,
        "phone": phone,
        "slogan": slogan,
        "show_realtor_logo": showRealtorLogo,
        "link": link,
        "accent_color": accentColor,
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
        this.isCoBrokePhone,
        this.isNewListing,
        this.isNewPlan,
        this.isTurbo,
        this.isOfficeStandardListing,
        this.suppressMapPin,
        this.showContactALenderInLeadForm,
        this.showVeteransUnitedInLeadForm,
        this.isShowcaseChoiceEnabled,
        this.flipTheMarketEnabled,
        this.isNewConstruction,
        this.isContingent,
        this.hasMatterport,
        this.isPending,
    });

    Channel presentationStatus;
    bool isShowcase;
    bool leadFormPhoneRequired;
    int priceChange;
    bool isCoBrokeEmail;
    bool hasOpenHouse;
    bool isCoBrokePhone;
    bool isNewListing;
    bool isNewPlan;
    bool isTurbo;
    bool isOfficeStandardListing;
    bool suppressMapPin;
    bool showContactALenderInLeadForm;
    bool showVeteransUnitedInLeadForm;
    bool isShowcaseChoiceEnabled;
    bool flipTheMarketEnabled;
    bool isNewConstruction;
    bool isContingent;
    bool hasMatterport;
    bool isPending;

    factory ClientDisplayFlags.fromJson(Map<String, dynamic> json) => ClientDisplayFlags(
        presentationStatus: channelValues.map[json["presentation_status"]],
        isShowcase: json["is_showcase"],
        leadFormPhoneRequired: json["lead_form_phone_required"],
        priceChange: json["price_change"],
        isCoBrokeEmail: json["is_co_broke_email"],
        hasOpenHouse: json["has_open_house"],
        isCoBrokePhone: json["is_co_broke_phone"],
        isNewListing: json["is_new_listing"],
        isNewPlan: json["is_new_plan"],
        isTurbo: json["is_turbo"],
        isOfficeStandardListing: json["is_office_standard_listing"],
        suppressMapPin: json["suppress_map_pin"],
        showContactALenderInLeadForm: json["show_contact_a_lender_in_lead_form"],
        showVeteransUnitedInLeadForm: json["show_veterans_united_in_lead_form"],
        isShowcaseChoiceEnabled: json["is_showcase_choice_enabled"],
        flipTheMarketEnabled: json["flip_the_market_enabled"] == null ? null : json["flip_the_market_enabled"],
        isNewConstruction: json["is_new_construction"] == null ? null : json["is_new_construction"],
        isContingent: json["is_contingent"] == null ? null : json["is_contingent"],
        hasMatterport: json["has_matterport"] == null ? null : json["has_matterport"],
        isPending: json["is_pending"] == null ? null : json["is_pending"],
    );

    Map<String, dynamic> toJson() => {
        "presentation_status": channelValues.reverse[presentationStatus],
        "is_showcase": isShowcase,
        "lead_form_phone_required": leadFormPhoneRequired,
        "price_change": priceChange,
        "is_co_broke_email": isCoBrokeEmail,
        "has_open_house": hasOpenHouse,
        "is_co_broke_phone": isCoBrokePhone,
        "is_new_listing": isNewListing,
        "is_new_plan": isNewPlan,
        "is_turbo": isTurbo,
        "is_office_standard_listing": isOfficeStandardListing,
        "suppress_map_pin": suppressMapPin,
        "show_contact_a_lender_in_lead_form": showContactALenderInLeadForm,
        "show_veterans_united_in_lead_form": showVeteransUnitedInLeadForm,
        "is_showcase_choice_enabled": isShowcaseChoiceEnabled,
        "flip_the_market_enabled": flipTheMarketEnabled == null ? null : flipTheMarketEnabled,
        "is_new_construction": isNewConstruction == null ? null : isNewConstruction,
        "is_contingent": isContingent == null ? null : isContingent,
        "has_matterport": hasMatterport == null ? null : hasMatterport,
        "is_pending": isPending == null ? null : isPending,
    };
}

enum DataSourceName { MLS }

final dataSourceNameValues = EnumValues({
    "mls": DataSourceName.MLS
});

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
        this.showTextLeads,
        this.cashbackEnabled,
        this.smarthomeEnabled,
        this.localPhone,
        this.localPhones,
    });

    Form form;
    bool showAgent;
    bool showBroker;
    bool showBuilder;
    bool showContactALender;
    bool showVeteransUnited;
    FormType formType;
    LeadType leadType;
    bool isLcmEnabled;
    bool flipTheMarketEnabled;
    bool showTextLeads;
    bool cashbackEnabled;
    bool smarthomeEnabled;
    LocalPhone localPhone;
    LocalPhones localPhones;

    factory LeadForms.fromJson(Map<String, dynamic> json) => LeadForms(
        form: Form.fromJson(json["form"]),
        showAgent: json["show_agent"],
        showBroker: json["show_broker"],
        showBuilder: json["show_builder"],
        showContactALender: json["show_contact_a_lender"],
        showVeteransUnited: json["show_veterans_united"],
        formType: formTypeValues.map[json["form_type"]],
        leadType: leadTypeValues.map[json["lead_type"]],
        isLcmEnabled: json["is_lcm_enabled"],
        flipTheMarketEnabled: json["flip_the_market_enabled"],
        showTextLeads: json["show_text_leads"],
        cashbackEnabled: json["cashback_enabled"],
        smarthomeEnabled: json["smarthome_enabled"],
        localPhone: json["local_phone"] == null ? null : localPhoneValues.map[json["local_phone"]],
        localPhones: json["local_phones"] == null ? null : LocalPhones.fromJson(json["local_phones"]),
    );

    Map<String, dynamic> toJson() => {
        "form": form.toJson(),
        "show_agent": showAgent,
        "show_broker": showBroker,
        "show_builder": showBuilder,
        "show_contact_a_lender": showContactALender,
        "show_veterans_united": showVeteransUnited,
        "form_type": formTypeValues.reverse[formType],
        "lead_type": leadTypeValues.reverse[leadType],
        "is_lcm_enabled": isLcmEnabled,
        "flip_the_market_enabled": flipTheMarketEnabled,
        "show_text_leads": showTextLeads,
        "cashback_enabled": cashbackEnabled,
        "smarthome_enabled": smarthomeEnabled,
        "local_phone": localPhone == null ? null : localPhoneValues.reverse[localPhone],
        "local_phones": localPhones == null ? null : localPhones.toJson(),
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
    Phone phone;
    Email message;
    bool show;

    factory Form.fromJson(Map<String, dynamic> json) => Form(
        name: Email.fromJson(json["name"]),
        email: Email.fromJson(json["email"]),
        phone: Phone.fromJson(json["phone"]),
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

enum FormType { CLASSIC }

final formTypeValues = EnumValues({
    "classic": FormType.CLASSIC
});

enum LeadType { CO_BROKE, CORE_AGENT, CORE_BROKER, LISTING_OWNER_BRAND_BROKER }

final leadTypeValues = EnumValues({
    "core.agent": LeadType.CORE_AGENT,
    "core.broker": LeadType.CORE_BROKER,
    "co_broke": LeadType.CO_BROKE,
    "listing_owner_brand.broker": LeadType.LISTING_OWNER_BRAND_BROKER
});

enum LocalPhone { THE_8886520969, THE_8888600947, THE_9294934835, THE_5167012350, THE_9292544987, THE_9293890970, THE_9292544078 }

final localPhoneValues = EnumValues({
    "(516)701-2350": LocalPhone.THE_5167012350,
    "(888)652-0969": LocalPhone.THE_8886520969,
    "(888)860-0947": LocalPhone.THE_8888600947,
    "(929)254-4078": LocalPhone.THE_9292544078,
    "(929)254-4987": LocalPhone.THE_9292544987,
    "(929)389-0970": LocalPhone.THE_9293890970,
    "(929)493-4835": LocalPhone.THE_9294934835
});

class LocalPhones {
    LocalPhones({
        this.commConsoleMweb,
    });

    LocalPhone commConsoleMweb;

    factory LocalPhones.fromJson(Map<String, dynamic> json) => LocalPhones(
        commConsoleMweb: localPhoneValues.map[json["comm_console_mweb"]],
    );

    Map<String, dynamic> toJson() => {
        "comm_console_mweb": localPhoneValues.reverse[commConsoleMweb],
    };
}

class Mls {
    Mls({
        this.name,
        this.id,
        this.planId,
        this.abbreviation,
        this.type,
    });

    Name name;
    String id;
    dynamic planId;
    Abbreviation abbreviation;
    DataSourceName type;

    factory Mls.fromJson(Map<String, dynamic> json) => Mls(
        name: nameValues.map[json["name"]],
        id: json["id"],
        planId: json["plan_id"],
        abbreviation: abbreviationValues.map[json["abbreviation"]],
        type: dataSourceNameValues.map[json["type"]],
    );

    Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "id": id,
        "plan_id": planId,
        "abbreviation": abbreviationValues.reverse[abbreviation],
        "type": dataSourceNameValues.reverse[type],
    };
}

enum Abbreviation { SINY, LINY, RBNY, UCNY, TENY, STNY, BONY, DENY, RPNY, BDNY }

final abbreviationValues = EnumValues({
    "BDNY": Abbreviation.BDNY,
    "BONY": Abbreviation.BONY,
    "DENY": Abbreviation.DENY,
    "LINY": Abbreviation.LINY,
    "RBNY": Abbreviation.RBNY,
    "RPNY": Abbreviation.RPNY,
    "SINY": Abbreviation.SINY,
    "STNY": Abbreviation.STNY,
    "TENY": Abbreviation.TENY,
    "UCNY": Abbreviation.UCNY
});

enum Name { STATEN_ISLAND, ONE_KEY_MLS, REBNY, COMPASS, TERRA_HOLDINGS, MY_STATE_MLS, BROOKLYN, DOUGLAS_ELLIMAN, REAL_PLUS, REALTY_MXNYC }

final nameValues = EnumValues({
    "Brooklyn": Name.BROOKLYN,
    "Compass": Name.COMPASS,
    "DouglasElliman": Name.DOUGLAS_ELLIMAN,
    "MyStateMLS": Name.MY_STATE_MLS,
    "OneKeyMLS": Name.ONE_KEY_MLS,
    "RealtyMXNYC": Name.REALTY_MXNYC,
    "RealPlus": Name.REAL_PLUS,
    "REBNY": Name.REBNY,
    "StatenIsland": Name.STATEN_ISLAND,
    "TerraHoldings": Name.TERRA_HOLDINGS
});

class Office {
    Office({
        this.id,
        this.name,
    });

    String id;
    String name;

    factory Office.fromJson(Map<String, dynamic> json) => Office(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class OpenHouse {
    OpenHouse({
        this.startDate,
        this.endDate,
        this.timeZone,
        this.dst,
    });

    DateTime startDate;
    DateTime endDate;
    OpenHouseTimeZone timeZone;
    bool dst;

    factory OpenHouse.fromJson(Map<String, dynamic> json) => OpenHouse(
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        timeZone: openHouseTimeZoneValues.map[json["time_zone"]],
        dst: json["dst"],
    );

    Map<String, dynamic> toJson() => {
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
        "time_zone": openHouseTimeZoneValues.reverse[timeZone],
        "dst": dst,
    };
}

enum OpenHouseTimeZone { EST }

final openHouseTimeZoneValues = EnumValues({
    "EST": OpenHouseTimeZone.EST
});

enum PropSubType { COOP, CONDOS, CONDO, TOWNHOMES }

final propSubTypeValues = EnumValues({
    "condo": PropSubType.CONDO,
    "condos": PropSubType.CONDOS,
    "coop": PropSubType.COOP,
    "townhomes": PropSubType.TOWNHOMES
});

enum PropType { MULTI_FAMILY, CONDO, SINGLE_FAMILY, APARTMENT, LAND }

final propTypeValues = EnumValues({
    "apartment": PropType.APARTMENT,
    "condo": PropType.CONDO,
    "land": PropType.LAND,
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

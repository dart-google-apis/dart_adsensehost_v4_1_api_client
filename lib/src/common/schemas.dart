part of adsensehost_v4_1_api_client;

class Account {

  /** Unique identifier of this account. */
  String id;

  /** Kind of resource this is, in this case adsensehost#account. */
  String kind;

  /** Name of this account. */
  String name;

  /** Approval status of this account. One of: PENDING, APPROVED, DISABLED. */
  String status;

  /** Create new Account from JSON data */
  Account.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Account */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Account */
  String toString() => JSON.stringify(this.toJson());

}

class Accounts {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The accounts returned in this list response. */
  List<Account> items;

  /** Kind of list this is, in this case adsensehost#accounts. */
  String kind;

  /** Create new Accounts from JSON data */
  Accounts.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Account.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Accounts */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Accounts */
  String toString() => JSON.stringify(this.toJson());

}

class AdClient {

  /** Whether this ad client is opted in to ARC. */
  bool arcOptIn;

  /** Unique identifier of this ad client. */
  String id;

  /** Kind of resource this is, in this case adsensehost#adClient. */
  String kind;

  /** This ad client's product code, which corresponds to the PRODUCT_CODE report dimension. */
  String productCode;

  /** Whether this ad client supports being reported on. */
  bool supportsReporting;

  /** Create new AdClient from JSON data */
  AdClient.fromJson(Map json) {
    if (json.containsKey("arcOptIn")) {
      arcOptIn = json["arcOptIn"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCode")) {
      productCode = json["productCode"];
    }
    if (json.containsKey("supportsReporting")) {
      supportsReporting = json["supportsReporting"];
    }
  }

  /** Create JSON Object for AdClient */
  Map toJson() {
    var output = new Map();

    if (arcOptIn != null) {
      output["arcOptIn"] = arcOptIn;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCode != null) {
      output["productCode"] = productCode;
    }
    if (supportsReporting != null) {
      output["supportsReporting"] = supportsReporting;
    }

    return output;
  }

  /** Return String representation of AdClient */
  String toString() => JSON.stringify(this.toJson());

}

class AdClients {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ad clients returned in this list response. */
  List<AdClient> items;

  /** Kind of list this is, in this case adsensehost#adClients. */
  String kind;

  /** Continuation token used to page through ad clients. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new AdClients from JSON data */
  AdClients.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AdClient.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdClients */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdClients */
  String toString() => JSON.stringify(this.toJson());

}

class AdCode {

  /** The ad code snippet. */
  String adCode;

  /** Kind this is, in this case adsensehost#adCode. */
  String kind;

  /** Create new AdCode from JSON data */
  AdCode.fromJson(Map json) {
    if (json.containsKey("adCode")) {
      adCode = json["adCode"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AdCode */
  Map toJson() {
    var output = new Map();

    if (adCode != null) {
      output["adCode"] = adCode;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AdCode */
  String toString() => JSON.stringify(this.toJson());

}

class AdStyle {

  /** The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
  AdStyleColors colors;

  /** The style of the corners in the ad. Possible values are SQUARE, SLIGHTLY_ROUNDED and VERY_ROUNDED. */
  String corners;

  /** The font which is included in the style. */
  AdStyleFont font;

  /** Kind this is, in this case adsensehost#adStyle. */
  String kind;

  /** Create new AdStyle from JSON data */
  AdStyle.fromJson(Map json) {
    if (json.containsKey("colors")) {
      colors = new AdStyleColors.fromJson(json["colors"]);
    }
    if (json.containsKey("corners")) {
      corners = json["corners"];
    }
    if (json.containsKey("font")) {
      font = new AdStyleFont.fromJson(json["font"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AdStyle */
  Map toJson() {
    var output = new Map();

    if (colors != null) {
      output["colors"] = colors.toJson();
    }
    if (corners != null) {
      output["corners"] = corners;
    }
    if (font != null) {
      output["font"] = font.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AdStyle */
  String toString() => JSON.stringify(this.toJson());

}

/** The font which is included in the style. */
class AdStyleFont {

  /** The family of the font. Possible values are: ACCOUNT_DEFAULT_FAMILY, ADSENSE_DEFAULT_FAMILY, ARIAL, TIMES and VERDANA. */
  String family;

  /** The size of the font. Possible values are: ACCOUNT_DEFAULT_SIZE, ADSENSE_DEFAULT_SIZE, SMALL, MEDIUM and LARGE. */
  String size;

  /** Create new AdStyleFont from JSON data */
  AdStyleFont.fromJson(Map json) {
    if (json.containsKey("family")) {
      family = json["family"];
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
  }

  /** Create JSON Object for AdStyleFont */
  Map toJson() {
    var output = new Map();

    if (family != null) {
      output["family"] = family;
    }
    if (size != null) {
      output["size"] = size;
    }

    return output;
  }

  /** Return String representation of AdStyleFont */
  String toString() => JSON.stringify(this.toJson());

}

/** The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
class AdStyleColors {

  /** The color of the ad background. */
  String background;

  /** The color of the ad border. */
  String border;

  /** The color of the ad text. */
  String text;

  /** The color of the ad title. */
  String title;

  /** The color of the ad url. */
  String url;

  /** Create new AdStyleColors from JSON data */
  AdStyleColors.fromJson(Map json) {
    if (json.containsKey("background")) {
      background = json["background"];
    }
    if (json.containsKey("border")) {
      border = json["border"];
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AdStyleColors */
  Map toJson() {
    var output = new Map();

    if (background != null) {
      output["background"] = background;
    }
    if (border != null) {
      output["border"] = border;
    }
    if (text != null) {
      output["text"] = text;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AdStyleColors */
  String toString() => JSON.stringify(this.toJson());

}

class AdUnit {

  /** Identity code of this ad unit, not necessarily unique across ad clients. */
  String code;

  /** Settings specific to content ads (AFC) and highend mobile content ads (AFMC). */
  AdUnitContentAdsSettings contentAdsSettings;

  /** Custom style information specific to this ad unit. */
  AdStyle customStyle;

  /** Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  String id;

  /** Kind of resource this is, in this case adsensehost#adUnit. */
  String kind;

  /** Settings specific to WAP mobile content ads (AFMC). */
  AdUnitMobileContentAdsSettings mobileContentAdsSettings;

  /** Name of this ad unit. */
  String name;

  /** Status of this ad unit. Possible values are:
NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.

ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.

INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days. */
  String status;

  /** Create new AdUnit from JSON data */
  AdUnit.fromJson(Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("contentAdsSettings")) {
      contentAdsSettings = new AdUnitContentAdsSettings.fromJson(json["contentAdsSettings"]);
    }
    if (json.containsKey("customStyle")) {
      customStyle = new AdStyle.fromJson(json["customStyle"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mobileContentAdsSettings")) {
      mobileContentAdsSettings = new AdUnitMobileContentAdsSettings.fromJson(json["mobileContentAdsSettings"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for AdUnit */
  Map toJson() {
    var output = new Map();

    if (code != null) {
      output["code"] = code;
    }
    if (contentAdsSettings != null) {
      output["contentAdsSettings"] = contentAdsSettings.toJson();
    }
    if (customStyle != null) {
      output["customStyle"] = customStyle.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (mobileContentAdsSettings != null) {
      output["mobileContentAdsSettings"] = mobileContentAdsSettings.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of AdUnit */
  String toString() => JSON.stringify(this.toJson());

}

/** Settings specific to content ads (AFC) and highend mobile content ads (AFMC). */
class AdUnitContentAdsSettings {

  /** The backup option to be used in instances where no ad is available. */
  AdUnitContentAdsSettingsBackupOption backupOption;

  /** Size of this ad unit. Size values are in the form SIZE_{width}_{height}. */
  String size;

  /** Type of this ad unit. Possible values are TEXT, TEXT_IMAGE, IMAGE and LINK. */
  String type;

  /** Create new AdUnitContentAdsSettings from JSON data */
  AdUnitContentAdsSettings.fromJson(Map json) {
    if (json.containsKey("backupOption")) {
      backupOption = new AdUnitContentAdsSettingsBackupOption.fromJson(json["backupOption"]);
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdUnitContentAdsSettings */
  Map toJson() {
    var output = new Map();

    if (backupOption != null) {
      output["backupOption"] = backupOption.toJson();
    }
    if (size != null) {
      output["size"] = size;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdUnitContentAdsSettings */
  String toString() => JSON.stringify(this.toJson());

}

/** The backup option to be used in instances where no ad is available. */
class AdUnitContentAdsSettingsBackupOption {

  /** Color to use when type is set to COLOR. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
  String color;

  /** Type of the backup option. Possible values are BLANK, COLOR and URL. */
  String type;

  /** URL to use when type is set to URL. */
  String url;

  /** Create new AdUnitContentAdsSettingsBackupOption from JSON data */
  AdUnitContentAdsSettingsBackupOption.fromJson(Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AdUnitContentAdsSettingsBackupOption */
  Map toJson() {
    var output = new Map();

    if (color != null) {
      output["color"] = color;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AdUnitContentAdsSettingsBackupOption */
  String toString() => JSON.stringify(this.toJson());

}

/** Settings specific to WAP mobile content ads (AFMC). */
class AdUnitMobileContentAdsSettings {

  /** The markup language to use for this ad unit. */
  String markupLanguage;

  /** The scripting language to use for this ad unit. */
  String scriptingLanguage;

  /** Size of this ad unit. */
  String size;

  /** Type of this ad unit. */
  String type;

  /** Create new AdUnitMobileContentAdsSettings from JSON data */
  AdUnitMobileContentAdsSettings.fromJson(Map json) {
    if (json.containsKey("markupLanguage")) {
      markupLanguage = json["markupLanguage"];
    }
    if (json.containsKey("scriptingLanguage")) {
      scriptingLanguage = json["scriptingLanguage"];
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdUnitMobileContentAdsSettings */
  Map toJson() {
    var output = new Map();

    if (markupLanguage != null) {
      output["markupLanguage"] = markupLanguage;
    }
    if (scriptingLanguage != null) {
      output["scriptingLanguage"] = scriptingLanguage;
    }
    if (size != null) {
      output["size"] = size;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdUnitMobileContentAdsSettings */
  String toString() => JSON.stringify(this.toJson());

}

class AdUnits {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ad units returned in this list response. */
  List<AdUnit> items;

  /** Kind of list this is, in this case adsensehost#adUnits. */
  String kind;

  /** Continuation token used to page through ad units. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new AdUnits from JSON data */
  AdUnits.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AdUnit.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdUnits */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdUnits */
  String toString() => JSON.stringify(this.toJson());

}

class AssociationSession {

  /** Hosted account id of the associated publisher after association. Present if status is ACCEPTED. */
  String accountId;

  /** Unique identifier of this association session. */
  String id;

  /** Kind of resource this is, in this case adsensehost#associationSession. */
  String kind;

  /** The products to associate with the user. Options: AFC, AFF, AFS, AFMC */
  List<String> productCodes;

  /** Redirect URL of this association session. Used to redirect users into the AdSense association flow. */
  String redirectUrl;

  /** Status of the completed association, available once the association callback token has been verified. One of ACCEPTED, REJECTED, or ERROR. */
  String status;

  /** The preferred locale of the user themselves when going through the AdSense association flow. */
  String userLocale;

  /** The locale of the user's hosted website. */
  String websiteLocale;

  /** The URL of the user's hosted website. */
  String websiteUrl;

  /** Create new AssociationSession from JSON data */
  AssociationSession.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCodes")) {
      productCodes = [];
      json["productCodes"].forEach((item) {
        productCodes.add(item);
      });
    }
    if (json.containsKey("redirectUrl")) {
      redirectUrl = json["redirectUrl"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("userLocale")) {
      userLocale = json["userLocale"];
    }
    if (json.containsKey("websiteLocale")) {
      websiteLocale = json["websiteLocale"];
    }
    if (json.containsKey("websiteUrl")) {
      websiteUrl = json["websiteUrl"];
    }
  }

  /** Create JSON Object for AssociationSession */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCodes != null) {
      output["productCodes"] = new List();
      productCodes.forEach((item) {
        output["productCodes"].add(item);
      });
    }
    if (redirectUrl != null) {
      output["redirectUrl"] = redirectUrl;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (userLocale != null) {
      output["userLocale"] = userLocale;
    }
    if (websiteLocale != null) {
      output["websiteLocale"] = websiteLocale;
    }
    if (websiteUrl != null) {
      output["websiteUrl"] = websiteUrl;
    }

    return output;
  }

  /** Return String representation of AssociationSession */
  String toString() => JSON.stringify(this.toJson());

}

class CustomChannel {

  /** Code of this custom channel, not necessarily unique across ad clients. */
  String code;

  /** Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  String id;

  /** Kind of resource this is, in this case adsensehost#customChannel. */
  String kind;

  /** Name of this custom channel. */
  String name;

  /** Create new CustomChannel from JSON data */
  CustomChannel.fromJson(Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for CustomChannel */
  Map toJson() {
    var output = new Map();

    if (code != null) {
      output["code"] = code;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of CustomChannel */
  String toString() => JSON.stringify(this.toJson());

}

class CustomChannels {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The custom channels returned in this list response. */
  List<CustomChannel> items;

  /** Kind of list this is, in this case adsensehost#customChannels. */
  String kind;

  /** Continuation token used to page through custom channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new CustomChannels from JSON data */
  CustomChannels.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CustomChannel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CustomChannels */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CustomChannels */
  String toString() => JSON.stringify(this.toJson());

}

class Report {

  /** The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  List<String> averages;

  /** The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request. */
  List<ReportHeaders> headers;

  /** Kind this is, in this case adsensehost#report. */
  String kind;

  /** The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit. */
  String totalMatchedRows;

  /** The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  List<String> totals;

  /** Any warnings associated with generation of the report. */
  List<String> warnings;

  /** Create new Report from JSON data */
  Report.fromJson(Map json) {
    if (json.containsKey("averages")) {
      averages = [];
      json["averages"].forEach((item) {
        averages.add(item);
      });
    }
    if (json.containsKey("headers")) {
      headers = [];
      json["headers"].forEach((item) {
        headers.add(new ReportHeaders.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalMatchedRows")) {
      totalMatchedRows = json["totalMatchedRows"];
    }
    if (json.containsKey("totals")) {
      totals = [];
      json["totals"].forEach((item) {
        totals.add(item);
      });
    }
    if (json.containsKey("warnings")) {
      warnings = [];
      json["warnings"].forEach((item) {
        warnings.add(item);
      });
    }
  }

  /** Create JSON Object for Report */
  Map toJson() {
    var output = new Map();

    if (averages != null) {
      output["averages"] = new List();
      averages.forEach((item) {
        output["averages"].add(item);
      });
    }
    if (headers != null) {
      output["headers"] = new List();
      headers.forEach((item) {
        output["headers"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (totalMatchedRows != null) {
      output["totalMatchedRows"] = totalMatchedRows;
    }
    if (totals != null) {
      output["totals"] = new List();
      totals.forEach((item) {
        output["totals"].add(item);
      });
    }
    if (warnings != null) {
      output["warnings"] = new List();
      warnings.forEach((item) {
        output["warnings"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Report */
  String toString() => JSON.stringify(this.toJson());

}

class ReportHeaders {

  /** The currency of this column. Only present if the header type is METRIC_CURRENCY. */
  String currency;

  /** The name of the header. */
  String name;

  /** The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or METRIC_CURRENCY. */
  String type;

  /** Create new ReportHeaders from JSON data */
  ReportHeaders.fromJson(Map json) {
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ReportHeaders */
  Map toJson() {
    var output = new Map();

    if (currency != null) {
      output["currency"] = currency;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ReportHeaders */
  String toString() => JSON.stringify(this.toJson());

}

class UrlChannel {

  /** Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  String id;

  /** Kind of resource this is, in this case adsensehost#urlChannel. */
  String kind;

  /** URL Pattern of this URL channel. Does not include "http://" or "https://". Example: www.example.com/home */
  String urlPattern;

  /** Create new UrlChannel from JSON data */
  UrlChannel.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("urlPattern")) {
      urlPattern = json["urlPattern"];
    }
  }

  /** Create JSON Object for UrlChannel */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (urlPattern != null) {
      output["urlPattern"] = urlPattern;
    }

    return output;
  }

  /** Return String representation of UrlChannel */
  String toString() => JSON.stringify(this.toJson());

}

class UrlChannels {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The URL channels returned in this list response. */
  List<UrlChannel> items;

  /** Kind of list this is, in this case adsensehost#urlChannels. */
  String kind;

  /** Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  String nextPageToken;

  /** Create new UrlChannels from JSON data */
  UrlChannels.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new UrlChannel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for UrlChannels */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of UrlChannels */
  String toString() => JSON.stringify(this.toJson());

}


part of adsensehost_v4_1_api_client;

class AccountsResource_ extends Resource {

  AccountsAdclientsResource_ _adclients;
  AccountsAdclientsResource_ get adclients => _adclients;
  AccountsAdunitsResource_ _adunits;
  AccountsAdunitsResource_ get adunits => _adunits;
  AccountsReportsResource_ _reports;
  AccountsReportsResource_ get reports => _reports;

  AccountsResource_(Client client) : super(client) {
  _adclients = new AccountsAdclientsResource_(client);
  _adunits = new AccountsAdunitsResource_(client);
  _reports = new AccountsReportsResource_(client);
  }

  /**
   * Get information about the selected associated AdSense account.
   *
   * [accountId] - Account to get information about.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Account> get(core.String accountId, {core.Map optParams}) {
    var url = "accounts/{accountId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Account.fromJson(data));
  }

  /**
   * List hosted accounts associated with this AdSense account by ad client id.
   *
   * [filterAdClientId] - Ad clients to list accounts for.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Accounts> list(core.String filterAdClientId, {core.Map optParams}) {
    var url = "accounts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (filterAdClientId == null) paramErrors.add("filterAdClientId is required");
    if (filterAdClientId != null) queryParams["filterAdClientId"] = filterAdClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Accounts.fromJson(data));
  }
}

class AccountsAdclientsResource_ extends Resource {

  AccountsAdclientsResource_(Client client) : super(client) {
  }

  /**
   * Get information about one of the ad clients in the specified publisher's AdSense account.
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdClient> get(core.String accountId, core.String adClientId, {core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdClient.fromJson(data));
  }

  /**
   * List all hosted ad clients in the specified hosted account.
   *
   * [accountId] - Account for which to list ad clients.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdClients> list(core.String accountId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "accounts/{accountId}/adclients";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdClients.fromJson(data));
  }
}

class AccountsAdunitsResource_ extends Resource {

  AccountsAdunitsResource_(Client client) : super(client) {
  }

  /**
   * Delete the specified ad unit from the specified publisher AdSense account.
   *
   * [accountId] - Account which contains the ad unit.
   *
   * [adClientId] - Ad client for which to get ad unit.
   *
   * [adUnitId] - Ad unit to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnit> delete(core.String accountId, core.String adClientId, core.String adUnitId, {core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdUnit.fromJson(data));
  }

  /**
   * Get the specified host ad unit in this AdSense account.
   *
   * [accountId] - Account which contains the ad unit.
   *
   * [adClientId] - Ad client for which to get ad unit.
   *
   * [adUnitId] - Ad unit to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnit> get(core.String accountId, core.String adClientId, core.String adUnitId, {core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdUnit.fromJson(data));
  }

  /**
   * Get ad code for the specified ad unit, attaching the specified host custom channels.
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client with contains the ad unit.
   *
   * [adUnitId] - Ad unit to get the code for.
   *
   * [hostCustomChannelId] - Host custom channel to attach to the ad code.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdCode> getAdCode(core.String accountId, core.String adClientId, core.String adUnitId, {core.String hostCustomChannelId, core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/adcode";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (hostCustomChannelId != null) queryParams["hostCustomChannelId"] = hostCustomChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdCode.fromJson(data));
  }

  /**
   * Insert the supplied ad unit into the specified publisher AdSense account.
   *
   * [request] - AdUnit to send in this request
   *
   * [accountId] - Account which will contain the ad unit.
   *
   * [adClientId] - Ad client into which to insert the ad unit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnit> insert(AdUnit request, core.String accountId, core.String adClientId, {core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdUnit.fromJson(data));
  }

  /**
   * List all ad units in the specified publisher's AdSense account.
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnits> list(core.String accountId, core.String adClientId, {core.bool includeInactive, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdUnits.fromJson(data));
  }

  /**
   * Update the supplied ad unit in the specified publisher AdSense account. This method supports patch semantics.
   *
   * [request] - AdUnit to send in this request
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client which contains the ad unit.
   *
   * [adUnitId] - Ad unit to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnit> patch(AdUnit request, core.String accountId, core.String adClientId, core.String adUnitId, {core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) queryParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdUnit.fromJson(data));
  }

  /**
   * Update the supplied ad unit in the specified publisher AdSense account.
   *
   * [request] - AdUnit to send in this request
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client which contains the ad unit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdUnit> update(AdUnit request, core.String accountId, core.String adClientId, {core.Map optParams}) {
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdUnit.fromJson(data));
  }
}

class AccountsReportsResource_ extends Resource {

  AccountsReportsResource_(Client client) : super(client) {
  }

  /**
   * Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [accountId] - Hosted account upon which to report.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [dimension] - Dimensions to base the report on.
   *
   * [filter] - Filters to be run on the report.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> generate(core.String accountId, core.String startDate, core.String endDate, {core.String dimension, core.String filter, core.String locale, core.int maxResults, core.String metric, core.String sort, core.int startIndex, core.Map optParams}) {
    var url = "accounts/{accountId}/reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }
}

class AdclientsResource_ extends Resource {

  AdclientsResource_(Client client) : super(client) {
  }

  /**
   * Get information about one of the ad clients in the Host AdSense account.
   *
   * [adClientId] - Ad client to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdClient> get(core.String adClientId, {core.Map optParams}) {
    var url = "adclients/{adClientId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdClient.fromJson(data));
  }

  /**
   * List all host ad clients in this AdSense account.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AdClients> list({core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "adclients";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AdClients.fromJson(data));
  }
}

class AssociationsessionsResource_ extends Resource {

  AssociationsessionsResource_(Client client) : super(client) {
  }

  /**
   * Create an association session for initiating an association with an AdSense user.
   *
   * [productCode] - Products to associate with the user.
   *   Allowed values:
   *     AFC - AdSense For Content
   *     AFG - AdSense For Games
   *     AFMC - AdSense For Mobile Content
   *     AFS - AdSense For Search
   *     AFV - AdSense For Video
   *
   * [websiteUrl] - The URL of the user's hosted website.
   *
   * [userLocale] - The preferred locale of the user.
   *
   * [websiteLocale] - The locale of the user's hosted website.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AssociationSession> start(core.String productCode, core.String websiteUrl, {core.String userLocale, core.String websiteLocale, core.Map optParams}) {
    var url = "associationsessions/start";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (productCode == null) paramErrors.add("productCode is required");
    if (productCode != null && !["AFC", "AFG", "AFMC", "AFS", "AFV"].contains(productCode)) {
      paramErrors.add("Allowed values for productCode: AFC, AFG, AFMC, AFS, AFV");
    }
    if (productCode != null) queryParams["productCode"] = productCode;
    if (userLocale != null) queryParams["userLocale"] = userLocale;
    if (websiteLocale != null) queryParams["websiteLocale"] = websiteLocale;
    if (websiteUrl == null) paramErrors.add("websiteUrl is required");
    if (websiteUrl != null) queryParams["websiteUrl"] = websiteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AssociationSession.fromJson(data));
  }

  /**
   * Verify an association session after the association callback returns from AdSense signup.
   *
   * [token] - The token returned to the association callback URL.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AssociationSession> verify(core.String token, {core.Map optParams}) {
    var url = "associationsessions/verify";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (token == null) paramErrors.add("token is required");
    if (token != null) queryParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AssociationSession.fromJson(data));
  }
}

class CustomchannelsResource_ extends Resource {

  CustomchannelsResource_(Client client) : super(client) {
  }

  /**
   * Delete a specific custom channel from the host AdSense account.
   *
   * [adClientId] - Ad client from which to delete the custom channel.
   *
   * [customChannelId] - Custom channel to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> delete(core.String adClientId, core.String customChannelId, {core.Map optParams}) {
    var url = "adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannel.fromJson(data));
  }

  /**
   * Get a specific custom channel from the host AdSense account.
   *
   * [adClientId] - Ad client from which to get the custom channel.
   *
   * [customChannelId] - Custom channel to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> get(core.String adClientId, core.String customChannelId, {core.Map optParams}) {
    var url = "adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannel.fromJson(data));
  }

  /**
   * Add a new custom channel to the host AdSense account.
   *
   * [request] - CustomChannel to send in this request
   *
   * [adClientId] - Ad client to which the new custom channel will be added.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> insert(CustomChannel request, core.String adClientId, {core.Map optParams}) {
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannel.fromJson(data));
  }

  /**
   * List all host custom channels in this AdSense account.
   *
   * [adClientId] - Ad client for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannels> list(core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannels.fromJson(data));
  }

  /**
   * Update a custom channel in the host AdSense account. This method supports patch semantics.
   *
   * [request] - CustomChannel to send in this request
   *
   * [adClientId] - Ad client in which the custom channel will be updated.
   *
   * [customChannelId] - Custom channel to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> patch(CustomChannel request, core.String adClientId, core.String customChannelId, {core.Map optParams}) {
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) queryParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannel.fromJson(data));
  }

  /**
   * Update a custom channel in the host AdSense account.
   *
   * [request] - CustomChannel to send in this request
   *
   * [adClientId] - Ad client in which the custom channel will be updated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CustomChannel> update(CustomChannel request, core.String adClientId, {core.Map optParams}) {
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CustomChannel.fromJson(data));
  }
}

class ReportsResource_ extends Resource {

  ReportsResource_(Client client) : super(client) {
  }

  /**
   * Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [dimension] - Dimensions to base the report on.
   *
   * [filter] - Filters to be run on the report.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> generate(core.String startDate, core.String endDate, {core.String dimension, core.String filter, core.String locale, core.int maxResults, core.String metric, core.String sort, core.int startIndex, core.Map optParams}) {
    var url = "reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }
}

class UrlchannelsResource_ extends Resource {

  UrlchannelsResource_(Client client) : super(client) {
  }

  /**
   * Delete a URL channel from the host AdSense account.
   *
   * [adClientId] - Ad client from which to delete the URL channel.
   *
   * [urlChannelId] - URL channel to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlChannel> delete(core.String adClientId, core.String urlChannelId, {core.Map optParams}) {
    var url = "adclients/{adClientId}/urlchannels/{urlChannelId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (urlChannelId == null) paramErrors.add("urlChannelId is required");
    if (urlChannelId != null) urlParams["urlChannelId"] = urlChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlChannel.fromJson(data));
  }

  /**
   * Add a new URL channel to the host AdSense account.
   *
   * [request] - UrlChannel to send in this request
   *
   * [adClientId] - Ad client to which the new URL channel will be added.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlChannel> insert(UrlChannel request, core.String adClientId, {core.Map optParams}) {
    var url = "adclients/{adClientId}/urlchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlChannel.fromJson(data));
  }

  /**
   * List all host URL channels in the host AdSense account.
   *
   * [adClientId] - Ad client for which to list URL channels.
   *
   * [maxResults] - The maximum number of URL channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlChannels> list(core.String adClientId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "adclients/{adClientId}/urlchannels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlChannels.fromJson(data));
  }
}


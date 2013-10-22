# google_adsensehost_v4_1_api

### Description

Auto-generated client library for accessing the adsensehost v4.1 API.

#### ![Logo](http://www.google.com/images/icons/product/adsense-16.png) AdSense Host API - adsensehost v4.1

Gives AdSense Hosts access to report generation, ad code generation, and publisher management capabilities.

Official API documentation: https://developers.google.com/adsense/host/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_adsensehost_v4_1_api: '>=0.4.9'
```

For web applications:

```
  import "package:google_adsensehost_v4_1_api/adsensehost_v4_1_api_browser.dart" as adsensehostclient;
```

For console application:

```
  import "package:google_adsensehost_v4_1_api/adsensehost_v4_1_api_console.dart" as adsensehostclient;
```

Working with out authentication the following constructor can be called:

```
  var adsensehost = new adsensehostclient.Adsensehost();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var adsensehost = new adsensehostclient.Adsensehost(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```

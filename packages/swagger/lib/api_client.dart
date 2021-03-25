part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://api.rawg.io/api"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Developer':
          return new Developer.fromJson(value);
        case 'DeveloperSingle':
          return new DeveloperSingle.fromJson(value);
        case 'Game':
          return new Game.fromJson(value);
        case 'GameEsrbRating':
          return new GameEsrbRating.fromJson(value);
        case 'GamePersonList':
          return new GamePersonList.fromJson(value);
        case 'GamePlatform':
          return new GamePlatform.fromJson(value);
        case 'GamePlatformMetacritic':
          return new GamePlatformMetacritic.fromJson(value);
        case 'GamePlatforms':
          return new GamePlatforms.fromJson(value);
        case 'GameRequirements':
          return new GameRequirements.fromJson(value);
        case 'GameSingle':
          return new GameSingle.fromJson(value);
        case 'GameStoreFull':
          return new GameStoreFull.fromJson(value);
        case 'Genre':
          return new Genre.fromJson(value);
        case 'GenreSingle':
          return new GenreSingle.fromJson(value);
        case 'InlineResponse200':
          return new InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return new InlineResponse2001.fromJson(value);
        case 'InlineResponse20010':
          return new InlineResponse20010.fromJson(value);
        case 'InlineResponse20011':
          return new InlineResponse20011.fromJson(value);
        case 'InlineResponse20012':
          return new InlineResponse20012.fromJson(value);
        case 'InlineResponse20013':
          return new InlineResponse20013.fromJson(value);
        case 'InlineResponse2002':
          return new InlineResponse2002.fromJson(value);
        case 'InlineResponse2003':
          return new InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return new InlineResponse2004.fromJson(value);
        case 'InlineResponse2005':
          return new InlineResponse2005.fromJson(value);
        case 'InlineResponse2006':
          return new InlineResponse2006.fromJson(value);
        case 'InlineResponse2007':
          return new InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return new InlineResponse2008.fromJson(value);
        case 'InlineResponse2009':
          return new InlineResponse2009.fromJson(value);
        case 'Movie':
          return new Movie.fromJson(value);
        case 'ParentAchievement':
          return new ParentAchievement.fromJson(value);
        case 'Person':
          return new Person.fromJson(value);
        case 'PersonSingle':
          return new PersonSingle.fromJson(value);
        case 'Platform':
          return new Platform.fromJson(value);
        case 'PlatformParentSingle':
          return new PlatformParentSingle.fromJson(value);
        case 'PlatformSingle':
          return new PlatformSingle.fromJson(value);
        case 'Position':
          return new Position.fromJson(value);
        case 'Publisher':
          return new Publisher.fromJson(value);
        case 'PublisherSingle':
          return new PublisherSingle.fromJson(value);
        case 'Reddit':
          return new Reddit.fromJson(value);
        case 'ScreenShot':
          return new ScreenShot.fromJson(value);
        case 'Store':
          return new Store.fromJson(value);
        case 'StoreSingle':
          return new StoreSingle.fromJson(value);
        case 'Tag':
          return new Tag.fromJson(value);
        case 'TagSingle':
          return new TagSingle.fromJson(value);
        case 'Twitch':
          return new Twitch.fromJson(value);
        case 'Youtube':
          return new Youtube.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
        .where((p) => p.value != null)
        .map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null)
        throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}

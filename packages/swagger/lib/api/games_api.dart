part of swagger.api;

class GamesApi {
  final ApiClient apiClient;

  GamesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of game achievements.
  ///
  ///
  Future<ParentAchievement> gamesAchievementsRead(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/games/{id}/achievements"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'ParentAchievement')
          as ParentAchievement;
    } else {
      return null;
    }
  }

  /// Get a list of DLC&#39;s for the game, GOTY and other editions, companion apps, etc.
  ///
  ///
  Future<InlineResponse2003> gamesAdditionsList(String gamePk,
      {int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set
    if (gamePk == null) {
      throw new ApiException(400, "Missing required param: gamePk");
    }

    // create path and map variables
    String path = "/games/{game_pk}/additions"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "game_pk" + "}", gamePk.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2003')
          as InlineResponse2003;
    } else {
      return null;
    }
  }

  /// Get a list of individual creators that were part of the development team.
  ///
  ///
  Future<InlineResponse2005> gamesDevelopmentTeamList(String gamePk,
      {String ordering, int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set
    if (gamePk == null) {
      throw new ApiException(400, "Missing required param: gamePk");
    }

    // create path and map variables
    String path = "/games/{game_pk}/development-team"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "game_pk" + "}", gamePk.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (ordering != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ordering", ordering));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2005')
          as InlineResponse2005;
    } else {
      return null;
    }
  }

  /// Get a list of games that are part of the same series.
  ///
  ///
  Future<InlineResponse2003> gamesGameSeriesList(String gamePk,
      {int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set
    if (gamePk == null) {
      throw new ApiException(400, "Missing required param: gamePk");
    }

    // create path and map variables
    String path = "/games/{game_pk}/game-series"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "game_pk" + "}", gamePk.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2003')
          as InlineResponse2003;
    } else {
      return null;
    }
  }

  /// Get a list of games.
  ///
  ///
  Future<InlineResponse2003> gamesList(
      {int page,
      int pageSize,
      String search,
      bool searchPrecise,
      bool searchExact,
      String parentPlatforms,
      String platforms,
      String stores,
      String developers,
      String publishers,
      String genres,
      String tags,
      String creators,
      String dates,
      String updated,
      int platformsCount,
      String metacritic,
      int excludeCollection,
      bool excludeAdditions,
      bool excludeParents,
      bool excludeGameSeries,
      String ordering}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/games".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }
    if (search != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "search", search));
    }
    if (searchPrecise != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search_precise", searchPrecise));
    }
    if (searchExact != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "search_exact", searchExact));
    }
    if (parentPlatforms != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "parent_platforms", parentPlatforms));
    }
    if (platforms != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "platforms", platforms));
    }
    if (stores != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "stores", stores));
    }
    if (developers != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "developers", developers));
    }
    if (publishers != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "publishers", publishers));
    }
    if (genres != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "genres", genres));
    }
    if (tags != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "tags", tags));
    }
    if (creators != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "creators", creators));
    }
    if (dates != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "dates", dates));
    }
    if (updated != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "updated", updated));
    }
    if (platformsCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "platforms_count", platformsCount));
    }
    if (metacritic != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "metacritic", metacritic));
    }
    if (excludeCollection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "exclude_collection", excludeCollection));
    }
    if (excludeAdditions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "exclude_additions", excludeAdditions));
    }
    if (excludeParents != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "exclude_parents", excludeParents));
    }
    if (excludeGameSeries != null) {
      queryParams.addAll(_convertParametersForCollectionFormat(
          "", "exclude_game_series", excludeGameSeries));
    }
    if (ordering != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ordering", ordering));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2003')
          as InlineResponse2003;
    } else {
      return null;
    }
  }

  /// Get a list of game trailers.
  ///
  ///
  Future<Movie> gamesMoviesRead(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/games/{id}/movies"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Movie') as Movie;
    } else {
      return null;
    }
  }

  /// Get a list of parent games for DLC&#39;s and editions.
  ///
  ///
  Future<InlineResponse2003> gamesParentGamesList(String gamePk,
      {int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set
    if (gamePk == null) {
      throw new ApiException(400, "Missing required param: gamePk");
    }

    // create path and map variables
    String path = "/games/{game_pk}/parent-games"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "game_pk" + "}", gamePk.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2003')
          as InlineResponse2003;
    } else {
      return null;
    }
  }

  /// Get details of the game.
  ///
  ///
  Future<GameSingle> gamesRead(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/games/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'GameSingle') as GameSingle;
    } else {
      return null;
    }
  }

  /// Get a list of most recent posts from the game&#39;s subreddit.
  ///
  ///
  Future<Reddit> gamesRedditRead(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/games/{id}/reddit"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Reddit') as Reddit;
    } else {
      return null;
    }
  }

  /// Get screenshots for the game.
  ///
  ///
  Future<InlineResponse2006> gamesScreenshotsList(String gamePk,
      {String ordering, int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set
    if (gamePk == null) {
      throw new ApiException(400, "Missing required param: gamePk");
    }

    // create path and map variables
    String path = "/games/{game_pk}/screenshots"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "game_pk" + "}", gamePk.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (ordering != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ordering", ordering));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2006')
          as InlineResponse2006;
    } else {
      return null;
    }
  }

  /// Get The Sitemap Games list.
  ///
  ///
  Future<InlineResponse2004> gamesSitemapRead({int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/games/sitemap".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2004')
          as InlineResponse2004;
    } else {
      return null;
    }
  }

  /// Get links to the stores that sell the game.
  ///
  ///
  Future<InlineResponse2007> gamesStoresList(String gamePk,
      {String ordering, int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set
    if (gamePk == null) {
      throw new ApiException(400, "Missing required param: gamePk");
    }

    // create path and map variables
    String path = "/games/{game_pk}/stores"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "game_pk" + "}", gamePk.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (ordering != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "ordering", ordering));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'InlineResponse2007')
          as InlineResponse2007;
    } else {
      return null;
    }
  }

  /// Get a list of visually similar games, available only for business and enterprise API users.
  ///
  ///
  Future<GameSingle> gamesSuggestedRead(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/games/{id}/suggested"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'GameSingle') as GameSingle;
    } else {
      return null;
    }
  }

  /// Get streams on Twitch associated with the game, available only for business and enterprise API users.
  ///
  ///
  Future<Twitch> gamesTwitchRead(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/games/{id}/twitch"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Twitch') as Twitch;
    } else {
      return null;
    }
  }

  /// Get videos from YouTube associated with the game, available only for business and enterprise API users.
  ///
  ///
  Future<Youtube> gamesYoutubeRead(String id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/games/{id}/youtube"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Youtube') as Youtube;
    } else {
      return null;
    }
  }
}

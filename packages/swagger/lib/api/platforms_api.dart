part of swagger.api;

class PlatformsApi {
  final ApiClient apiClient;

  PlatformsApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get a list of video game platforms.
  ///
  ///
  Future<InlineResponse2009> platformsList(
      {String ordering, int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/platforms".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'InlineResponse2009')
          as InlineResponse2009;
    } else {
      return null;
    }
  }

  /// Get a list of parent platforms.
  ///
  /// For instance, for PS2 and PS4 the “parent platform” is PlayStation.
  Future<InlineResponse20010> platformsListsParentsList(
      {String ordering, int page, int pageSize}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/platforms/lists/parents".replaceAll("{format}", "json");

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
      return apiClient.deserialize(response.body, 'InlineResponse20010')
          as InlineResponse20010;
    } else {
      return null;
    }
  }

  /// Get details of the platform.
  ///
  ///
  Future<PlatformSingle> platformsRead(int id) async {
    Object postBody = null;

    // verify required params are set
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/platforms/{id}"
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
      return apiClient.deserialize(response.body, 'PlatformSingle')
          as PlatformSingle;
    } else {
      return null;
    }
  }
}

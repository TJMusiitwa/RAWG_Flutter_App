# swagger.api.PlatformsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**platformsList**](PlatformsApi.md#platformsList) | **GET** /platforms | Get a list of video game platforms.
[**platformsListsParentsList**](PlatformsApi.md#platformsListsParentsList) | **GET** /platforms/lists/parents | Get a list of parent platforms.
[**platformsRead**](PlatformsApi.md#platformsRead) | **GET** /platforms/{id} | Get details of the platform.


# **platformsList**
> InlineResponse2009 platformsList(ordering, page, pageSize)

Get a list of video game platforms.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PlatformsApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.platformsList(ordering, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling PlatformsApi->platformsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformsListsParentsList**
> InlineResponse20010 platformsListsParentsList(ordering, page, pageSize)

Get a list of parent platforms.

For instance, for PS2 and PS4 the “parent platform” is PlayStation.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PlatformsApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.platformsListsParentsList(ordering, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling PlatformsApi->platformsListsParentsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformsRead**
> PlatformSingle platformsRead(id)

Get details of the platform.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PlatformsApi();
var id = 56; // int | A unique integer value identifying this Platform.

try { 
    var result = api_instance.platformsRead(id);
    print(result);
} catch (e) {
    print("Exception when calling PlatformsApi->platformsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Platform. | 

### Return type

[**PlatformSingle**](PlatformSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


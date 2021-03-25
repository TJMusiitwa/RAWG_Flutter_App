# swagger.api.DevelopersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**developersList**](DevelopersApi.md#developersList) | **GET** /developers | Get a list of game developers.
[**developersRead**](DevelopersApi.md#developersRead) | **GET** /developers/{id} | Get details of the developer.


# **developersList**
> InlineResponse2002 developersList(page, pageSize)

Get a list of game developers.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevelopersApi();
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.developersList(page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling DevelopersApi->developersList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **developersRead**
> DeveloperSingle developersRead(id)

Get details of the developer.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevelopersApi();
var id = 56; // int | A unique integer value identifying this Developer.

try { 
    var result = api_instance.developersRead(id);
    print(result);
} catch (e) {
    print("Exception when calling DevelopersApi->developersRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Developer. | 

### Return type

[**DeveloperSingle**](DeveloperSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# swagger.api.CreatorRolesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creatorRolesList**](CreatorRolesApi.md#creatorRolesList) | **GET** /creator-roles | Get a list of creator positions (jobs).


# **creatorRolesList**
> InlineResponse200 creatorRolesList(page, pageSize)

Get a list of creator positions (jobs).



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CreatorRolesApi();
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.creatorRolesList(page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling CreatorRolesApi->creatorRolesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


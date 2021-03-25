# swagger.api.StoresApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storesList**](StoresApi.md#storesList) | **GET** /stores | Get a list of video game storefronts.
[**storesRead**](StoresApi.md#storesRead) | **GET** /stores/{id} | Get details of the store.


# **storesList**
> InlineResponse20012 storesList(ordering, page, pageSize)

Get a list of video game storefronts.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoresApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.storesList(ordering, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling StoresApi->storesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storesRead**
> StoreSingle storesRead(id)

Get details of the store.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new StoresApi();
var id = 56; // int | A unique integer value identifying this Store.

try { 
    var result = api_instance.storesRead(id);
    print(result);
} catch (e) {
    print("Exception when calling StoresApi->storesRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Store. | 

### Return type

[**StoreSingle**](StoreSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


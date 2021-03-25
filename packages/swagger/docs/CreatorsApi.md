# swagger.api.CreatorsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creatorsList**](CreatorsApi.md#creatorsList) | **GET** /creators | Get a list of game creators.
[**creatorsRead**](CreatorsApi.md#creatorsRead) | **GET** /creators/{id} | Get details of the creator.


# **creatorsList**
> InlineResponse2001 creatorsList(page, pageSize)

Get a list of game creators.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CreatorsApi();
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.creatorsList(page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling CreatorsApi->creatorsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creatorsRead**
> PersonSingle creatorsRead(id)

Get details of the creator.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CreatorsApi();
var id = id_example; // String | 

try { 
    var result = api_instance.creatorsRead(id);
    print(result);
} catch (e) {
    print("Exception when calling CreatorsApi->creatorsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**PersonSingle**](PersonSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


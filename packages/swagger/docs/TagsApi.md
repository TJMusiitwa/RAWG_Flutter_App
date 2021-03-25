# swagger.api.TagsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tagsList**](TagsApi.md#tagsList) | **GET** /tags | Get a list of tags.
[**tagsRead**](TagsApi.md#tagsRead) | **GET** /tags/{id} | Get details of the tag.


# **tagsList**
> InlineResponse20013 tagsList(page, pageSize)

Get a list of tags.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TagsApi();
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.tagsList(page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->tagsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagsRead**
> TagSingle tagsRead(id)

Get details of the tag.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TagsApi();
var id = 56; // int | A unique integer value identifying this Tag.

try { 
    var result = api_instance.tagsRead(id);
    print(result);
} catch (e) {
    print("Exception when calling TagsApi->tagsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Tag. | 

### Return type

[**TagSingle**](TagSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


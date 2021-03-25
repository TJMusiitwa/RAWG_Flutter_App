# swagger.api.PublishersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**publishersList**](PublishersApi.md#publishersList) | **GET** /publishers | Get a list of video game publishers.
[**publishersRead**](PublishersApi.md#publishersRead) | **GET** /publishers/{id} | Get details of the publisher.


# **publishersList**
> InlineResponse20011 publishersList(page, pageSize)

Get a list of video game publishers.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PublishersApi();
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.publishersList(page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->publishersList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publishersRead**
> PublisherSingle publishersRead(id)

Get details of the publisher.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PublishersApi();
var id = 56; // int | A unique integer value identifying this Publisher.

try { 
    var result = api_instance.publishersRead(id);
    print(result);
} catch (e) {
    print("Exception when calling PublishersApi->publishersRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Publisher. | 

### Return type

[**PublisherSingle**](PublisherSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


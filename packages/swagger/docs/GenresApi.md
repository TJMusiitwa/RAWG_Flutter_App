# swagger.api.GenresApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**genresList**](GenresApi.md#genresList) | **GET** /genres | Get a list of video game genres.
[**genresRead**](GenresApi.md#genresRead) | **GET** /genres/{id} | Get details of the genre.


# **genresList**
> InlineResponse2008 genresList(ordering, page, pageSize)

Get a list of video game genres.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GenresApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.genresList(ordering, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GenresApi->genresList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **genresRead**
> GenreSingle genresRead(id)

Get details of the genre.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GenresApi();
var id = 56; // int | A unique integer value identifying this Genre.

try { 
    var result = api_instance.genresRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GenresApi->genresRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Genre. | 

### Return type

[**GenreSingle**](GenreSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


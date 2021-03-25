# swagger.api.GamesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.rawg.io/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gamesAchievementsRead**](GamesApi.md#gamesAchievementsRead) | **GET** /games/{id}/achievements | Get a list of game achievements.
[**gamesAdditionsList**](GamesApi.md#gamesAdditionsList) | **GET** /games/{game_pk}/additions | Get a list of DLC&#39;s for the game, GOTY and other editions, companion apps, etc.
[**gamesDevelopmentTeamList**](GamesApi.md#gamesDevelopmentTeamList) | **GET** /games/{game_pk}/development-team | Get a list of individual creators that were part of the development team.
[**gamesGameSeriesList**](GamesApi.md#gamesGameSeriesList) | **GET** /games/{game_pk}/game-series | Get a list of games that are part of the same series.
[**gamesList**](GamesApi.md#gamesList) | **GET** /games | Get a list of games.
[**gamesMoviesRead**](GamesApi.md#gamesMoviesRead) | **GET** /games/{id}/movies | Get a list of game trailers.
[**gamesParentGamesList**](GamesApi.md#gamesParentGamesList) | **GET** /games/{game_pk}/parent-games | Get a list of parent games for DLC&#39;s and editions.
[**gamesRead**](GamesApi.md#gamesRead) | **GET** /games/{id} | Get details of the game.
[**gamesRedditRead**](GamesApi.md#gamesRedditRead) | **GET** /games/{id}/reddit | Get a list of most recent posts from the game&#39;s subreddit.
[**gamesScreenshotsList**](GamesApi.md#gamesScreenshotsList) | **GET** /games/{game_pk}/screenshots | Get screenshots for the game.
[**gamesSitemapRead**](GamesApi.md#gamesSitemapRead) | **GET** /games/sitemap | Get The Sitemap Games list.
[**gamesStoresList**](GamesApi.md#gamesStoresList) | **GET** /games/{game_pk}/stores | Get links to the stores that sell the game.
[**gamesSuggestedRead**](GamesApi.md#gamesSuggestedRead) | **GET** /games/{id}/suggested | Get a list of visually similar games, available only for business and enterprise API users.
[**gamesTwitchRead**](GamesApi.md#gamesTwitchRead) | **GET** /games/{id}/twitch | Get streams on Twitch associated with the game, available only for business and enterprise API users.
[**gamesYoutubeRead**](GamesApi.md#gamesYoutubeRead) | **GET** /games/{id}/youtube | Get videos from YouTube associated with the game, available only for business and enterprise API users.


# **gamesAchievementsRead**
> ParentAchievement gamesAchievementsRead(id)

Get a list of game achievements.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var id = id_example; // String | An ID or a slug identifying this Game.

try { 
    var result = api_instance.gamesAchievementsRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesAchievementsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| An ID or a slug identifying this Game. | 

### Return type

[**ParentAchievement**](ParentAchievement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesAdditionsList**
> InlineResponse2003 gamesAdditionsList(gamePk, page, pageSize)

Get a list of DLC's for the game, GOTY and other editions, companion apps, etc.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var gamePk = gamePk_example; // String | 
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.gamesAdditionsList(gamePk, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesAdditionsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamePk** | **String**|  | 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesDevelopmentTeamList**
> InlineResponse2005 gamesDevelopmentTeamList(gamePk, ordering, page, pageSize)

Get a list of individual creators that were part of the development team.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var gamePk = gamePk_example; // String | 
var ordering = ordering_example; // String | Which field to use when ordering the results.
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.gamesDevelopmentTeamList(gamePk, ordering, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesDevelopmentTeamList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamePk** | **String**|  | 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesGameSeriesList**
> InlineResponse2003 gamesGameSeriesList(gamePk, page, pageSize)

Get a list of games that are part of the same series.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var gamePk = gamePk_example; // String | 
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.gamesGameSeriesList(gamePk, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesGameSeriesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamePk** | **String**|  | 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesList**
> InlineResponse2003 gamesList(page, pageSize, search, searchPrecise, searchExact, parentPlatforms, platforms, stores, developers, publishers, genres, tags, creators, dates, updated, platformsCount, metacritic, excludeCollection, excludeAdditions, excludeParents, excludeGameSeries, ordering)

Get a list of games.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.
var search = search_example; // String | Search query.
var searchPrecise = true; // bool | Disable fuzziness for the search query.
var searchExact = true; // bool | Mark the search query as exact.
var parentPlatforms = parentPlatforms_example; // String | Filter by parent platforms, for example: `1,2,3`.
var platforms = platforms_example; // String | Filter by platforms, for example: `4,5`.
var stores = stores_example; // String | Filter by stores, for example: `5,6`.
var developers = developers_example; // String | Filter by developers, for example: `1612,18893` or `valve-software,feral-interactive`.
var publishers = publishers_example; // String | Filter by publishers, for example: `354,20987` or `electronic-arts,microsoft-studios`.
var genres = genres_example; // String | Filter by genres, for example: `4,51` or `action,indie`.
var tags = tags_example; // String | Filter by tags, for example: `31,7` or `singleplayer,multiplayer`.
var creators = creators_example; // String | Filter by creators, for example: `78,28` or `cris-velasco,mike-morasky`.
var dates = dates_example; // String | Filter by a release date, for example: `2010-01-01,2018-12-31.1960-01-01,1969-12-31`.
var updated = updated_example; // String | Filter by an update date, for example: `2020-12-01,2020-12-31`.
var platformsCount = 56; // int | Filter by platforms count, for example: `1`.
var metacritic = metacritic_example; // String | Filter by a metacritic rating, for example: `80,100`.
var excludeCollection = 56; // int | Exclude games from a particular collection, for example: `123`.
var excludeAdditions = true; // bool | Exclude additions.
var excludeParents = true; // bool | Exclude games which have additions.
var excludeGameSeries = true; // bool | Exclude games which included in a game series.
var ordering = ordering_example; // String | Available fields: `name`, `released`, `added`, `created`, `updated`, `rating`, `metacritic`. You can reverse the sort order adding a hyphen, for example: `-released`.

try { 
    var result = api_instance.gamesList(page, pageSize, search, searchPrecise, searchExact, parentPlatforms, platforms, stores, developers, publishers, genres, tags, creators, dates, updated, platformsCount, metacritic, excludeCollection, excludeAdditions, excludeParents, excludeGameSeries, ordering);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 
 **search** | **String**| Search query. | [optional] 
 **searchPrecise** | **bool**| Disable fuzziness for the search query. | [optional] 
 **searchExact** | **bool**| Mark the search query as exact. | [optional] 
 **parentPlatforms** | **String**| Filter by parent platforms, for example: &#x60;1,2,3&#x60;. | [optional] 
 **platforms** | **String**| Filter by platforms, for example: &#x60;4,5&#x60;. | [optional] 
 **stores** | **String**| Filter by stores, for example: &#x60;5,6&#x60;. | [optional] 
 **developers** | **String**| Filter by developers, for example: &#x60;1612,18893&#x60; or &#x60;valve-software,feral-interactive&#x60;. | [optional] 
 **publishers** | **String**| Filter by publishers, for example: &#x60;354,20987&#x60; or &#x60;electronic-arts,microsoft-studios&#x60;. | [optional] 
 **genres** | **String**| Filter by genres, for example: &#x60;4,51&#x60; or &#x60;action,indie&#x60;. | [optional] 
 **tags** | **String**| Filter by tags, for example: &#x60;31,7&#x60; or &#x60;singleplayer,multiplayer&#x60;. | [optional] 
 **creators** | **String**| Filter by creators, for example: &#x60;78,28&#x60; or &#x60;cris-velasco,mike-morasky&#x60;. | [optional] 
 **dates** | **String**| Filter by a release date, for example: &#x60;2010-01-01,2018-12-31.1960-01-01,1969-12-31&#x60;. | [optional] 
 **updated** | **String**| Filter by an update date, for example: &#x60;2020-12-01,2020-12-31&#x60;. | [optional] 
 **platformsCount** | **int**| Filter by platforms count, for example: &#x60;1&#x60;. | [optional] 
 **metacritic** | **String**| Filter by a metacritic rating, for example: &#x60;80,100&#x60;. | [optional] 
 **excludeCollection** | **int**| Exclude games from a particular collection, for example: &#x60;123&#x60;. | [optional] 
 **excludeAdditions** | **bool**| Exclude additions. | [optional] 
 **excludeParents** | **bool**| Exclude games which have additions. | [optional] 
 **excludeGameSeries** | **bool**| Exclude games which included in a game series. | [optional] 
 **ordering** | **String**| Available fields: &#x60;name&#x60;, &#x60;released&#x60;, &#x60;added&#x60;, &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;rating&#x60;, &#x60;metacritic&#x60;. You can reverse the sort order adding a hyphen, for example: &#x60;-released&#x60;. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesMoviesRead**
> Movie gamesMoviesRead(id)

Get a list of game trailers.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var id = id_example; // String | An ID or a slug identifying this Game.

try { 
    var result = api_instance.gamesMoviesRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesMoviesRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| An ID or a slug identifying this Game. | 

### Return type

[**Movie**](Movie.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesParentGamesList**
> InlineResponse2003 gamesParentGamesList(gamePk, page, pageSize)

Get a list of parent games for DLC's and editions.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var gamePk = gamePk_example; // String | 
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.gamesParentGamesList(gamePk, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesParentGamesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamePk** | **String**|  | 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesRead**
> GameSingle gamesRead(id)

Get details of the game.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var id = id_example; // String | An ID or a slug identifying this Game.

try { 
    var result = api_instance.gamesRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| An ID or a slug identifying this Game. | 

### Return type

[**GameSingle**](GameSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesRedditRead**
> Reddit gamesRedditRead(id)

Get a list of most recent posts from the game's subreddit.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var id = id_example; // String | An ID or a slug identifying this Game.

try { 
    var result = api_instance.gamesRedditRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesRedditRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| An ID or a slug identifying this Game. | 

### Return type

[**Reddit**](Reddit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesScreenshotsList**
> InlineResponse2006 gamesScreenshotsList(gamePk, ordering, page, pageSize)

Get screenshots for the game.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var gamePk = gamePk_example; // String | 
var ordering = ordering_example; // String | Which field to use when ordering the results.
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.gamesScreenshotsList(gamePk, ordering, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesScreenshotsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamePk** | **String**|  | 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesSitemapRead**
> InlineResponse2004 gamesSitemapRead(page, pageSize)

Get The Sitemap Games list.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.gamesSitemapRead(page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesSitemapRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesStoresList**
> InlineResponse2007 gamesStoresList(gamePk, ordering, page, pageSize)

Get links to the stores that sell the game.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var gamePk = gamePk_example; // String | 
var ordering = ordering_example; // String | Which field to use when ordering the results.
var page = 56; // int | A page number within the paginated result set.
var pageSize = 56; // int | Number of results to return per page.

try { 
    var result = api_instance.gamesStoresList(gamePk, ordering, page, pageSize);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesStoresList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gamePk** | **String**|  | 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **page** | **int**| A page number within the paginated result set. | [optional] 
 **pageSize** | **int**| Number of results to return per page. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesSuggestedRead**
> GameSingle gamesSuggestedRead(id)

Get a list of visually similar games, available only for business and enterprise API users.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var id = id_example; // String | An ID or a slug identifying this Game.

try { 
    var result = api_instance.gamesSuggestedRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesSuggestedRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| An ID or a slug identifying this Game. | 

### Return type

[**GameSingle**](GameSingle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesTwitchRead**
> Twitch gamesTwitchRead(id)

Get streams on Twitch associated with the game, available only for business and enterprise API users.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var id = id_example; // String | An ID or a slug identifying this Game.

try { 
    var result = api_instance.gamesTwitchRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesTwitchRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| An ID or a slug identifying this Game. | 

### Return type

[**Twitch**](Twitch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gamesYoutubeRead**
> Youtube gamesYoutubeRead(id)

Get videos from YouTube associated with the game, available only for business and enterprise API users.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GamesApi();
var id = id_example; // String | An ID or a slug identifying this Game.

try { 
    var result = api_instance.gamesYoutubeRead(id);
    print(result);
} catch (e) {
    print("Exception when calling GamesApi->gamesYoutubeRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| An ID or a slug identifying this Game. | 

### Return type

[**Youtube**](Youtube.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


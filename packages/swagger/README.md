# swagger
 The largest open video games database.  ### Why build on RAWG - More than 350,000 games for 50 platforms including mobiles. - Rich metadata: tags, genres, developers, publishers, individual creators, official websites, release dates, Metacritic ratings. - Where to buy: links to digital distribution services - Similar games based on visual similarity. - Player activity data: Steam average playtime and RAWG player counts and ratings. - Actively developing and constantly getting better by user contribution and our algorithms.  ### Terms of Use - Free for personal use as long as you attribute RAWG as the source of the data and/or images and add an active hyperlink from every page where the data of RAWG is used. - Free for commercial use for startups and hobby projects with not more than 100,000 monthly active users or 500,000 page views per month. If your project is larger than that, email us at [api@rawg.io](mailto:api@rawg.io) for commercial terms. - No cloning. It would not be cool if you used our API to launch a clone of RAWG. We know it is not always easy to say what is a duplicate and what isn't. Drop us a line at [api@rawg.io](mailto:api@rawg.io) if you are in doubt, and we will talk it through. - You must include an API key with every request. The key can be obtained at https://rawg.io/apidocs. If you don’t provide it, we may ban your requests.  __[Read more](https://rawg.io/apidocs)__. 

This Dart package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1.0
- Build package: io.swagger.codegen.languages.DartClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: swagger
version: 1.0.0
description: Swagger API client
dependencies:
  swagger:
    git: https://github.com//.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  swagger:
    path: /path/to/swagger
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *https://api.rawg.io/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CreatorRolesApi* | [**creatorRolesList**](docs//CreatorRolesApi.md#creatorroleslist) | **GET** /creator-roles | Get a list of creator positions (jobs).
*CreatorsApi* | [**creatorsList**](docs//CreatorsApi.md#creatorslist) | **GET** /creators | Get a list of game creators.
*CreatorsApi* | [**creatorsRead**](docs//CreatorsApi.md#creatorsread) | **GET** /creators/{id} | Get details of the creator.
*DevelopersApi* | [**developersList**](docs//DevelopersApi.md#developerslist) | **GET** /developers | Get a list of game developers.
*DevelopersApi* | [**developersRead**](docs//DevelopersApi.md#developersread) | **GET** /developers/{id} | Get details of the developer.
*GamesApi* | [**gamesAchievementsRead**](docs//GamesApi.md#gamesachievementsread) | **GET** /games/{id}/achievements | Get a list of game achievements.
*GamesApi* | [**gamesAdditionsList**](docs//GamesApi.md#gamesadditionslist) | **GET** /games/{game_pk}/additions | Get a list of DLC&#39;s for the game, GOTY and other editions, companion apps, etc.
*GamesApi* | [**gamesDevelopmentTeamList**](docs//GamesApi.md#gamesdevelopmentteamlist) | **GET** /games/{game_pk}/development-team | Get a list of individual creators that were part of the development team.
*GamesApi* | [**gamesGameSeriesList**](docs//GamesApi.md#gamesgameserieslist) | **GET** /games/{game_pk}/game-series | Get a list of games that are part of the same series.
*GamesApi* | [**gamesList**](docs//GamesApi.md#gameslist) | **GET** /games | Get a list of games.
*GamesApi* | [**gamesMoviesRead**](docs//GamesApi.md#gamesmoviesread) | **GET** /games/{id}/movies | Get a list of game trailers.
*GamesApi* | [**gamesParentGamesList**](docs//GamesApi.md#gamesparentgameslist) | **GET** /games/{game_pk}/parent-games | Get a list of parent games for DLC&#39;s and editions.
*GamesApi* | [**gamesRead**](docs//GamesApi.md#gamesread) | **GET** /games/{id} | Get details of the game.
*GamesApi* | [**gamesRedditRead**](docs//GamesApi.md#gamesredditread) | **GET** /games/{id}/reddit | Get a list of most recent posts from the game&#39;s subreddit.
*GamesApi* | [**gamesScreenshotsList**](docs//GamesApi.md#gamesscreenshotslist) | **GET** /games/{game_pk}/screenshots | Get screenshots for the game.
*GamesApi* | [**gamesSitemapRead**](docs//GamesApi.md#gamessitemapread) | **GET** /games/sitemap | Get The Sitemap Games list.
*GamesApi* | [**gamesStoresList**](docs//GamesApi.md#gamesstoreslist) | **GET** /games/{game_pk}/stores | Get links to the stores that sell the game.
*GamesApi* | [**gamesSuggestedRead**](docs//GamesApi.md#gamessuggestedread) | **GET** /games/{id}/suggested | Get a list of visually similar games, available only for business and enterprise API users.
*GamesApi* | [**gamesTwitchRead**](docs//GamesApi.md#gamestwitchread) | **GET** /games/{id}/twitch | Get streams on Twitch associated with the game, available only for business and enterprise API users.
*GamesApi* | [**gamesYoutubeRead**](docs//GamesApi.md#gamesyoutuberead) | **GET** /games/{id}/youtube | Get videos from YouTube associated with the game, available only for business and enterprise API users.
*GenresApi* | [**genresList**](docs//GenresApi.md#genreslist) | **GET** /genres | Get a list of video game genres.
*GenresApi* | [**genresRead**](docs//GenresApi.md#genresread) | **GET** /genres/{id} | Get details of the genre.
*PlatformsApi* | [**platformsList**](docs//PlatformsApi.md#platformslist) | **GET** /platforms | Get a list of video game platforms.
*PlatformsApi* | [**platformsListsParentsList**](docs//PlatformsApi.md#platformslistsparentslist) | **GET** /platforms/lists/parents | Get a list of parent platforms.
*PlatformsApi* | [**platformsRead**](docs//PlatformsApi.md#platformsread) | **GET** /platforms/{id} | Get details of the platform.
*PublishersApi* | [**publishersList**](docs//PublishersApi.md#publisherslist) | **GET** /publishers | Get a list of video game publishers.
*PublishersApi* | [**publishersRead**](docs//PublishersApi.md#publishersread) | **GET** /publishers/{id} | Get details of the publisher.
*StoresApi* | [**storesList**](docs//StoresApi.md#storeslist) | **GET** /stores | Get a list of video game storefronts.
*StoresApi* | [**storesRead**](docs//StoresApi.md#storesread) | **GET** /stores/{id} | Get details of the store.
*TagsApi* | [**tagsList**](docs//TagsApi.md#tagslist) | **GET** /tags | Get a list of tags.
*TagsApi* | [**tagsRead**](docs//TagsApi.md#tagsread) | **GET** /tags/{id} | Get details of the tag.


## Documentation For Models

 - [Developer](docs//Developer.md)
 - [DeveloperSingle](docs//DeveloperSingle.md)
 - [Game](docs//Game.md)
 - [GameEsrbRating](docs//GameEsrbRating.md)
 - [GamePersonList](docs//GamePersonList.md)
 - [GamePlatform](docs//GamePlatform.md)
 - [GamePlatformMetacritic](docs//GamePlatformMetacritic.md)
 - [GamePlatforms](docs//GamePlatforms.md)
 - [GameRequirements](docs//GameRequirements.md)
 - [GameSingle](docs//GameSingle.md)
 - [GameStoreFull](docs//GameStoreFull.md)
 - [Genre](docs//Genre.md)
 - [GenreSingle](docs//GenreSingle.md)
 - [InlineResponse200](docs//InlineResponse200.md)
 - [InlineResponse2001](docs//InlineResponse2001.md)
 - [InlineResponse20010](docs//InlineResponse20010.md)
 - [InlineResponse20011](docs//InlineResponse20011.md)
 - [InlineResponse20012](docs//InlineResponse20012.md)
 - [InlineResponse20013](docs//InlineResponse20013.md)
 - [InlineResponse2002](docs//InlineResponse2002.md)
 - [InlineResponse2003](docs//InlineResponse2003.md)
 - [InlineResponse2004](docs//InlineResponse2004.md)
 - [InlineResponse2005](docs//InlineResponse2005.md)
 - [InlineResponse2006](docs//InlineResponse2006.md)
 - [InlineResponse2007](docs//InlineResponse2007.md)
 - [InlineResponse2008](docs//InlineResponse2008.md)
 - [InlineResponse2009](docs//InlineResponse2009.md)
 - [Movie](docs//Movie.md)
 - [ParentAchievement](docs//ParentAchievement.md)
 - [Person](docs//Person.md)
 - [PersonSingle](docs//PersonSingle.md)
 - [Platform](docs//Platform.md)
 - [PlatformParentSingle](docs//PlatformParentSingle.md)
 - [PlatformSingle](docs//PlatformSingle.md)
 - [Position](docs//Position.md)
 - [Publisher](docs//Publisher.md)
 - [PublisherSingle](docs//PublisherSingle.md)
 - [Reddit](docs//Reddit.md)
 - [ScreenShot](docs//ScreenShot.md)
 - [Store](docs//Store.md)
 - [StoreSingle](docs//StoreSingle.md)
 - [Tag](docs//Tag.md)
 - [TagSingle](docs//TagSingle.md)
 - [Twitch](docs//Twitch.md)
 - [Youtube](docs//Youtube.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




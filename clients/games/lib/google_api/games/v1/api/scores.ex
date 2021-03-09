# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Games.V1.Api.Scores do
  @moduledoc """
  API calls for all endpoints tagged `Scores`.
  """

  alias GoogleApi.Games.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Get high scores, and optionally ranks, in leaderboards for the currently authenticated player. For a specific time span, `leaderboardId` can be set to `ALL` to retrieve data for all leaderboards in a given time span. `NOTE: You cannot ask for 'ALL' leaderboards and 'ALL' timeSpans in the same request; only one parameter may be set to 'ALL'.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `player_id` (*type:* `String.t`) - A player ID. A value of `me` may be used in place of the authenticated player's ID.
  *   `leaderboard_id` (*type:* `String.t`) - The ID of the leaderboard. Can be set to 'ALL' to retrieve data for all leaderboards for this application.
  *   `time_span` (*type:* `String.t`) - The time span for the scores and ranks you're requesting.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:includeRankType` (*type:* `String.t`) - The types of ranks to return. If the parameter is omitted, no ranks will be returned.
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified `maxResults`.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.PlayerLeaderboardScoreListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_scores_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Games.V1.Model.PlayerLeaderboardScoreListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def games_scores_get(
        connection,
        player_id,
        leaderboard_id,
        time_span,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :includeRankType => :query,
      :language => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/games/v1/players/{playerId}/leaderboards/{leaderboardId}/scores/{timeSpan}",
        %{
          "playerId" => URI.encode(player_id, &URI.char_unreserved?/1),
          "leaderboardId" => URI.encode(leaderboard_id, &URI.char_unreserved?/1),
          "timeSpan" => URI.encode(time_span, &(URI.char_unreserved?(&1) || &1 == ?/))
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Games.V1.Model.PlayerLeaderboardScoreListResponse{}]
    )
  end

  @doc """
  Lists the scores in a leaderboard, starting from the top.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `leaderboard_id` (*type:* `String.t`) - The ID of the leaderboard.
  *   `collection` (*type:* `String.t`) - The collection of scores you're requesting.
  *   `time_span` (*type:* `String.t`) - The time span for the scores and ranks you're requesting.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified `maxResults`.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.LeaderboardScores{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_scores_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Games.V1.Model.LeaderboardScores.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def games_scores_list(
        connection,
        leaderboard_id,
        collection,
        time_span,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :language => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/games/v1/leaderboards/{leaderboardId}/scores/{collection}", %{
        "leaderboardId" => URI.encode(leaderboard_id, &URI.char_unreserved?/1),
        "collection" => URI.encode(collection, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_param(:query, :timeSpan, time_span)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.LeaderboardScores{}])
  end

  @doc """
  Lists the scores in a leaderboard around (and including) a player's score.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `leaderboard_id` (*type:* `String.t`) - The ID of the leaderboard.
  *   `collection` (*type:* `String.t`) - The collection of scores you're requesting.
  *   `time_span` (*type:* `String.t`) - The time span for the scores and ranks you're requesting.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified `maxResults`.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
      *   `:resultsAbove` (*type:* `integer()`) - The preferred number of scores to return above the player's score. More scores may be returned if the player is at the bottom of the leaderboard; fewer may be returned if the player is at the top. Must be less than or equal to maxResults.
      *   `:returnTopIfAbsent` (*type:* `boolean()`) - True if the top scores should be returned when the player is not in the leaderboard. Defaults to true.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.LeaderboardScores{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_scores_list_window(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Games.V1.Model.LeaderboardScores.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def games_scores_list_window(
        connection,
        leaderboard_id,
        collection,
        time_span,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :language => :query,
      :maxResults => :query,
      :pageToken => :query,
      :resultsAbove => :query,
      :returnTopIfAbsent => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/games/v1/leaderboards/{leaderboardId}/window/{collection}", %{
        "leaderboardId" => URI.encode(leaderboard_id, &URI.char_unreserved?/1),
        "collection" => URI.encode(collection, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_param(:query, :timeSpan, time_span)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.LeaderboardScores{}])
  end

  @doc """
  Submits a score to the specified leaderboard.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `leaderboard_id` (*type:* `String.t`) - The ID of the leaderboard.
  *   `score` (*type:* `String.t`) - The score you're submitting. The submitted score is ignored if it is worse than a previously submitted score, where worse depends on the leaderboard sort order. The meaning of the score value depends on the leaderboard format type. For fixed-point, the score represents the raw value. For time, the score represents elapsed time in milliseconds. For currency, the score represents a value in micro units.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:scoreTag` (*type:* `String.t`) - Additional information about the score you're submitting. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.PlayerScoreResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_scores_submit(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.PlayerScoreResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def games_scores_submit(connection, leaderboard_id, score, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :language => :query,
      :scoreTag => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/games/v1/leaderboards/{leaderboardId}/scores", %{
        "leaderboardId" => URI.encode(leaderboard_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :score, score)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.PlayerScoreResponse{}])
  end

  @doc """
  Submits multiple scores to leaderboards.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Games.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:language` (*type:* `String.t`) - The preferred language to use for strings returned by this method.
      *   `:body` (*type:* `GoogleApi.Games.V1.Model.PlayerScoreSubmissionList.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Games.V1.Model.PlayerScoreListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec games_scores_submit_multiple(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.PlayerScoreListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def games_scores_submit_multiple(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :language => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/games/v1/leaderboards/scores", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.PlayerScoreListResponse{}])
  end
end

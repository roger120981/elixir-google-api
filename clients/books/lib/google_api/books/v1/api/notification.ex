# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Api.Notification do
  @moduledoc """
  API calls for all endpoints tagged `Notification`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns notification details for a given notification id.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - notification_id (String.t): String to identify the notification.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :locale (String.t): ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating notification title and body.
    - :source (String.t): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Notification{}} on success
  {:error, info} on failure
  """
  @spec books_notification_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Notification.t()} | {:error, Tesla.Env.t()}
  def books_notification_get(connection, notification_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :locale => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/notification/get", %{})
      |> Request.add_param(:query, :notification_id, notification_id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Notification{}])
  end
end

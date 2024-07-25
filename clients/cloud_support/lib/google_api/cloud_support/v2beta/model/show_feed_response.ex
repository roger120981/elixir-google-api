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

defmodule GoogleApi.CloudSupport.V2beta.Model.ShowFeedResponse do
  @moduledoc """
  The response message for the ShowFeed endpoint.

  ## Attributes

  *   `feedItems` (*type:* `list(GoogleApi.CloudSupport.V2beta.Model.FeedItem.t)`, *default:* `nil`) - The list of feed items associated with the given Case.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results. This should be set in the `page_token` field of subsequent `ShowFeedRequests`. If unspecified, there are no more results to retrieve.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :feedItems => list(GoogleApi.CloudSupport.V2beta.Model.FeedItem.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:feedItems, as: GoogleApi.CloudSupport.V2beta.Model.FeedItem, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2beta.Model.ShowFeedResponse do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2beta.Model.ShowFeedResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2beta.Model.ShowFeedResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

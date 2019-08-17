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

defmodule GoogleApi.Content.V2.Model.Datafeed do
  @moduledoc """
  Datafeed configuration data.

  ## Attributes

  *   `attributeLanguage` (*type:* `String.t`, *default:* `nil`) - The two-letter ISO 639-1 language in which the attributes are defined in the data feed.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - [DEPRECATED] Please use targets[].language instead. The two-letter ISO 639-1 language of the items in the feed. Must be a valid language for targetCountry.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - The type of data feed. For product inventory feeds, only feeds for local stores, not online stores, are supported.
  *   `fetchSchedule` (*type:* `GoogleApi.Content.V2.Model.DatafeedFetchSchedule.t`, *default:* `nil`) - Fetch schedule for the feed file.
  *   `fileName` (*type:* `String.t`, *default:* `nil`) - The filename of the feed. All feeds must have a unique file name.
  *   `format` (*type:* `GoogleApi.Content.V2.Model.DatafeedFormat.t`, *default:* `nil`) - Format of the feed file.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of the data feed.
  *   `intendedDestinations` (*type:* `list(String.t)`, *default:* `nil`) - [DEPRECATED] Please use targets[].includedDestinations instead. The list of intended destinations (corresponds to checked check boxes in Merchant Center).
  *   `kind` (*type:* `String.t`, *default:* `content#datafeed`) - Identifies what kind of resource this is. Value: the fixed string "content#datafeed".
  *   `name` (*type:* `String.t`, *default:* `nil`) - A descriptive name of the data feed.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - [DEPRECATED] Please use targets[].country instead. The country where the items in the feed will be included in the search index, represented as a CLDR territory code.
  *   `targets` (*type:* `list(GoogleApi.Content.V2.Model.DatafeedTarget.t)`, *default:* `nil`) - The targets this feed should apply to (country, language, destinations).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeLanguage => String.t(),
          :contentLanguage => String.t(),
          :contentType => String.t(),
          :fetchSchedule => GoogleApi.Content.V2.Model.DatafeedFetchSchedule.t(),
          :fileName => String.t(),
          :format => GoogleApi.Content.V2.Model.DatafeedFormat.t(),
          :id => String.t(),
          :intendedDestinations => list(String.t()),
          :kind => String.t(),
          :name => String.t(),
          :targetCountry => String.t(),
          :targets => list(GoogleApi.Content.V2.Model.DatafeedTarget.t())
        }

  field(:attributeLanguage)
  field(:contentLanguage)
  field(:contentType)
  field(:fetchSchedule, as: GoogleApi.Content.V2.Model.DatafeedFetchSchedule)
  field(:fileName)
  field(:format, as: GoogleApi.Content.V2.Model.DatafeedFormat)
  field(:id)
  field(:intendedDestinations, type: :list)
  field(:kind)
  field(:name)
  field(:targetCountry)
  field(:targets, as: GoogleApi.Content.V2.Model.DatafeedTarget, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Datafeed do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Datafeed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Datafeed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

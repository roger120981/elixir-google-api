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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo do
  @moduledoc """
  Information describing what natural language understanding was done on the input query.

  ## Attributes

  *   `classifiedIntents` (*type:* `list(String.t)`, *default:* `nil`) - The classified intents from the input query.
  *   `extractedFilters` (*type:* `String.t`, *default:* `nil`) - The filters that were extracted from the input query.
  *   `rewrittenQuery` (*type:* `String.t`, *default:* `nil`) - Rewritten input query minus the extracted filters.
  *   `sqlRequest` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoSqlRequest.t`, *default:* `nil`) - Optional. The SQL request that was generated from the natural language query understanding phase.
  *   `structuredExtractedFilter` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter.t`, *default:* `nil`) - The filters that were extracted from the input query represented in a structured form.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classifiedIntents => list(String.t()) | nil,
          :extractedFilters => String.t() | nil,
          :rewrittenQuery => String.t() | nil,
          :sqlRequest =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoSqlRequest.t()
            | nil,
          :structuredExtractedFilter =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter.t()
            | nil
        }

  field(:classifiedIntents, type: :list)
  field(:extractedFilters)
  field(:rewrittenQuery)

  field(:sqlRequest,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoSqlRequest
  )

  field(:structuredExtractedFilter,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseNaturalLanguageQueryUnderstandingInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

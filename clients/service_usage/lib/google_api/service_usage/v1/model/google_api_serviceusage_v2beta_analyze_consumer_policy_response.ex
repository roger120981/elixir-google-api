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

defmodule GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV2betaAnalyzeConsumerPolicyResponse do
  @moduledoc """
  The response of analyzing a consumer policy update.

  ## Attributes

  *   `analysis` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV2betaAnalysis.t)`, *default:* `nil`) - The list of analyses returned from performing the intended policy update analysis. The analysis is grouped by service name and different analysis types. The empty analysis list means that the consumer policy can be updated without any warnings or blockers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analysis =>
            list(GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV2betaAnalysis.t()) | nil
        }

  field(:analysis,
    as: GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV2betaAnalysis,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV2betaAnalyzeConsumerPolicyResponse do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV2betaAnalyzeConsumerPolicyResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ServiceUsage.V1.Model.GoogleApiServiceusageV2betaAnalyzeConsumerPolicyResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanConfigsResponse do
  @moduledoc """
  Response for the `ListScanConfigs` method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results in the list.
  *   `scanConfigs` (*type:* `list(GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig.t)`, *default:* `nil`) - The list of ScanConfigs returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :scanConfigs => list(GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig.t()) | nil
        }

  field(:nextPageToken)
  field(:scanConfigs, as: GoogleApi.WebSecurityScanner.V1alpha.Model.ScanConfig, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanConfigsResponse do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanConfigsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.ListScanConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetricxInstance do
  @moduledoc """
  Spec for MetricX instance - The fields used for evaluation are dependent on the MetricX version.

  ## Attributes

  *   `prediction` (*type:* `String.t`, *default:* `nil`) - Required. Output of the evaluated model.
  *   `reference` (*type:* `String.t`, *default:* `nil`) - Optional. Ground truth used to compare against the prediction.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Optional. Source text in original language.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :prediction => String.t() | nil,
          :reference => String.t() | nil,
          :source => String.t() | nil
        }

  field(:prediction)
  field(:reference)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetricxInstance do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetricxInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1MetricxInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CustomTuningModel do
  @moduledoc """
  Metadata that describes a custom tuned model.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp the Model was created at.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the model.
  *   `metrics` (*type:* `map()`, *default:* `nil`) - The metrics of the trained model.
  *   `modelState` (*type:* `String.t`, *default:* `nil`) - The state that the model is in (e.g.`TRAINING` or `TRAINING_FAILED`).
  *   `modelVersion` (*type:* `String.t`, *default:* `nil`) - The version of the model.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The fully qualified resource name of the model. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/customTuningModels/{custom_tuning_model}`. Model must be an alpha-numerical string with limit of 40 characters.
  *   `trainingStartTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp the model training was initiated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :metrics => map() | nil,
          :modelState => String.t() | nil,
          :modelVersion => String.t() | nil,
          :name => String.t() | nil,
          :trainingStartTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:metrics, type: :map)
  field(:modelState)
  field(:modelVersion)
  field(:name)
  field(:trainingStartTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CustomTuningModel do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CustomTuningModel.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CustomTuningModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

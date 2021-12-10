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

defmodule GoogleApi.MyBusinessLodging.V1.Model.GuestUnitType do
  @moduledoc """
  A specific type of unit primarily defined by its features.

  ## Attributes

  *   `codes` (*type:* `list(String.t)`, *default:* `nil`) - Required. Unit or room code identifiers for a single GuestUnitType. Each code must be unique within a Lodging instance.
  *   `features` (*type:* `GoogleApi.MyBusinessLodging.V1.Model.GuestUnitFeatures.t`, *default:* `nil`) - Features and available amenities of the GuestUnitType.
  *   `label` (*type:* `String.t`, *default:* `nil`) - Required. Short, English label or name of the GuestUnitType. Target <50 chars.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :codes => list(String.t()) | nil,
          :features => GoogleApi.MyBusinessLodging.V1.Model.GuestUnitFeatures.t() | nil,
          :label => String.t() | nil
        }

  field(:codes, type: :list)
  field(:features, as: GoogleApi.MyBusinessLodging.V1.Model.GuestUnitFeatures)
  field(:label)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.GuestUnitType do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.GuestUnitType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.GuestUnitType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

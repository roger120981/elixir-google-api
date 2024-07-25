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

defmodule GoogleApi.Solar.V1.Model.SolarPanel do
  @moduledoc """
  SolarPanel describes the position, orientation, and production of a single solar panel. See the panel_height_meters, panel_width_meters, and panel_capacity_watts fields in SolarPotential for information on the parameters of the panel.

  ## Attributes

  *   `center` (*type:* `GoogleApi.Solar.V1.Model.LatLng.t`, *default:* `nil`) - The centre of the panel.
  *   `orientation` (*type:* `String.t`, *default:* `nil`) - The orientation of the panel.
  *   `segmentIndex` (*type:* `integer()`, *default:* `nil`) - Index in roof_segment_stats of the `RoofSegmentSizeAndSunshineStats` which corresponds to the roof segment that this panel is placed on.
  *   `yearlyEnergyDcKwh` (*type:* `number()`, *default:* `nil`) - How much sunlight energy this layout captures over the course of a year, in DC kWh.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :center => GoogleApi.Solar.V1.Model.LatLng.t() | nil,
          :orientation => String.t() | nil,
          :segmentIndex => integer() | nil,
          :yearlyEnergyDcKwh => number() | nil
        }

  field(:center, as: GoogleApi.Solar.V1.Model.LatLng)
  field(:orientation)
  field(:segmentIndex)
  field(:yearlyEnergyDcKwh)
end

defimpl Poison.Decoder, for: GoogleApi.Solar.V1.Model.SolarPanel do
  def decode(value, options) do
    GoogleApi.Solar.V1.Model.SolarPanel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Solar.V1.Model.SolarPanel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

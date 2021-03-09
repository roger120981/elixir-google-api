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

defmodule GoogleApi.SmartDeviceManagement.V1.Model.GoogleHomeEnterpriseSdmV1Device do
  @moduledoc """
  Device resource represents an instance of enterprise managed device in the property.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the device. For example: "enterprises/XYZ/devices/123".
  *   `parentRelations` (*type:* `list(GoogleApi.SmartDeviceManagement.V1.Model.GoogleHomeEnterpriseSdmV1ParentRelation.t)`, *default:* `nil`) - Assignee details of the device.
  *   `traits` (*type:* `map()`, *default:* `nil`) - Output only. Device traits.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the device for general display purposes. For example: "THERMOSTAT". The device type should not be used to deduce or infer functionality of the actual device it is assigned to. Instead, use the returned traits for the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :parentRelations =>
            list(
              GoogleApi.SmartDeviceManagement.V1.Model.GoogleHomeEnterpriseSdmV1ParentRelation.t()
            )
            | nil,
          :traits => map() | nil,
          :type => String.t() | nil
        }

  field(:name)

  field(:parentRelations,
    as: GoogleApi.SmartDeviceManagement.V1.Model.GoogleHomeEnterpriseSdmV1ParentRelation,
    type: :list
  )

  field(:traits, type: :map)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.SmartDeviceManagement.V1.Model.GoogleHomeEnterpriseSdmV1Device do
  def decode(value, options) do
    GoogleApi.SmartDeviceManagement.V1.Model.GoogleHomeEnterpriseSdmV1Device.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SmartDeviceManagement.V1.Model.GoogleHomeEnterpriseSdmV1Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

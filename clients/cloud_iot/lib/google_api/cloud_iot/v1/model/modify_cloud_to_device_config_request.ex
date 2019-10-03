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

defmodule GoogleApi.CloudIot.V1.Model.ModifyCloudToDeviceConfigRequest do
  @moduledoc """
  Request for `ModifyCloudToDeviceConfig`.

  ## Attributes

  *   `binaryData` (*type:* `String.t`, *default:* `nil`) - Required. The configuration data for the device.
  *   `versionToUpdate` (*type:* `String.t`, *default:* `nil`) - The version number to update. If this value is zero, it will not check the
      version number of the server and will always update the current version;
      otherwise, this update will fail if the version number found on the server
      does not match this version number. This is used to support multiple
      simultaneous updates without losing data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryData => String.t(),
          :versionToUpdate => String.t()
        }

  field(:binaryData)
  field(:versionToUpdate)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.ModifyCloudToDeviceConfigRequest do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.ModifyCloudToDeviceConfigRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.ModifyCloudToDeviceConfigRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

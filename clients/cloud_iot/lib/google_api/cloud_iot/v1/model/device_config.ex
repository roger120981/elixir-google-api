# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudIot.V1.Model.DeviceConfig do
  @moduledoc """
  The device configuration. Eventually delivered to devices.

  ## Attributes

  - binaryData (String.t): The device configuration data. Defaults to `nil`.
  - cloudUpdateTime (DateTime.t): [Output only] The time at which this configuration version was updated in
  Cloud IoT Core. This timestamp is set by the server. Defaults to `nil`.
  - deviceAckTime (DateTime.t): [Output only] The time at which Cloud IoT Core received the
  acknowledgment from the device, indicating that the device has received
  this configuration version. If this field is not present, the device has
  not yet acknowledged that it received this version. Note that when
  the config was sent to the device, many config versions may have been
  available in Cloud IoT Core while the device was disconnected, and on
  connection, only the latest version is sent to the device. Some
  versions may never be sent to the device, and therefore are never
  acknowledged. This timestamp is set by Cloud IoT Core. Defaults to `nil`.
  - version (String.t): [Output only] The version of this update. The version number is assigned by
  the server, and is always greater than 0 after device creation. The
  version must be 0 on the `CreateDevice` request if a `config` is
  specified; the response of `CreateDevice` will always have a value of 1. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryData => String.t(),
          :cloudUpdateTime => DateTime.t(),
          :deviceAckTime => DateTime.t(),
          :version => String.t()
        }

  field(:binaryData)
  field(:cloudUpdateTime, as: DateTime)
  field(:deviceAckTime, as: DateTime)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.DeviceConfig do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.DeviceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.DeviceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

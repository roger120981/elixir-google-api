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

defmodule GoogleApi.CloudIot.V1.Model.ListDevicesResponse do
  @moduledoc """
  Response for `ListDevices`.

  ## Attributes

  - devices (list(GoogleApi.CloudIot.V1.Model.Device.t)): The devices that match the request. Defaults to `nil`.
  - nextPageToken (String.t): If not empty, indicates that there may be more devices that match the
  request; this value should be passed in a new `ListDevicesRequest`. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :devices => list(GoogleApi.CloudIot.V1.Model.Device.t()),
          :nextPageToken => String.t()
        }

  field(:devices, as: GoogleApi.CloudIot.V1.Model.Device, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.ListDevicesResponse do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.ListDevicesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.ListDevicesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ChromeOsUserSession do
  @moduledoc """
  Describes the ChromeOS user session that a `CertificateProvisioningProcess` belongs to.

  ## Attributes

  *   `chromeOsDevice` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ChromeOsDevice.t`, *default:* `nil`) - Output only. This field contains information about the ChromeOS device that the user session is running on. It is only set if the user is affiliated, i.e., if the user is managed by the same organization that manages the ChromeOS device.
  *   `userDirectoryApiId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique Directory API ID of the user.
  *   `userPrimaryEmail` (*type:* `String.t`, *default:* `nil`) - Output only. The primary e-mail address of the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chromeOsDevice =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ChromeOsDevice.t()
            | nil,
          :userDirectoryApiId => String.t() | nil,
          :userPrimaryEmail => String.t() | nil
        }

  field(:chromeOsDevice,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ChromeOsDevice
  )

  field(:userDirectoryApiId)
  field(:userPrimaryEmail)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ChromeOsUserSession do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ChromeOsUserSession.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ChromeOsUserSession do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

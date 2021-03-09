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

defmodule GoogleApi.ManagedIdentities.V1.Model.Trust do
  @moduledoc """
  Represents a relationship between two domains. This allows a controller in one domain to authenticate a user in another domain. If the trust is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was created.
  *   `lastTrustHeartbeatTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last heartbeat time when the trust was known to be connected.
  *   `selectiveAuthentication` (*type:* `boolean()`, *default:* `nil`) - Optional. The trust authentication type, which decides whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the trust.
  *   `stateDescription` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current state of the trust, if available.
  *   `targetDnsIpAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Required. The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  *   `targetDomainName` (*type:* `String.t`, *default:* `nil`) - Required. The fully qualified target domain name which will be in trust with the current domain.
  *   `trustDirection` (*type:* `String.t`, *default:* `nil`) - Required. The trust direction, which decides if the current domain is trusted, trusting, or both.
  *   `trustHandshakeSecret` (*type:* `String.t`, *default:* `nil`) - Required. The trust secret used for the handshake with the target domain. This will not be stored.
  *   `trustType` (*type:* `String.t`, *default:* `nil`) - Required. The type of trust represented by the trust resource.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :lastTrustHeartbeatTime => DateTime.t() | nil,
          :selectiveAuthentication => boolean() | nil,
          :state => String.t() | nil,
          :stateDescription => String.t() | nil,
          :targetDnsIpAddresses => list(String.t()) | nil,
          :targetDomainName => String.t() | nil,
          :trustDirection => String.t() | nil,
          :trustHandshakeSecret => String.t() | nil,
          :trustType => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:lastTrustHeartbeatTime, as: DateTime)
  field(:selectiveAuthentication)
  field(:state)
  field(:stateDescription)
  field(:targetDnsIpAddresses, type: :list)
  field(:targetDomainName)
  field(:trustDirection)
  field(:trustHandshakeSecret)
  field(:trustType)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ManagedIdentities.V1.Model.Trust do
  def decode(value, options) do
    GoogleApi.ManagedIdentities.V1.Model.Trust.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ManagedIdentities.V1.Model.Trust do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

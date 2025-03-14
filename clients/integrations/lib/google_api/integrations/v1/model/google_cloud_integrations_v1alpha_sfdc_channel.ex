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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcChannel do
  @moduledoc """
  The SfdcChannel that points to a CDC or Platform Event Channel.

  ## Attributes

  *   `channelTopic` (*type:* `String.t`, *default:* `nil`) - Required. The Channel topic defined by salesforce once an channel is opened
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the channel is created
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the channel was deleted. Empty if not deleted.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description for this channel
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Client level unique name/alias to easily reference a channel.
  *   `isActive` (*type:* `boolean()`, *default:* `nil`) - Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  *   `lastReplayId` (*type:* `String.t`, *default:* `nil`) - Last sfdc messsage replay id for channel
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the channel was last updated
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channelTopic => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :isActive => boolean() | nil,
          :lastReplayId => String.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:channelTopic)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:isActive)
  field(:lastReplayId)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcChannel do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcChannel.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcChannel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

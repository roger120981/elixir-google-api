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

defmodule GoogleApi.GameServices.V1.Model.GameServerDeploymentRollout do
  @moduledoc """
  The game server deployment rollout which represents the desired rollout state.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `defaultGameServerConfig` (*type:* `String.t`, *default:* `nil`) - The default game server config is applied to all realms unless overridden in the rollout. For example, `projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config`.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `gameServerConfigOverrides` (*type:* `list(GoogleApi.GameServices.V1.Model.GameServerConfigOverride.t)`, *default:* `nil`) - Contains the game server config rollout overrides. Overrides are processed in the order they are listed. Once a match is found for a realm, the rest of the list is not processed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the game server deployment rollout. Uses the form: `projects/{project}/locations/{location}/gameServerDeployments/{deployment}/rollout`. For example, `projects/my-project/locations/global/gameServerDeployments/my-deployment/rollout`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :defaultGameServerConfig => String.t(),
          :etag => String.t(),
          :gameServerConfigOverrides =>
            list(GoogleApi.GameServices.V1.Model.GameServerConfigOverride.t()),
          :name => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:defaultGameServerConfig)
  field(:etag)

  field(:gameServerConfigOverrides,
    as: GoogleApi.GameServices.V1.Model.GameServerConfigOverride,
    type: :list
  )

  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1.Model.GameServerDeploymentRollout do
  def decode(value, options) do
    GoogleApi.GameServices.V1.Model.GameServerDeploymentRollout.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1.Model.GameServerDeploymentRollout do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

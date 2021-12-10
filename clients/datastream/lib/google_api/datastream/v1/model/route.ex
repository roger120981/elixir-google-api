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

defmodule GoogleApi.Datastream.V1.Model.Route do
  @moduledoc """
  The route resource is the child of the private connection resource, used for defining a route for a private connection.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The create time of the resource.
  *   `destinationAddress` (*type:* `String.t`, *default:* `nil`) - Required. Destination address for connection
  *   `destinationPort` (*type:* `integer()`, *default:* `nil`) - Destination port for connection
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Display name.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource's name.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The update time of the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :destinationAddress => String.t() | nil,
          :destinationPort => integer() | nil,
          :displayName => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:destinationAddress)
  field(:destinationPort)
  field(:displayName)
  field(:labels, type: :map)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.Route do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.Route.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.Route do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

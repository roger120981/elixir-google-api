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

defmodule GoogleApi.File.V1.Model.Snapshot do
  @moduledoc """
  A Filestore snapshot.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the snapshot was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected.
  *   `filesystemUsedBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The amount of bytes needed to allocate a full copy of the snapshot content
  *   `labels` (*type:* `map()`, *default:* `nil`) - Resource labels to represent user provided metadata.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/snapshots/{snapshot_id}`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The snapshot state.
  *   `tags` (*type:* `map()`, *default:* `nil`) - Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "123/environment": "production", "123/costCenter": "marketing"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :filesystemUsedBytes => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :tags => map() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:filesystemUsedBytes)
  field(:labels, type: :map)
  field(:name)
  field(:state)
  field(:tags, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.Snapshot do
  def decode(value, options) do
    GoogleApi.File.V1.Model.Snapshot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.Snapshot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

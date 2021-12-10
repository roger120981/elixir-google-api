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

defmodule GoogleApi.Datastream.V1.Model.Error do
  @moduledoc """
  Represent a user-facing Error.

  ## Attributes

  *   `details` (*type:* `map()`, *default:* `nil`) - Additional information about the error.
  *   `errorTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the error occurred.
  *   `errorUuid` (*type:* `String.t`, *default:* `nil`) - A unique identifier for this specific error, allowing it to be traced throughout the system in logs and API responses.
  *   `message` (*type:* `String.t`, *default:* `nil`) - A message containing more information about the error that occurred.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - A title that explains the reason for the error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :details => map() | nil,
          :errorTime => DateTime.t() | nil,
          :errorUuid => String.t() | nil,
          :message => String.t() | nil,
          :reason => String.t() | nil
        }

  field(:details, type: :map)
  field(:errorTime, as: DateTime)
  field(:errorUuid)
  field(:message)
  field(:reason)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.Error do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.Error.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.Error do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

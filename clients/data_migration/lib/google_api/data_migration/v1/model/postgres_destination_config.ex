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

defmodule GoogleApi.DataMigration.V1.Model.PostgresDestinationConfig do
  @moduledoc """
  Configuration for Postgres as a destination in a migration.

  ## Attributes

  *   `maxConcurrentConnections` (*type:* `integer()`, *default:* `nil`) - Optional. Maximum number of connections Database Migration Service will open to the destination for data migration.
  *   `transactionTimeout` (*type:* `String.t`, *default:* `nil`) - Optional. Timeout for data migration transactions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxConcurrentConnections => integer() | nil,
          :transactionTimeout => String.t() | nil
        }

  field(:maxConcurrentConnections)
  field(:transactionTimeout)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.PostgresDestinationConfig do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.PostgresDestinationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.PostgresDestinationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

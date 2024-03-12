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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ListBackupsResponse do
  @moduledoc """
  The response for FirestoreAdmin.ListBackups.

  ## Attributes

  *   `backups` (*type:* `list(GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Backup.t)`, *default:* `nil`) - List of all backups for the project. Ordered by `location ASC, create_time DESC, name ASC`.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - List of locations that existing backups were not able to be fetched from. Instead of failing the entire requests when a single location is unreachable, this response returns a partial result set and list of locations unable to be reached here. The request can be retried against a single location to get a concrete error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backups => list(GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Backup.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:backups, as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Backup, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ListBackupsResponse do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ListBackupsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ListBackupsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1RestoreDatabaseRequest do
  @moduledoc """
  The request message for FirestoreAdmin.RestoreDatabase.

  ## Attributes

  *   `backup` (*type:* `String.t`, *default:* `nil`) - Backup to restore from. Must be from the same project as the parent. The restored database will be created in the same location as the source backup. Format is: `projects/{project_id}/locations/{location}/backups/{backup}`
  *   `databaseId` (*type:* `String.t`, *default:* `nil`) - Required. The ID to use for the database, which will become the final component of the database's resource name. This database id must not be associated with an existing database. This value should be 4-63 characters. Valid characters are /a-z-/ with first character a letter and the last a letter or a number. Must not be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/. "(default)" database id is also valid.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Use Customer Managed Encryption Keys (CMEK) for encryption. Only keys in the same location as the restored database are allowed to be used for encryption. For Firestore's nam5 multi-region, this corresponds to Cloud KMS multi-region us. For Firestore's eur3 multi-region, this corresponds to Cloud KMS multi-region europe. See https://cloud.google.com/kms/docs/locations. The expected format is `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  *   `useBackupEncryption` (*type:* `GoogleApi.Firestore.V1.Model.Empty.t`, *default:* `nil`) - The restored database will use the same encryption configuration as the backup. This is the default option when no `encryption_config` is specified.
  *   `useGoogleDefaultEncryption` (*type:* `GoogleApi.Firestore.V1.Model.Empty.t`, *default:* `nil`) - Use Google default encryption.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backup => String.t() | nil,
          :databaseId => String.t() | nil,
          :kmsKeyName => String.t() | nil,
          :useBackupEncryption => GoogleApi.Firestore.V1.Model.Empty.t() | nil,
          :useGoogleDefaultEncryption => GoogleApi.Firestore.V1.Model.Empty.t() | nil
        }

  field(:backup)
  field(:databaseId)
  field(:kmsKeyName)
  field(:useBackupEncryption, as: GoogleApi.Firestore.V1.Model.Empty)
  field(:useGoogleDefaultEncryption, as: GoogleApi.Firestore.V1.Model.Empty)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1RestoreDatabaseRequest do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1RestoreDatabaseRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1RestoreDatabaseRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ExportDocumentsRequest do
  @moduledoc """
  The request for FirestoreAdmin.ExportDocuments.

  ## Attributes

  *   `collectionIds` (*type:* `list(String.t)`, *default:* `nil`) - Which collection ids to export. Unspecified means all collections. Each collection id in this list must be unique.
  *   `namespaceIds` (*type:* `list(String.t)`, *default:* `nil`) - An empty list represents all namespaces. This is the preferred usage for databases that don't use namespaces. An empty string element represents the default namespace. This should be used if the database has data in non-default namespaces, but doesn't want to include them. Each namespace in this list must be unique.
  *   `outputUriPrefix` (*type:* `String.t`, *default:* `nil`) - The output URI. Currently only supports Google Cloud Storage URIs of the form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name of the Google Cloud Storage bucket and `NAMESPACE_PATH` is an optional Google Cloud Storage namespace path. When choosing a name, be sure to consider Google Cloud Storage naming guidelines: https://cloud.google.com/storage/docs/naming. If the URI is a bucket (without a namespace path), a prefix will be generated based on the start time.
  *   `snapshotTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp that corresponds to the version of the database to be exported. The timestamp must be in the past, rounded to the minute and not older than earliestVersionTime. If specified, then the exported documents will represent a consistent view of the database at the provided time. Otherwise, there are no guarantees about the consistency of the exported documents.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collectionIds => list(String.t()) | nil,
          :namespaceIds => list(String.t()) | nil,
          :outputUriPrefix => String.t() | nil,
          :snapshotTime => DateTime.t() | nil
        }

  field(:collectionIds, type: :list)
  field(:namespaceIds, type: :list)
  field(:outputUriPrefix)
  field(:snapshotTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ExportDocumentsRequest do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ExportDocumentsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1ExportDocumentsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.SQLAdmin.V1.Model.ListBackupsResponse do
  @moduledoc """
  The response payload containing a list of the backups.

  ## Attributes

  *   `backups` (*type:* `list(GoogleApi.SQLAdmin.V1.Model.Backup.t)`, *default:* `nil`) - A list of backups.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, then there aren't subsequent pages.
  *   `warnings` (*type:* `list(GoogleApi.SQLAdmin.V1.Model.ApiWarning.t)`, *default:* `nil`) - If a region isn't unavailable or if an unknown error occurs, then a warning message is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backups => list(GoogleApi.SQLAdmin.V1.Model.Backup.t()) | nil,
          :nextPageToken => String.t() | nil,
          :warnings => list(GoogleApi.SQLAdmin.V1.Model.ApiWarning.t()) | nil
        }

  field(:backups, as: GoogleApi.SQLAdmin.V1.Model.Backup, type: :list)
  field(:nextPageToken)
  field(:warnings, as: GoogleApi.SQLAdmin.V1.Model.ApiWarning, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.ListBackupsResponse do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.ListBackupsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.ListBackupsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

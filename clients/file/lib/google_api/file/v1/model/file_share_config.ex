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

defmodule GoogleApi.File.V1.Model.FileShareConfig do
  @moduledoc """
  File share configuration for the instance.

  ## Attributes

  *   `capacityGb` (*type:* `String.t`, *default:* `nil`) - File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the file share. Must use 1-16 characters for the basic service tier and 1-63 characters for all other service tiers. Must use lowercase letters, numbers, or underscores `[a-z0-9_]`. Must start with a letter. Immutable.
  *   `nfsExportOptions` (*type:* `list(GoogleApi.File.V1.Model.NfsExportOptions.t)`, *default:* `nil`) - Nfs Export Options. There is a limit of 10 export options per file share.
  *   `performanceConfig` (*type:* `GoogleApi.File.V1.Model.PerformanceConfig.t`, *default:* `nil`) - Optional. Used to configure performance.
  *   `performanceLimits` (*type:* `GoogleApi.File.V1.Model.PerformanceLimits.t`, *default:* `nil`) - Output only. Used for getting performance limits.
  *   `sourceBackup` (*type:* `String.t`, *default:* `nil`) - The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :capacityGb => String.t() | nil,
          :name => String.t() | nil,
          :nfsExportOptions => list(GoogleApi.File.V1.Model.NfsExportOptions.t()) | nil,
          :performanceConfig => GoogleApi.File.V1.Model.PerformanceConfig.t() | nil,
          :performanceLimits => GoogleApi.File.V1.Model.PerformanceLimits.t() | nil,
          :sourceBackup => String.t() | nil
        }

  field(:capacityGb)
  field(:name)
  field(:nfsExportOptions, as: GoogleApi.File.V1.Model.NfsExportOptions, type: :list)
  field(:performanceConfig, as: GoogleApi.File.V1.Model.PerformanceConfig)
  field(:performanceLimits, as: GoogleApi.File.V1.Model.PerformanceLimits)
  field(:sourceBackup)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.FileShareConfig do
  def decode(value, options) do
    GoogleApi.File.V1.Model.FileShareConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.FileShareConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

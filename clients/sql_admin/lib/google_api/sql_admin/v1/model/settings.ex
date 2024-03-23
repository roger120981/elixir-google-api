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

defmodule GoogleApi.SQLAdmin.V1.Model.Settings do
  @moduledoc """
  Database instance settings.

  ## Attributes

  *   `userLabels` (*type:* `map()`, *default:* `nil`) - User-provided labels, represented as a dictionary where each label is a single key value pair.
  *   `replicationType` (*type:* `String.t`, *default:* `nil`) - The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  *   `databaseFlags` (*type:* `list(GoogleApi.SQLAdmin.V1.Model.DatabaseFlags.t)`, *default:* `nil`) - The database flags passed to the instance at startup.
  *   `denyMaintenancePeriods` (*type:* `list(GoogleApi.SQLAdmin.V1.Model.DenyMaintenancePeriod.t)`, *default:* `nil`) - Deny maintenance periods
  *   `enableGoogleMlIntegration` (*type:* `boolean()`, *default:* `nil`) - Optional. When this parameter is set to true, Cloud SQL instances can connect to Vertex AI to pass requests for real-time predictions and insights to the AI. The default value is false. This applies only to Cloud SQL for PostgreSQL instances.
  *   `deletionProtectionEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration to protect against accidental instance deletion.
  *   `activationPolicy` (*type:* `String.t`, *default:* `nil`) - The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  *   `advancedMachineFeatures` (*type:* `GoogleApi.SQLAdmin.V1.Model.AdvancedMachineFeatures.t`, *default:* `nil`) - Specifies advance machine configuration for the instance relevant only for SQL Server.
  *   `ipConfiguration` (*type:* `GoogleApi.SQLAdmin.V1.Model.IpConfiguration.t`, *default:* `nil`) - The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#settings`.
  *   `settingsVersion` (*type:* `String.t`, *default:* `nil`) - The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  *   `maintenanceWindow` (*type:* `GoogleApi.SQLAdmin.V1.Model.MaintenanceWindow.t`, *default:* `nil`) - The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  *   `connectorEnforcement` (*type:* `String.t`, *default:* `nil`) - Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors). Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  *   `availabilityType` (*type:* `String.t`, *default:* `nil`) - Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  *   `insightsConfig` (*type:* `GoogleApi.SQLAdmin.V1.Model.InsightsConfig.t`, *default:* `nil`) - Insights configuration, for now relevant only for Postgres.
  *   `dataDiskSizeGb` (*type:* `String.t`, *default:* `nil`) - The size of data disk, in GB. The data disk size minimum is 10GB.
  *   `backupConfiguration` (*type:* `GoogleApi.SQLAdmin.V1.Model.BackupConfiguration.t`, *default:* `nil`) - The daily backup configuration for the instance.
  *   `authorizedGaeApplications` (*type:* `list(String.t)`, *default:* `nil`) - The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  *   `edition` (*type:* `String.t`, *default:* `nil`) - Optional. The edition of the instance.
  *   `dataDiskType` (*type:* `String.t`, *default:* `nil`) - The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  *   `databaseReplicationEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  *   `storageAutoResizeLimit` (*type:* `String.t`, *default:* `nil`) - The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  *   `collation` (*type:* `String.t`, *default:* `nil`) - The name of server Instance collation.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  *   `locationPreference` (*type:* `GoogleApi.SQLAdmin.V1.Model.LocationPreference.t`, *default:* `nil`) - The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  *   `storageAutoResize` (*type:* `boolean()`, *default:* `nil`) - Configuration to increase storage size automatically. The default value is true.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Server timezone, relevant only for Cloud SQL for SQL Server.
  *   `sqlServerAuditConfig` (*type:* `GoogleApi.SQLAdmin.V1.Model.SqlServerAuditConfig.t`, *default:* `nil`) - SQL Server specific audit configuration.
  *   `activeDirectoryConfig` (*type:* `GoogleApi.SQLAdmin.V1.Model.SqlActiveDirectoryConfig.t`, *default:* `nil`) - Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  *   `passwordValidationPolicy` (*type:* `GoogleApi.SQLAdmin.V1.Model.PasswordValidationPolicy.t`, *default:* `nil`) - The local user password validation policy of the instance.
  *   `dataCacheConfig` (*type:* `GoogleApi.SQLAdmin.V1.Model.DataCacheConfig.t`, *default:* `nil`) - Configuration for data cache.
  *   `pricingPlan` (*type:* `String.t`, *default:* `nil`) - The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  *   `crashSafeReplicationEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :userLabels => map() | nil,
          :replicationType => String.t() | nil,
          :databaseFlags => list(GoogleApi.SQLAdmin.V1.Model.DatabaseFlags.t()) | nil,
          :denyMaintenancePeriods =>
            list(GoogleApi.SQLAdmin.V1.Model.DenyMaintenancePeriod.t()) | nil,
          :enableGoogleMlIntegration => boolean() | nil,
          :deletionProtectionEnabled => boolean() | nil,
          :activationPolicy => String.t() | nil,
          :advancedMachineFeatures =>
            GoogleApi.SQLAdmin.V1.Model.AdvancedMachineFeatures.t() | nil,
          :ipConfiguration => GoogleApi.SQLAdmin.V1.Model.IpConfiguration.t() | nil,
          :kind => String.t() | nil,
          :settingsVersion => String.t() | nil,
          :maintenanceWindow => GoogleApi.SQLAdmin.V1.Model.MaintenanceWindow.t() | nil,
          :connectorEnforcement => String.t() | nil,
          :availabilityType => String.t() | nil,
          :insightsConfig => GoogleApi.SQLAdmin.V1.Model.InsightsConfig.t() | nil,
          :dataDiskSizeGb => String.t() | nil,
          :backupConfiguration => GoogleApi.SQLAdmin.V1.Model.BackupConfiguration.t() | nil,
          :authorizedGaeApplications => list(String.t()) | nil,
          :edition => String.t() | nil,
          :dataDiskType => String.t() | nil,
          :databaseReplicationEnabled => boolean() | nil,
          :storageAutoResizeLimit => String.t() | nil,
          :collation => String.t() | nil,
          :tier => String.t() | nil,
          :locationPreference => GoogleApi.SQLAdmin.V1.Model.LocationPreference.t() | nil,
          :storageAutoResize => boolean() | nil,
          :timeZone => String.t() | nil,
          :sqlServerAuditConfig => GoogleApi.SQLAdmin.V1.Model.SqlServerAuditConfig.t() | nil,
          :activeDirectoryConfig =>
            GoogleApi.SQLAdmin.V1.Model.SqlActiveDirectoryConfig.t() | nil,
          :passwordValidationPolicy =>
            GoogleApi.SQLAdmin.V1.Model.PasswordValidationPolicy.t() | nil,
          :dataCacheConfig => GoogleApi.SQLAdmin.V1.Model.DataCacheConfig.t() | nil,
          :pricingPlan => String.t() | nil,
          :crashSafeReplicationEnabled => boolean() | nil
        }

  field(:userLabels, type: :map)
  field(:replicationType)
  field(:databaseFlags, as: GoogleApi.SQLAdmin.V1.Model.DatabaseFlags, type: :list)

  field(:denyMaintenancePeriods,
    as: GoogleApi.SQLAdmin.V1.Model.DenyMaintenancePeriod,
    type: :list
  )

  field(:enableGoogleMlIntegration)
  field(:deletionProtectionEnabled)
  field(:activationPolicy)
  field(:advancedMachineFeatures, as: GoogleApi.SQLAdmin.V1.Model.AdvancedMachineFeatures)
  field(:ipConfiguration, as: GoogleApi.SQLAdmin.V1.Model.IpConfiguration)
  field(:kind)
  field(:settingsVersion)
  field(:maintenanceWindow, as: GoogleApi.SQLAdmin.V1.Model.MaintenanceWindow)
  field(:connectorEnforcement)
  field(:availabilityType)
  field(:insightsConfig, as: GoogleApi.SQLAdmin.V1.Model.InsightsConfig)
  field(:dataDiskSizeGb)
  field(:backupConfiguration, as: GoogleApi.SQLAdmin.V1.Model.BackupConfiguration)
  field(:authorizedGaeApplications, type: :list)
  field(:edition)
  field(:dataDiskType)
  field(:databaseReplicationEnabled)
  field(:storageAutoResizeLimit)
  field(:collation)
  field(:tier)
  field(:locationPreference, as: GoogleApi.SQLAdmin.V1.Model.LocationPreference)
  field(:storageAutoResize)
  field(:timeZone)
  field(:sqlServerAuditConfig, as: GoogleApi.SQLAdmin.V1.Model.SqlServerAuditConfig)
  field(:activeDirectoryConfig, as: GoogleApi.SQLAdmin.V1.Model.SqlActiveDirectoryConfig)
  field(:passwordValidationPolicy, as: GoogleApi.SQLAdmin.V1.Model.PasswordValidationPolicy)
  field(:dataCacheConfig, as: GoogleApi.SQLAdmin.V1.Model.DataCacheConfig)
  field(:pricingPlan)
  field(:crashSafeReplicationEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.Settings do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.Settings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.Settings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

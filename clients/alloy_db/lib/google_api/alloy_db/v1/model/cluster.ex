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

defmodule GoogleApi.AlloyDB.V1.Model.Cluster do
  @moduledoc """
  A cluster is a collection of regional AlloyDB resources. It can include a primary instance and one or more read pool instances. All cluster resources share a storage layer, which scales as needed.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Create time stamp
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current serving state of the cluster.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels as key value pairs
  *   `continuousBackupInfo` (*type:* `GoogleApi.AlloyDB.V1.Model.ContinuousBackupInfo.t`, *default:* `nil`) - Output only. Continuous backup properties for this cluster.
  *   `annotations` (*type:* `map()`, *default:* `nil`) - Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  *   `backupSource` (*type:* `GoogleApi.AlloyDB.V1.Model.BackupSource.t`, *default:* `nil`) - Output only. Cluster created from backup.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the cluster resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id} where the cluster ID segment should satisfy the regex expression `[a-z0-9-]+`. For more details see https://google.aip.dev/122. The prefix of the cluster resource name is the name of the parent resource: * projects/{project}/locations/{region}
  *   `subscriptionType` (*type:* `String.t`, *default:* `nil`) - Optional. Subscription type of the cluster.
  *   `trialMetadata` (*type:* `GoogleApi.AlloyDB.V1.Model.TrialMetadata.t`, *default:* `nil`) - Output only. Metadata for free trial clusters
  *   `maintenanceSchedule` (*type:* `GoogleApi.AlloyDB.V1.Model.MaintenanceSchedule.t`, *default:* `nil`) - Output only. The maintenance schedule for the cluster, generated for a specific rollout if a maintenance window is set.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User-settable and human-readable display name for the Cluster.
  *   `automatedBackupPolicy` (*type:* `GoogleApi.AlloyDB.V1.Model.AutomatedBackupPolicy.t`, *default:* `nil`) - The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  *   `encryptionConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.EncryptionConfig.t`, *default:* `nil`) - Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Delete time stamp
  *   `encryptionInfo` (*type:* `GoogleApi.AlloyDB.V1.Model.EncryptionInfo.t`, *default:* `nil`) - Output only. The encryption information for the cluster.
  *   `sslConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.SslConfig.t`, *default:* `nil`) - SSL configuration for this AlloyDB cluster.
  *   `migrationSource` (*type:* `GoogleApi.AlloyDB.V1.Model.MigrationSource.t`, *default:* `nil`) - Output only. Cluster created via DMS migration.
  *   `tags` (*type:* `map()`, *default:* `nil`) - Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: ``` "123/environment": "production", "123/costCenter": "marketing" ```
  *   `initialUser` (*type:* `GoogleApi.AlloyDB.V1.Model.UserPassword.t`, *default:* `nil`) - Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  *   `databaseVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  *   `secondaryConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.SecondaryConfig.t`, *default:* `nil`) - Cross Region replication config specific to SECONDARY cluster.
  *   `primaryConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.PrimaryConfig.t`, *default:* `nil`) - Output only. Cross Region replication config specific to PRIMARY cluster.
  *   `clusterType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the cluster. This is an output-only field and it's populated at the Cluster creation time or the Cluster promotion time. The cluster type is determined by which RPC was used to create the cluster (i.e. `CreateCluster` vs. `CreateSecondaryCluster`
  *   `maintenanceUpdatePolicy` (*type:* `GoogleApi.AlloyDB.V1.Model.MaintenanceUpdatePolicy.t`, *default:* `nil`) - Optional. The maintenance update policy determines when to allow or deny updates.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Required. The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: `projects/{project}/global/networks/{network_id}`. This is required to create a cluster. Deprecated, use network_config.network instead.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update time stamp
  *   `etag` (*type:* `String.t`, *default:* `nil`) - For Resource freshness validation (https://google.aip.dev/154)
  *   `networkConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.NetworkConfig.t`, *default:* `nil`) - 
  *   `continuousBackupConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.ContinuousBackupConfig.t`, *default:* `nil`) - Optional. Continuous backup configuration for this cluster.
  *   `pscConfig` (*type:* `GoogleApi.AlloyDB.V1.Model.PscConfig.t`, *default:* `nil`) - Optional. The configuration for Private Service Connect (PSC) for the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :labels => map() | nil,
          :continuousBackupInfo => GoogleApi.AlloyDB.V1.Model.ContinuousBackupInfo.t() | nil,
          :annotations => map() | nil,
          :backupSource => GoogleApi.AlloyDB.V1.Model.BackupSource.t() | nil,
          :name => String.t() | nil,
          :subscriptionType => String.t() | nil,
          :trialMetadata => GoogleApi.AlloyDB.V1.Model.TrialMetadata.t() | nil,
          :maintenanceSchedule => GoogleApi.AlloyDB.V1.Model.MaintenanceSchedule.t() | nil,
          :displayName => String.t() | nil,
          :automatedBackupPolicy => GoogleApi.AlloyDB.V1.Model.AutomatedBackupPolicy.t() | nil,
          :encryptionConfig => GoogleApi.AlloyDB.V1.Model.EncryptionConfig.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :deleteTime => DateTime.t() | nil,
          :encryptionInfo => GoogleApi.AlloyDB.V1.Model.EncryptionInfo.t() | nil,
          :sslConfig => GoogleApi.AlloyDB.V1.Model.SslConfig.t() | nil,
          :migrationSource => GoogleApi.AlloyDB.V1.Model.MigrationSource.t() | nil,
          :tags => map() | nil,
          :initialUser => GoogleApi.AlloyDB.V1.Model.UserPassword.t() | nil,
          :reconciling => boolean() | nil,
          :databaseVersion => String.t() | nil,
          :secondaryConfig => GoogleApi.AlloyDB.V1.Model.SecondaryConfig.t() | nil,
          :primaryConfig => GoogleApi.AlloyDB.V1.Model.PrimaryConfig.t() | nil,
          :clusterType => String.t() | nil,
          :maintenanceUpdatePolicy =>
            GoogleApi.AlloyDB.V1.Model.MaintenanceUpdatePolicy.t() | nil,
          :network => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :networkConfig => GoogleApi.AlloyDB.V1.Model.NetworkConfig.t() | nil,
          :continuousBackupConfig => GoogleApi.AlloyDB.V1.Model.ContinuousBackupConfig.t() | nil,
          :pscConfig => GoogleApi.AlloyDB.V1.Model.PscConfig.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:state)
  field(:labels, type: :map)
  field(:continuousBackupInfo, as: GoogleApi.AlloyDB.V1.Model.ContinuousBackupInfo)
  field(:annotations, type: :map)
  field(:backupSource, as: GoogleApi.AlloyDB.V1.Model.BackupSource)
  field(:name)
  field(:subscriptionType)
  field(:trialMetadata, as: GoogleApi.AlloyDB.V1.Model.TrialMetadata)
  field(:maintenanceSchedule, as: GoogleApi.AlloyDB.V1.Model.MaintenanceSchedule)
  field(:displayName)
  field(:automatedBackupPolicy, as: GoogleApi.AlloyDB.V1.Model.AutomatedBackupPolicy)
  field(:encryptionConfig, as: GoogleApi.AlloyDB.V1.Model.EncryptionConfig)
  field(:satisfiesPzs)
  field(:deleteTime, as: DateTime)
  field(:encryptionInfo, as: GoogleApi.AlloyDB.V1.Model.EncryptionInfo)
  field(:sslConfig, as: GoogleApi.AlloyDB.V1.Model.SslConfig)
  field(:migrationSource, as: GoogleApi.AlloyDB.V1.Model.MigrationSource)
  field(:tags, type: :map)
  field(:initialUser, as: GoogleApi.AlloyDB.V1.Model.UserPassword)
  field(:reconciling)
  field(:databaseVersion)
  field(:secondaryConfig, as: GoogleApi.AlloyDB.V1.Model.SecondaryConfig)
  field(:primaryConfig, as: GoogleApi.AlloyDB.V1.Model.PrimaryConfig)
  field(:clusterType)
  field(:maintenanceUpdatePolicy, as: GoogleApi.AlloyDB.V1.Model.MaintenanceUpdatePolicy)
  field(:network)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:etag)
  field(:networkConfig, as: GoogleApi.AlloyDB.V1.Model.NetworkConfig)
  field(:continuousBackupConfig, as: GoogleApi.AlloyDB.V1.Model.ContinuousBackupConfig)
  field(:pscConfig, as: GoogleApi.AlloyDB.V1.Model.PscConfig)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.Cluster do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.Cluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.Cluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

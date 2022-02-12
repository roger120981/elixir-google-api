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

defmodule GoogleApi.Redis.V1beta1.Model.Instance do
  @moduledoc """
  A Memorystore for Redis instance.

  ## Attributes

  *   `alternativeLocationId` (*type:* `String.t`, *default:* `nil`) - Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location_id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location_id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
  *   `authEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is enabled on the instance. Default value is "false" meaning AUTH is disabled.
  *   `authorizedNetwork` (*type:* `String.t`, *default:* `nil`) - Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected. If left unspecified, the `default` network will be used.
  *   `connectMode` (*type:* `String.t`, *default:* `nil`) - Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was created.
  *   `currentLocationId` (*type:* `String.t`, *default:* `nil`) - Output only. The current zone where the Redis primary node is located. In basic tier, this will always be the same as [location_id]. In standard tier, this can be the zone of any node in the instance.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - An arbitrary and optional user-provided name for the instance.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Output only. Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Resource labels to represent user provided metadata
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
  *   `maintenancePolicy` (*type:* `GoogleApi.Redis.V1beta1.Model.MaintenancePolicy.t`, *default:* `nil`) - Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
  *   `maintenanceSchedule` (*type:* `GoogleApi.Redis.V1beta1.Model.MaintenanceSchedule.t`, *default:* `nil`) - Output only. Date and time of upcoming maintenance events which have been scheduled.
  *   `memorySizeGb` (*type:* `integer()`, *default:* `nil`) - Required. Redis memory size in GiB.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/instances/{instance_id}` Note: Redis instances are managed and addressed at regional level so location_id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location_id and alternative_location_id fields for more details.
  *   `nodes` (*type:* `list(GoogleApi.Redis.V1beta1.Model.NodeInfo.t)`, *default:* `nil`) - Output only. Info per node.
  *   `persistenceConfig` (*type:* `GoogleApi.Redis.V1beta1.Model.PersistenceConfig.t`, *default:* `nil`) - Optional. Persistence configuration parameters
  *   `persistenceIamIdentity` (*type:* `String.t`, *default:* `nil`) - Output only. Cloud IAM identity used by import / export operations to transfer data to/from Cloud Storage. Format is "serviceAccount:". The value may change over time for a given instance so should be checked before each import/export operation.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Output only. The port number of the exposed Redis endpoint.
  *   `readEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes will exhibit some lag behind the primary. Write requests must target 'host'.
  *   `readEndpointPort` (*type:* `integer()`, *default:* `nil`) - Output only. The port number of the exposed readonly redis endpoint. Standard tier only. Write requests should target 'port'.
  *   `readReplicasMode` (*type:* `String.t`, *default:* `nil`) - Optional. Read replica mode. Can only be specified when trying to create the instance.
  *   `redisConfigs` (*type:* `map()`, *default:* `nil`) - Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
  *   `redisVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * `REDIS_3_2` for Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x compatibility
  *   `replicaCount` (*type:* `integer()`, *default:* `nil`) - Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
  *   `reservedIpRange` (*type:* `String.t`, *default:* `nil`) - Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused /29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For READ_REPLICAS_ENABLED the default block size is /28.
  *   `secondaryIpRange` (*type:* `String.t`, *default:* `nil`) - Optional. Additional ip ranges for node placement, beyond those specified in reserved_ip_range. At most 1 secondary IP range is supported. The mask value must not exceed /28. Not supported for BASIC tier. Updates can only add new ranges, once added ranges cannot be changed or deleted. Values in this list cannot overlap with the reserved_ip_range. Not supported during instance creation.
  *   `serverCaCerts` (*type:* `list(GoogleApi.Redis.V1beta1.Model.TlsCertificate.t)`, *default:* `nil`) - Output only. List of server CA certificates for the instance.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of this instance.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current status of this instance, if available.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - Required. The service tier of the instance.
  *   `transitEncryptionMode` (*type:* `String.t`, *default:* `nil`) - Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternativeLocationId => String.t() | nil,
          :authEnabled => boolean() | nil,
          :authorizedNetwork => String.t() | nil,
          :connectMode => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :currentLocationId => String.t() | nil,
          :displayName => String.t() | nil,
          :host => String.t() | nil,
          :labels => map() | nil,
          :locationId => String.t() | nil,
          :maintenancePolicy => GoogleApi.Redis.V1beta1.Model.MaintenancePolicy.t() | nil,
          :maintenanceSchedule => GoogleApi.Redis.V1beta1.Model.MaintenanceSchedule.t() | nil,
          :memorySizeGb => integer() | nil,
          :name => String.t() | nil,
          :nodes => list(GoogleApi.Redis.V1beta1.Model.NodeInfo.t()) | nil,
          :persistenceConfig => GoogleApi.Redis.V1beta1.Model.PersistenceConfig.t() | nil,
          :persistenceIamIdentity => String.t() | nil,
          :port => integer() | nil,
          :readEndpoint => String.t() | nil,
          :readEndpointPort => integer() | nil,
          :readReplicasMode => String.t() | nil,
          :redisConfigs => map() | nil,
          :redisVersion => String.t() | nil,
          :replicaCount => integer() | nil,
          :reservedIpRange => String.t() | nil,
          :secondaryIpRange => String.t() | nil,
          :serverCaCerts => list(GoogleApi.Redis.V1beta1.Model.TlsCertificate.t()) | nil,
          :state => String.t() | nil,
          :statusMessage => String.t() | nil,
          :tier => String.t() | nil,
          :transitEncryptionMode => String.t() | nil
        }

  field(:alternativeLocationId)
  field(:authEnabled)
  field(:authorizedNetwork)
  field(:connectMode)
  field(:createTime, as: DateTime)
  field(:currentLocationId)
  field(:displayName)
  field(:host)
  field(:labels, type: :map)
  field(:locationId)
  field(:maintenancePolicy, as: GoogleApi.Redis.V1beta1.Model.MaintenancePolicy)
  field(:maintenanceSchedule, as: GoogleApi.Redis.V1beta1.Model.MaintenanceSchedule)
  field(:memorySizeGb)
  field(:name)
  field(:nodes, as: GoogleApi.Redis.V1beta1.Model.NodeInfo, type: :list)
  field(:persistenceConfig, as: GoogleApi.Redis.V1beta1.Model.PersistenceConfig)
  field(:persistenceIamIdentity)
  field(:port)
  field(:readEndpoint)
  field(:readEndpointPort)
  field(:readReplicasMode)
  field(:redisConfigs, type: :map)
  field(:redisVersion)
  field(:replicaCount)
  field(:reservedIpRange)
  field(:secondaryIpRange)
  field(:serverCaCerts, as: GoogleApi.Redis.V1beta1.Model.TlsCertificate, type: :list)
  field(:state)
  field(:statusMessage)
  field(:tier)
  field(:transitEncryptionMode)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.Instance do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.NetworkConnectivity.V1.Model.Hub do
  @moduledoc """
  A Network Connectivity Center hub is a global management resource to which you attach spokes. A single hub can contain spokes from multiple regions. However, if any of a hub's spokes use the site-to-site data transfer feature, the resources associated with those spokes must all be in the same VPC network. Spokes that do not use site-to-site data transfer can be associated with any VPC network in your project.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the hub was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. An optional description of the hub.
  *   `exportPsc` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether Private Service Connect connection propagation is enabled for the hub. If true, Private Service Connect endpoints in VPC spokes attached to the hub are made accessible to other VPC spokes attached to the hub. The default value is false.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  *   `policyMode` (*type:* `String.t`, *default:* `nil`) - Optional. The policy mode of this hub. This field can be either PRESET or CUSTOM. If unspecified, the policy_mode defaults to PRESET.
  *   `presetTopology` (*type:* `String.t`, *default:* `nil`) - Optional. The topology implemented in this hub. Currently, this field is only used when policy_mode = PRESET. The available preset topologies are MESH and STAR. If preset_topology is unspecified and policy_mode = PRESET, the preset_topology defaults to MESH. When policy_mode = CUSTOM, the preset_topology is set to PRESET_TOPOLOGY_UNSPECIFIED.
  *   `routeTables` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The route tables that belong to this hub. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}` This field is read-only. Network Connectivity Center automatically populates it based on the route tables nested under the hub.
  *   `routingVpcs` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.RoutingVPC.t)`, *default:* `nil`) - The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  *   `spokeSummary` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.SpokeSummary.t`, *default:* `nil`) - Output only. A summary of the spokes associated with a hub. The summary includes a count of spokes according to type and according to state. If any spokes are inactive, the summary also lists the reasons they are inactive, including a count for each reason.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current lifecycle state of this hub.
  *   `uniqueId` (*type:* `String.t`, *default:* `nil`) - Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the hub was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :exportPsc => boolean() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :policyMode => String.t() | nil,
          :presetTopology => String.t() | nil,
          :routeTables => list(String.t()) | nil,
          :routingVpcs => list(GoogleApi.NetworkConnectivity.V1.Model.RoutingVPC.t()) | nil,
          :spokeSummary => GoogleApi.NetworkConnectivity.V1.Model.SpokeSummary.t() | nil,
          :state => String.t() | nil,
          :uniqueId => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:exportPsc)
  field(:labels, type: :map)
  field(:name)
  field(:policyMode)
  field(:presetTopology)
  field(:routeTables, type: :list)
  field(:routingVpcs, as: GoogleApi.NetworkConnectivity.V1.Model.RoutingVPC, type: :list)
  field(:spokeSummary, as: GoogleApi.NetworkConnectivity.V1.Model.SpokeSummary)
  field(:state)
  field(:uniqueId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.Hub do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.Hub.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.Hub do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

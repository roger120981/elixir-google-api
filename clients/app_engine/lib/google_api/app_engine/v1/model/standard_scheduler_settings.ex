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

defmodule GoogleApi.AppEngine.V1.Model.StandardSchedulerSettings do
  @moduledoc """
  Scheduler settings for standard environment.

  ## Attributes

  *   `maxInstances` (*type:* `integer()`, *default:* `nil`) - Maximum number of instances to run for this version. Set to 2147483647 to disable max_instances configuration.
  *   `minInstances` (*type:* `integer()`, *default:* `nil`) - Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  *   `targetCpuUtilization` (*type:* `float()`, *default:* `nil`) - Target CPU utilization ratio to maintain when scaling.
  *   `targetThroughputUtilization` (*type:* `float()`, *default:* `nil`) - Target throughput utilization ratio to maintain when scaling
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxInstances => integer() | nil,
          :minInstances => integer() | nil,
          :targetCpuUtilization => float() | nil,
          :targetThroughputUtilization => float() | nil
        }

  field(:maxInstances)
  field(:minInstances)
  field(:targetCpuUtilization)
  field(:targetThroughputUtilization)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.StandardSchedulerSettings do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.StandardSchedulerSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.StandardSchedulerSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

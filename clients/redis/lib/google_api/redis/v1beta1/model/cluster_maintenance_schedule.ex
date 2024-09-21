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

defmodule GoogleApi.Redis.V1beta1.Model.ClusterMaintenanceSchedule do
  @moduledoc """
  Upcoming maitenance schedule.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The end time of any upcoming scheduled maintenance for this instance.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The start time of any upcoming scheduled maintenance for this instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.ClusterMaintenanceSchedule do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.ClusterMaintenanceSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.ClusterMaintenanceSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

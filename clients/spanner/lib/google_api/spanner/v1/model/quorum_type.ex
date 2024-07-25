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

defmodule GoogleApi.Spanner.V1.Model.QuorumType do
  @moduledoc """
  Information about the database quorum type. this applies only for dual region instance configs.

  ## Attributes

  *   `dualRegion` (*type:* `GoogleApi.Spanner.V1.Model.DualRegionQuorum.t`, *default:* `nil`) - Dual region quorum type.
  *   `singleRegion` (*type:* `GoogleApi.Spanner.V1.Model.SingleRegionQuorum.t`, *default:* `nil`) - Single region quorum type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dualRegion => GoogleApi.Spanner.V1.Model.DualRegionQuorum.t() | nil,
          :singleRegion => GoogleApi.Spanner.V1.Model.SingleRegionQuorum.t() | nil
        }

  field(:dualRegion, as: GoogleApi.Spanner.V1.Model.DualRegionQuorum)
  field(:singleRegion, as: GoogleApi.Spanner.V1.Model.SingleRegionQuorum)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.QuorumType do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.QuorumType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.QuorumType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.OnDemandScanning.V1.Model.GrafeasV1FileLocation do
  @moduledoc """
  Indicates the location at which a package was found.

  ## Attributes

  *   `filePath` (*type:* `String.t`, *default:* `nil`) - For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  *   `layerDetails` (*type:* `GoogleApi.OnDemandScanning.V1.Model.GrafeasV1LayerDetails.t`, *default:* `nil`) - Each package found in a file should have its own layer metadata (that is, information from the origin layer of the package).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filePath => String.t() | nil,
          :layerDetails => GoogleApi.OnDemandScanning.V1.Model.GrafeasV1LayerDetails.t() | nil
        }

  field(:filePath)
  field(:layerDetails, as: GoogleApi.OnDemandScanning.V1.Model.GrafeasV1LayerDetails)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.GrafeasV1FileLocation do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.GrafeasV1FileLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.GrafeasV1FileLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

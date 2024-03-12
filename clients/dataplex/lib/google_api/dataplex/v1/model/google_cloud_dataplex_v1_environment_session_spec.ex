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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentSessionSpec do
  @moduledoc """
  Configuration for sessions created for this environment.

  ## Attributes

  *   `enableFastStartup` (*type:* `boolean()`, *default:* `nil`) - Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to "default", and with default configuration.
  *   `maxIdleDuration` (*type:* `String.t`, *default:* `nil`) - Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableFastStartup => boolean() | nil,
          :maxIdleDuration => String.t() | nil
        }

  field(:enableFastStartup)
  field(:maxIdleDuration)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentSessionSpec do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentSessionSpec.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EnvironmentSessionSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

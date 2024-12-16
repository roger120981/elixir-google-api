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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpGetAction do
  @moduledoc """
  HttpGetAction describes an action based on HTTP Get requests.

  ## Attributes

  *   `host` (*type:* `String.t`, *default:* `nil`) - Host name to connect to, defaults to the model serving container's IP. You probably want to set "Host" in httpHeaders instead.
  *   `httpHeaders` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpHeader.t)`, *default:* `nil`) - Custom headers to set in the request. HTTP allows repeated headers.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Path to access on the HTTP server.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Number of the port to access on the container. Number must be in the range 1 to 65535.
  *   `scheme` (*type:* `String.t`, *default:* `nil`) - Scheme to use for connecting to the host. Defaults to HTTP. Acceptable values are "HTTP" or "HTTPS".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => String.t() | nil,
          :httpHeaders =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpHeader.t()) | nil,
          :path => String.t() | nil,
          :port => integer() | nil,
          :scheme => String.t() | nil
        }

  field(:host)

  field(:httpHeaders,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpHeader,
    type: :list
  )

  field(:path)
  field(:port)
  field(:scheme)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpGetAction do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpGetAction.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpGetAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

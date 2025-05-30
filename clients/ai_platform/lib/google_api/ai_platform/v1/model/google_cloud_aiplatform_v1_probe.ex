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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Probe do
  @moduledoc """
  Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

  ## Attributes

  *   `exec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeExecAction.t`, *default:* `nil`) - ExecAction probes the health of a container by executing a command.
  *   `failureThreshold` (*type:* `integer()`, *default:* `nil`) - Number of consecutive failures before the probe is considered failed. Defaults to 3. Minimum value is 1. Maps to Kubernetes probe argument 'failureThreshold'.
  *   `grpc` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeGrpcAction.t`, *default:* `nil`) - GrpcAction probes the health of a container by sending a gRPC request.
  *   `httpGet` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpGetAction.t`, *default:* `nil`) - HttpGetAction probes the health of a container by sending an HTTP GET request.
  *   `initialDelaySeconds` (*type:* `integer()`, *default:* `nil`) - Number of seconds to wait before starting the probe. Defaults to 0. Minimum value is 0. Maps to Kubernetes probe argument 'initialDelaySeconds'.
  *   `periodSeconds` (*type:* `integer()`, *default:* `nil`) - How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  *   `successThreshold` (*type:* `integer()`, *default:* `nil`) - Number of consecutive successes before the probe is considered successful. Defaults to 1. Minimum value is 1. Maps to Kubernetes probe argument 'successThreshold'.
  *   `tcpSocket` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeTcpSocketAction.t`, *default:* `nil`) - TcpSocketAction probes the health of a container by opening a TCP socket connection.
  *   `timeoutSeconds` (*type:* `integer()`, *default:* `nil`) - Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exec => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeExecAction.t() | nil,
          :failureThreshold => integer() | nil,
          :grpc => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeGrpcAction.t() | nil,
          :httpGet =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpGetAction.t() | nil,
          :initialDelaySeconds => integer() | nil,
          :periodSeconds => integer() | nil,
          :successThreshold => integer() | nil,
          :tcpSocket =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeTcpSocketAction.t() | nil,
          :timeoutSeconds => integer() | nil
        }

  field(:exec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeExecAction)
  field(:failureThreshold)
  field(:grpc, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeGrpcAction)
  field(:httpGet, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeHttpGetAction)
  field(:initialDelaySeconds)
  field(:periodSeconds)
  field(:successThreshold)
  field(:tcpSocket, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ProbeTcpSocketAction)
  field(:timeoutSeconds)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Probe do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Probe.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Probe do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

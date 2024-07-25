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

defmodule GoogleApi.WorkloadManager.V1.Model.ExecutionResult do
  @moduledoc """
  Message describing the result of an execution

  ## Attributes

  *   `commands` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.Command.t)`, *default:* `nil`) - The commands to remediate the violation.
  *   `documentationUrl` (*type:* `String.t`, *default:* `nil`) - The URL for the documentation of the rule.
  *   `resource` (*type:* `GoogleApi.WorkloadManager.V1.Model.Resource.t`, *default:* `nil`) - The resource that violates the rule.
  *   `rule` (*type:* `String.t`, *default:* `nil`) - The rule that is violated in an evaluation.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of violation.
  *   `violationDetails` (*type:* `GoogleApi.WorkloadManager.V1.Model.ViolationDetails.t`, *default:* `nil`) - The details of violation in an evaluation result.
  *   `violationMessage` (*type:* `String.t`, *default:* `nil`) - The violation message of an execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commands => list(GoogleApi.WorkloadManager.V1.Model.Command.t()) | nil,
          :documentationUrl => String.t() | nil,
          :resource => GoogleApi.WorkloadManager.V1.Model.Resource.t() | nil,
          :rule => String.t() | nil,
          :severity => String.t() | nil,
          :violationDetails => GoogleApi.WorkloadManager.V1.Model.ViolationDetails.t() | nil,
          :violationMessage => String.t() | nil
        }

  field(:commands, as: GoogleApi.WorkloadManager.V1.Model.Command, type: :list)
  field(:documentationUrl)
  field(:resource, as: GoogleApi.WorkloadManager.V1.Model.Resource)
  field(:rule)
  field(:severity)
  field(:violationDetails, as: GoogleApi.WorkloadManager.V1.Model.ViolationDetails)
  field(:violationMessage)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.ExecutionResult do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.ExecutionResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.ExecutionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

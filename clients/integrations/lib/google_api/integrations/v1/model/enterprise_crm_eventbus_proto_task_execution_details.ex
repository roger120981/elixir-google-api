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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTaskExecutionDetails do
  @moduledoc """
  Contains the details of the execution of this task. Next available id: 11

  ## Attributes

  *   `skippedOnFailure` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the task was skipped on failure. Only relevant if the task is in SKIPPED state.
  *   `taskAttemptStats` (*type:* `list(GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats.t)`, *default:* `nil`) - 
  *   `taskExecutionState` (*type:* `String.t`, *default:* `nil`) - 
  *   `taskNumber` (*type:* `String.t`, *default:* `nil`) - Pointer to the task config it used for execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :skippedOnFailure => boolean() | nil,
          :taskAttemptStats =>
            list(
              GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats.t()
            )
            | nil,
          :taskExecutionState => String.t() | nil,
          :taskNumber => String.t() | nil
        }

  field(:skippedOnFailure)

  field(:taskAttemptStats,
    as:
      GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats,
    type: :list
  )

  field(:taskExecutionState)
  field(:taskNumber)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTaskExecutionDetails do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTaskExecutionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoTaskExecutionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudTasks.V2beta2.Model.TaskStatus do
  @moduledoc """
  Status of the task.

  ## Attributes

  *   `attemptDispatchCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of attempts dispatched.

      This count includes attempts which have been dispatched but haven't
      received a response.
  *   `attemptResponseCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of attempts which have received a response.

      This field is not calculated for pull tasks.
  *   `firstAttemptStatus` (*type:* `GoogleApi.CloudTasks.V2beta2.Model.AttemptStatus.t`, *default:* `nil`) - Output only. The status of the task's first attempt.

      Only dispatch_time will be set.
      The other AttemptStatus information is not retained by Cloud Tasks.

      This field is not calculated for pull tasks.
  *   `lastAttemptStatus` (*type:* `GoogleApi.CloudTasks.V2beta2.Model.AttemptStatus.t`, *default:* `nil`) - Output only. The status of the task's last attempt.

      This field is not calculated for pull tasks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attemptDispatchCount => integer(),
          :attemptResponseCount => integer(),
          :firstAttemptStatus => GoogleApi.CloudTasks.V2beta2.Model.AttemptStatus.t(),
          :lastAttemptStatus => GoogleApi.CloudTasks.V2beta2.Model.AttemptStatus.t()
        }

  field(:attemptDispatchCount)
  field(:attemptResponseCount)
  field(:firstAttemptStatus, as: GoogleApi.CloudTasks.V2beta2.Model.AttemptStatus)
  field(:lastAttemptStatus, as: GoogleApi.CloudTasks.V2beta2.Model.AttemptStatus)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.TaskStatus do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.TaskStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.TaskStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksResponse do
  @moduledoc """
  Response message for leasing tasks using LeaseTasks.

  ## Attributes

  *   `tasks` (*type:* `list(GoogleApi.CloudTasks.V2beta2.Model.Task.t)`, *default:* `nil`) - The leased tasks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tasks => list(GoogleApi.CloudTasks.V2beta2.Model.Task.t())
        }

  field(:tasks, as: GoogleApi.CloudTasks.V2beta2.Model.Task, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksResponse do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

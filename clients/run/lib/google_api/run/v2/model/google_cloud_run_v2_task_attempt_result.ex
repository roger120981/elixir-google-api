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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskAttemptResult do
  @moduledoc """
  Result of a task attempt.

  ## Attributes

  *   `exitCode` (*type:* `integer()`, *default:* `nil`) - Output only. The exit code of this attempt. This may be unset if the container was unable to exit cleanly with a code due to some other failure. See status field for possible failure details.
  *   `status` (*type:* `GoogleApi.Run.V2.Model.GoogleRpcStatus.t`, *default:* `nil`) - Output only. The status of this attempt. If the status code is OK, then the attempt succeeded.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exitCode => integer() | nil,
          :status => GoogleApi.Run.V2.Model.GoogleRpcStatus.t() | nil
        }

  field(:exitCode)
  field(:status, as: GoogleApi.Run.V2.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskAttemptResult do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskAttemptResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2TaskAttemptResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

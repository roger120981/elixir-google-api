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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateSuggestionsRequest do
  @moduledoc """
  The request message for Conversations.GenerateSuggestions.

  ## Attributes

  *   `latestMessage` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the latest conversation message for which the request is triggered. Format: `projects//locations//conversations//messages/`.
  *   `triggerEvents` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A list of trigger events. Only generators configured in the conversation_profile whose trigger_event is listed here will be triggered.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :latestMessage => String.t() | nil,
          :triggerEvents => list(String.t()) | nil
        }

  field(:latestMessage)
  field(:triggerEvents, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateSuggestionsRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateSuggestionsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateSuggestionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

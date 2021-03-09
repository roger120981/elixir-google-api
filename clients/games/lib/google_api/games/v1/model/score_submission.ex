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

defmodule GoogleApi.Games.V1.Model.ScoreSubmission do
  @moduledoc """
  A request to submit a score to leaderboards.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#scoreSubmission`.
  *   `leaderboardId` (*type:* `String.t`, *default:* `nil`) - The leaderboard this score is being submitted to.
  *   `score` (*type:* `String.t`, *default:* `nil`) - The new score being submitted.
  *   `scoreTag` (*type:* `String.t`, *default:* `nil`) - Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
  *   `signature` (*type:* `String.t`, *default:* `nil`) - Signature Values will contain URI-safe characters as defined by section 2.3 of RFC 3986.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :leaderboardId => String.t() | nil,
          :score => String.t() | nil,
          :scoreTag => String.t() | nil,
          :signature => String.t() | nil
        }

  field(:kind)
  field(:leaderboardId)
  field(:score)
  field(:scoreTag)
  field(:signature)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.ScoreSubmission do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.ScoreSubmission.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.ScoreSubmission do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

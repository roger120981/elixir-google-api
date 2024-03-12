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

defmodule GoogleApi.Firestore.V1.Model.RunAggregationQueryResponse do
  @moduledoc """
  The response for Firestore.RunAggregationQuery.

  ## Attributes

  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the aggregate result was computed. This is always monotonically increasing; in this case, the previous AggregationResult in the result stream are guaranteed not to have changed between their `read_time` and this one. If the query returns no results, a response with `read_time` and no `result` will be sent, and this represents the time at which the query was run.
  *   `result` (*type:* `GoogleApi.Firestore.V1.Model.AggregationResult.t`, *default:* `nil`) - A single aggregation result. Not present when reporting partial progress.
  *   `transaction` (*type:* `String.t`, *default:* `nil`) - The transaction that was started as part of this request. Only present on the first response when the request requested to start a new transaction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :readTime => DateTime.t() | nil,
          :result => GoogleApi.Firestore.V1.Model.AggregationResult.t() | nil,
          :transaction => String.t() | nil
        }

  field(:readTime, as: DateTime)
  field(:result, as: GoogleApi.Firestore.V1.Model.AggregationResult)
  field(:transaction)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.RunAggregationQueryResponse do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.RunAggregationQueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.RunAggregationQueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress do
  @moduledoc """
  Annotation progress for a single video.

  ## Attributes

  *   `feature` (*type:* `String.t`, *default:* `nil`) - Specifies which feature is being tracked if the request contains more than one feature.
  *   `inputUri` (*type:* `String.t`, *default:* `nil`) - Video file location in [Cloud Storage](https://cloud.google.com/storage/).
  *   `progressPercent` (*type:* `integer()`, *default:* `nil`) - Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.
  *   `segment` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment.t`, *default:* `nil`) - Specifies which segment is being tracked if the request contains more than one segment.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the request was received.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Time of the most recent update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :feature => String.t() | nil,
          :inputUri => String.t() | nil,
          :progressPercent => integer() | nil,
          :segment =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment.t()
            | nil,
          :startTime => DateTime.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:feature)
  field(:inputUri)
  field(:progressPercent)

  field(:segment,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment
  )

  field(:startTime, as: DateTime)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

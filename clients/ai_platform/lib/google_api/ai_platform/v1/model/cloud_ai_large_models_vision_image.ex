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

defmodule GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionImage do
  @moduledoc """
  Image.

  ## Attributes

  *   `encoding` (*type:* `String.t`, *default:* `nil`) - Image encoding, encoded as "image/png" or "image/jpg".
  *   `generationSeed` (*type:* `integer()`, *default:* `nil`) - Generation seed for the sampled image. This parameter is exposed to the user only if one of the following is true: 1. The user specified per-example seeds in the request. 2. The user doesn't specify the generation seed in the request.
  *   `image` (*type:* `String.t`, *default:* `nil`) - Raw bytes.
  *   `imageRaiScores` (*type:* `GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionImageRAIScores.t`, *default:* `nil`) - RAI scores for generated image.
  *   `raiInfo` (*type:* `GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionRaiInfo.t`, *default:* `nil`) - RAI info for image.
  *   `semanticFilterResponse` (*type:* `GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionSemanticFilterResponse.t`, *default:* `nil`) - Semantic filter info for image.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Text/Expanded text input for imagen.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Path to another storage (typically Google Cloud Storage).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encoding => String.t() | nil,
          :generationSeed => integer() | nil,
          :image => String.t() | nil,
          :imageRaiScores =>
            GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionImageRAIScores.t() | nil,
          :raiInfo => GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionRaiInfo.t() | nil,
          :semanticFilterResponse =>
            GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionSemanticFilterResponse.t() | nil,
          :text => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:encoding)
  field(:generationSeed)
  field(:image)
  field(:imageRaiScores, as: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionImageRAIScores)
  field(:raiInfo, as: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionRaiInfo)

  field(:semanticFilterResponse,
    as: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionSemanticFilterResponse
  )

  field(:text)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionImage do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

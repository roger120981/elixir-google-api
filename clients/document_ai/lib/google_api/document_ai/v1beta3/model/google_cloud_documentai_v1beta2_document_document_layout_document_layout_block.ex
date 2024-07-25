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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlock do
  @moduledoc """
  Represents a block. A block could be one of the various types (text, table, list) supported.

  ## Attributes

  *   `blockId` (*type:* `String.t`, *default:* `nil`) - ID of the block.
  *   `listBlock` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock.t`, *default:* `nil`) - Block consisting of list content/structure.
  *   `pageSpan` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan.t`, *default:* `nil`) - Page span of the block.
  *   `tableBlock` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock.t`, *default:* `nil`) - Block consisting of table content/structure.
  *   `textBlock` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock.t`, *default:* `nil`) - Block consisting of text content.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockId => String.t() | nil,
          :listBlock =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock.t()
            | nil,
          :pageSpan =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan.t()
            | nil,
          :tableBlock =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock.t()
            | nil,
          :textBlock =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock.t()
            | nil
        }

  field(:blockId)

  field(:listBlock,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock
  )

  field(:pageSpan,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
  )

  field(:tableBlock,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock
  )

  field(:textBlock,
    as:
      GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlock do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlock.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta2DocumentDocumentLayoutDocumentLayoutBlock do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

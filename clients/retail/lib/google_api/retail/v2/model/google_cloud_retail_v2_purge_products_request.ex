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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurgeProductsRequest do
  @moduledoc """
  Request message for PurgeProducts method.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Required. The filter string to specify the products to be deleted with a length limit of 5,000 characters. Empty string filter is not allowed. "*" implies delete all items in a branch. The eligible fields for filtering are: * `availability`: Double quoted Product.availability string. * `create_time` : in ISO 8601 "zulu" format. Supported syntax: * Comparators (">", "<", ">=", "<=", "="). Examples: * create_time <= "2015-02-13T17:05:46Z" * availability = "IN_STOCK" * Conjunctions ("AND") Examples: * create_time <= "2015-02-13T17:05:46Z" AND availability = "PREORDER" * Disjunctions ("OR") Examples: * create_time <= "2015-02-13T17:05:46Z" OR availability = "IN_STOCK" * Can support nested queries. Examples: * (create_time <= "2015-02-13T17:05:46Z" AND availability = "PREORDER") OR (create_time >= "2015-02-14T13:03:32Z" AND availability = "IN_STOCK") * Filter Limits: * Filter should not contain more than 6 conditions. * Max nesting depth should not exceed 2 levels. Examples queries: * Delete back order products created before a timestamp. create_time <= "2015-02-13T17:05:46Z" OR availability = "BACKORDER"
  *   `force` (*type:* `boolean()`, *default:* `nil`) - Actually perform the purge. If `force` is set to false, the method will return the expected purge count without deleting any products.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :force => boolean() | nil
        }

  field(:filter)
  field(:force)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurgeProductsRequest do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurgeProductsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PurgeProductsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

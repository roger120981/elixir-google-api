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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleRemoveFacetAction do
  @moduledoc """
  Removes an attribute/facet in the request if is present. * Rule Condition: Must specify non-empty Condition.query_terms (for search only) or Condition.page_categories (for browse only), but can't specify both. * Action Input: attribute name * Action Result: Will remove the attribute (as a facet) from the request if it is present. Example: Suppose the query is "shoes", the Condition.query_terms is "shoes" and the attribute name "size", then facet key "size" will be removed from the request (if it is present).

  ## Attributes

  *   `attributeNames` (*type:* `list(String.t)`, *default:* `nil`) - The attribute names (i.e. facet keys) to remove from the dynamic facets (if present in the request). There can't be more 3 attribute names. Each attribute name should be a valid attribute name, be non-empty and contain at most 80 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeNames => list(String.t()) | nil
        }

  field(:attributeNames, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleRemoveFacetAction do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleRemoveFacetAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2RuleRemoveFacetAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey do
  @moduledoc """
  Specifies how a facet is computed.

  ## Attributes

  *   `caseInsensitive` (*type:* `boolean()`, *default:* `nil`) - True to make facet keys case insensitive when getting faceting values with prefixes or contains; false otherwise.
  *   `contains` (*type:* `list(String.t)`, *default:* `nil`) - Only get facet values that contains the given strings. For example, suppose "categories" has three values "Women > Shoe", "Women > Dress" and "Men > Shoe". If set "contains" to "Shoe", the "categories" facet gives only "Women > Shoe" and "Men > Shoe". Only supported on textual fields. Maximum is 10.
  *   `intervals` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Interval.t)`, *default:* `nil`) - Set only if values should be bucketized into intervals. Must be set for facets with numerical values. Must not be set for facet with text values. Maximum number of intervals is 40. For all numerical facet keys that appear in the list of products from the catalog, the percentiles 0, 10, 30, 50, 70, 90, and 100 are computed from their distribution weekly. If the model assigns a high score to a numerical facet key and its intervals are not specified in the search request, these percentiles become the bounds for its intervals and are returned in the response. If the facet key intervals are specified in the request, then the specified intervals are returned instead.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Required. Supported textual and numerical facet keys in Product object, over which the facet values are computed. Facet key is case-sensitive. Allowed facet keys when FacetKey.query is not specified: * textual_field = * "brands" * "categories" * "genders" * "ageGroups" * "availability" * "colorFamilies" * "colors" * "sizes" * "materials" * "patterns" * "conditions" * "attributes.key" * "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" * "customFulfillment1" * "customFulfillment2" * "customFulfillment3" * "customFulfillment4" * "customFulfillment5" * "inventory(place_id,attributes.key)" * numerical_field = * "price" * "discount" * "rating" * "ratingCount" * "attributes.key" * "inventory(place_id,price)" * "inventory(place_id,original_price)" * "inventory(place_id,attributes.key)"
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - The order in which SearchResponse.Facet.values are returned. Allowed values are: * "count desc", which means order by SearchResponse.Facet.values.count descending. * "value desc", which means order by SearchResponse.Facet.values.value descending. Only applies to textual facets. If not set, textual values are sorted in [natural order](https://en.wikipedia.org/wiki/Natural_sort_order); numerical intervals are sorted in the order given by FacetSpec.FacetKey.intervals; FulfillmentInfo.place_ids are sorted in the order given by FacetSpec.FacetKey.restricted_values.
  *   `prefixes` (*type:* `list(String.t)`, *default:* `nil`) - Only get facet values that start with the given string prefix. For example, suppose "categories" has three values "Women > Shoe", "Women > Dress" and "Men > Shoe". If set "prefixes" to "Women", the "categories" facet gives only "Women > Shoe" and "Women > Dress". Only supported on textual fields. Maximum is 10.
  *   `query` (*type:* `String.t`, *default:* `nil`) - The query that is used to compute facet for the given facet key. When provided, it overrides the default behavior of facet computation. The query syntax is the same as a filter expression. See SearchRequest.filter for detail syntax and limitations. Notice that there is no limitation on FacetKey.key when query is specified. In the response, SearchResponse.Facet.values.value is always "1" and SearchResponse.Facet.values.count is the number of results that match the query. For example, you can set a customized facet for "shipToStore", where FacetKey.key is "customizedShipToStore", and FacetKey.query is "availability: ANY(\\"IN_STOCK\\") AND shipToStore: ANY(\\"123\\")". Then the facet counts the products that are both in stock and ship to store "123".
  *   `restrictedValues` (*type:* `list(String.t)`, *default:* `nil`) - Only get facet for the given restricted values. For example, when using "pickupInStore" as key and set restricted values to ["store123", "store456"], only facets for "store123" and "store456" are returned. Only supported on predefined textual fields, custom textual attributes and fulfillments. Maximum is 20. Must be set for the fulfillment facet keys: * pickupInStore * shipToStore * sameDayDelivery * nextDayDelivery * customFulfillment1 * customFulfillment2 * customFulfillment3 * customFulfillment4 * customFulfillment5
  *   `returnMinMax` (*type:* `boolean()`, *default:* `nil`) - Returns the min and max value for each numerical facet intervals. Ignored for textual facets.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caseInsensitive => boolean() | nil,
          :contains => list(String.t()) | nil,
          :intervals => list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Interval.t()) | nil,
          :key => String.t() | nil,
          :orderBy => String.t() | nil,
          :prefixes => list(String.t()) | nil,
          :query => String.t() | nil,
          :restrictedValues => list(String.t()) | nil,
          :returnMinMax => boolean() | nil
        }

  field(:caseInsensitive)
  field(:contains, type: :list)
  field(:intervals, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Interval, type: :list)
  field(:key)
  field(:orderBy)
  field(:prefixes, type: :list)
  field(:query)
  field(:restrictedValues, type: :list)
  field(:returnMinMax)
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2SearchRequestFacetSpecFacetKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

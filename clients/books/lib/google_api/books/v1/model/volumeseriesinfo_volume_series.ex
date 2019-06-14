# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries do
  @moduledoc """


  ## Attributes

  - issue (list(GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeriesIssue.t)): List of issues. Applicable only for Collection Edition and Omnibus. Defaults to `nil`.
  - orderNumber (integer()): The book order number in the series. Defaults to `nil`.
  - seriesBookType (String.t): The book type in the context of series. Examples - Single Issue, Collection Edition, etc. Defaults to `nil`.
  - seriesId (String.t): The series id. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :issue => list(GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeriesIssue.t()),
          :orderNumber => integer(),
          :seriesBookType => String.t(),
          :seriesId => String.t()
        }

  field(:issue, as: GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeriesIssue, type: :list)
  field(:orderNumber)
  field(:seriesBookType)
  field(:seriesId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeseriesinfoVolumeSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

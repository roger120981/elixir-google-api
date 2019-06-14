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

defmodule GoogleApi.Books.V1.Model.VolumeAccessInfoEpub do
  @moduledoc """
  Information about epub content. (In LITE projection.)

  ## Attributes

  - acsTokenLink (String.t): URL to retrieve ACS token for epub download. (In LITE projection.) Defaults to `nil`.
  - downloadLink (String.t): URL to download epub. (In LITE projection.) Defaults to `nil`.
  - isAvailable (boolean()): Is a flowing text epub available either as public domain or for purchase. (In LITE projection.) Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acsTokenLink => String.t(),
          :downloadLink => String.t(),
          :isAvailable => boolean()
        }

  field(:acsTokenLink)
  field(:downloadLink)
  field(:isAvailable)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeAccessInfoEpub do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeAccessInfoEpub.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeAccessInfoEpub do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.HealthCare.V1beta1.Model.ConsentList do
  @moduledoc """
  List of resource names of Consent resources.

  ## Attributes

  *   `consents` (*type:* `list(String.t)`, *default:* `nil`) - The resource names of the Consents to evaluate against, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consents => list(String.t())
        }

  field(:consents, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ConsentList do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ConsentList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ConsentList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

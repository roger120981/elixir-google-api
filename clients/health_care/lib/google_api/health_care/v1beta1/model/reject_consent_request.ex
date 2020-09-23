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

defmodule GoogleApi.HealthCare.V1beta1.Model.RejectConsentRequest do
  @moduledoc """
  Rejects the latest revision of the specified Consent by committing a new revision with `state` updated to `REJECTED`. If the latest revision of the given consent is in the `REJECTED` state, no new revision is committed.

  ## Attributes

  *   `consentArtifact` (*type:* `String.t`, *default:* `nil`) - The resource name of the consent artifact that contains proof of the end user's rejection of the draft consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. If the draft consent had a consent artifact, this consent artifact overwrites it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consentArtifact => String.t()
        }

  field(:consentArtifact)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.RejectConsentRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.RejectConsentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.RejectConsentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Eventarc.V1.Model.Trigger do
  @moduledoc """
  A representation of the trigger resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `destination` (*type:* `GoogleApi.Eventarc.V1.Model.Destination.t`, *default:* `nil`) - Required. Destination specifies where the events should be sent to.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. This checksum is computed by the server based on the value of other fields, and might be sent only on create requests to ensure that the client has an up-to-date value before proceeding.
  *   `eventFilters` (*type:* `list(GoogleApi.Eventarc.V1.Model.EventFilter.t)`, *default:* `nil`) - Required. null The list of filters that applies to event attributes. Only events that match all the provided filters are sent to the destination.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User labels attached to the triggers that can be used to group resources.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the trigger. Must be unique within the location of the project and must be in `projects/{project}/locations/{location}/triggers/{trigger}` format.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. The IAM service account email associated with the trigger. The service account represents the identity of the trigger. The principal who calls this API must have the `iam.serviceAccounts.actAs` permission in the service account. See https://cloud.google.com/iam/docs/understanding-service-accounts?hl=en#sa_common for more information. For Cloud Run destinations, this service account is used to generate identity tokens when invoking the service. See https://cloud.google.com/run/docs/triggering/pubsub-push#create-service-account for information on how to invoke authenticated Cloud Run services. To create Audit Log triggers, the service account should also have the `roles/eventarc.eventReceiver` IAM role.
  *   `transport` (*type:* `GoogleApi.Eventarc.V1.Model.Transport.t`, *default:* `nil`) - Optional. To deliver messages, Eventarc might use other GCP products as a transport intermediary. This field contains a reference to that transport intermediary. This information can be used for debugging purposes.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server-assigned unique identifier for the trigger. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :destination => GoogleApi.Eventarc.V1.Model.Destination.t() | nil,
          :etag => String.t() | nil,
          :eventFilters => list(GoogleApi.Eventarc.V1.Model.EventFilter.t()) | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :transport => GoogleApi.Eventarc.V1.Model.Transport.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:destination, as: GoogleApi.Eventarc.V1.Model.Destination)
  field(:etag)
  field(:eventFilters, as: GoogleApi.Eventarc.V1.Model.EventFilter, type: :list)
  field(:labels, type: :map)
  field(:name)
  field(:serviceAccount)
  field(:transport, as: GoogleApi.Eventarc.V1.Model.Transport)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Eventarc.V1.Model.Trigger do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.Trigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Eventarc.V1.Model.Trigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

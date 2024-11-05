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

defmodule GoogleApi.FCM.V1.Model.ApnsConfig do
  @moduledoc """
  [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.

  ## Attributes

  *   `fcmOptions` (*type:* `GoogleApi.FCM.V1.Model.ApnsFcmOptions.t`, *default:* `nil`) - Options for features provided by the FCM SDK for iOS.
  *   `headers` (*type:* `map()`, *default:* `nil`) - HTTP request headers defined in Apple Push Notification Service. Refer to [APNs request headers](https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns) for supported headers such as `apns-expiration` and `apns-priority`. The backend sets a default value for `apns-expiration` of 30 days and a default value for `apns-priority` of 10 if not explicitly set.
  *   `liveActivityToken` (*type:* `String.t`, *default:* `nil`) - Optional. [Apple Live Activity](https://developer.apple.com/design/human-interface-guidelines/live-activities) token to send updates to. This token can either be a push token or [push-to-start](https://developer.apple.com/documentation/activitykit/activity/pushtostarttoken) token from Apple.
  *   `payload` (*type:* `map()`, *default:* `nil`) - APNs payload as a JSON object, including both `aps` dictionary and custom payload. See [Payload Key Reference](https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification). If present, it overrides google.firebase.fcm.v1.Notification.title and google.firebase.fcm.v1.Notification.body.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fcmOptions => GoogleApi.FCM.V1.Model.ApnsFcmOptions.t() | nil,
          :headers => map() | nil,
          :liveActivityToken => String.t() | nil,
          :payload => map() | nil
        }

  field(:fcmOptions, as: GoogleApi.FCM.V1.Model.ApnsFcmOptions)
  field(:headers, type: :map)
  field(:liveActivityToken)
  field(:payload, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.FCM.V1.Model.ApnsConfig do
  def decode(value, options) do
    GoogleApi.FCM.V1.Model.ApnsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FCM.V1.Model.ApnsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.AccessContextManager.V1.Model.AccessLevel do
  @moduledoc """
  An `AccessLevel` is a label that can be applied to requests to Google Cloud
  services, along with a list of requirements necessary for the label to be
  applied.

  ## Attributes

  *   `basic` (*type:* `GoogleApi.AccessContextManager.V1.Model.BasicLevel.t`, *default:* `nil`) - A `BasicLevel` composed of `Conditions`.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the `AccessLevel` was created in UTC.
  *   `custom` (*type:* `GoogleApi.AccessContextManager.V1.Model.CustomLevel.t`, *default:* `nil`) - A `CustomLevel` written in the Common Expression Language.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the `AccessLevel` and its use. Does not affect behavior.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource name for the Access Level. The `short_name` component
      must begin with a letter and only include alphanumeric and '_'. Format:
      `accessPolicies/{policy_id}/accessLevels/{short_name}`. The maximum length
      of the `short_name` component is 50 characters.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Human readable title. Must be unique within the Policy.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the `AccessLevel` was updated in UTC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basic => GoogleApi.AccessContextManager.V1.Model.BasicLevel.t(),
          :createTime => DateTime.t(),
          :custom => GoogleApi.AccessContextManager.V1.Model.CustomLevel.t(),
          :description => String.t(),
          :name => String.t(),
          :title => String.t(),
          :updateTime => DateTime.t()
        }

  field(:basic, as: GoogleApi.AccessContextManager.V1.Model.BasicLevel)
  field(:createTime, as: DateTime)
  field(:custom, as: GoogleApi.AccessContextManager.V1.Model.CustomLevel)
  field(:description)
  field(:name)
  field(:title)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.AccessLevel do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.AccessLevel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.AccessLevel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

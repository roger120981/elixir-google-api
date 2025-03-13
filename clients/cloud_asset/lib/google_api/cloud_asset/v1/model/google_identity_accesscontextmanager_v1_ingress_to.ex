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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressTo do
  @moduledoc """
  Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in `operations` AND `resources` in order to match.

  ## Attributes

  *   `operations` (*type:* `list(GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ApiOperation.t)`, *default:* `nil`) - A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.
  *   `resources` (*type:* `list(String.t)`, *default:* `nil`) - A list of resources, currently only projects in the form `projects/`, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single `*` is specified, then access to all resources inside the perimeter are allowed.
  *   `roles` (*type:* `list(String.t)`, *default:* `nil`) - IAM roles that represent the set of operations that the sources specified in the corresponding IngressFrom are allowed to perform in this ServicePerimeter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operations =>
            list(
              GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ApiOperation.t()
            )
            | nil,
          :resources => list(String.t()) | nil,
          :roles => list(String.t()) | nil
        }

  field(:operations,
    as: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1ApiOperation,
    type: :list
  )

  field(:resources, type: :list)
  field(:roles, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressTo do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressTo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleIdentityAccesscontextmanagerV1IngressTo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

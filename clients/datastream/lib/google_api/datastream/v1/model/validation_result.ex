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

defmodule GoogleApi.Datastream.V1.Model.ValidationResult do
  @moduledoc """
  Contains the current validation results.

  ## Attributes

  *   `validations` (*type:* `list(GoogleApi.Datastream.V1.Model.Validation.t)`, *default:* `nil`) - A list of validations (includes both executed as well as not executed validations).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :validations => list(GoogleApi.Datastream.V1.Model.Validation.t()) | nil
        }

  field(:validations, as: GoogleApi.Datastream.V1.Model.Validation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.ValidationResult do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.ValidationResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.ValidationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

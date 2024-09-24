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

defmodule GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  @moduledoc """
  Properties of a spreadsheet.

  ## Attributes

  *   `autoRecalc` (*type:* `String.t`, *default:* `nil`) - The amount of time to wait before volatile functions are recalculated.
  *   `defaultFormat` (*type:* `GoogleApi.Sheets.V4.Model.CellFormat.t`, *default:* `nil`) - The default format of all cells in the spreadsheet. CellData.effectiveFormat will not be set if the cell's format is equal to this default format. This field is read-only.
  *   `importFunctionsExternalUrlAccessAllowed` (*type:* `boolean()`, *default:* `nil`) - Whether to allow external URL access for image and import functions. Read only when true. When false, you can set to true. This value will be bypassed and always return true if the admin has enabled the [allowlisting feature](https://support.google.com/a?p=url_allowlist).
  *   `iterativeCalculationSettings` (*type:* `GoogleApi.Sheets.V4.Model.IterativeCalculationSettings.t`, *default:* `nil`) - Determines whether and how circular references are resolved with iterative calculation. Absence of this field means that circular references result in calculation errors.
  *   `locale` (*type:* `String.t`, *default:* `nil`) - The locale of the spreadsheet in one of the following formats: * an ISO 639-1 language code such as `en` * an ISO 639-2 language code such as `fil`, if no 639-1 code exists * a combination of the ISO language code and country code, such as `en_US` Note: when updating this field, not all locales/languages are supported.
  *   `spreadsheetTheme` (*type:* `GoogleApi.Sheets.V4.Model.SpreadsheetTheme.t`, *default:* `nil`) - Theme applied to the spreadsheet.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - The time zone of the spreadsheet, in CLDR format such as `America/New_York`. If the time zone isn't recognized, this may be a custom time zone such as `GMT-07:00`.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the spreadsheet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoRecalc => String.t() | nil,
          :defaultFormat => GoogleApi.Sheets.V4.Model.CellFormat.t() | nil,
          :importFunctionsExternalUrlAccessAllowed => boolean() | nil,
          :iterativeCalculationSettings =>
            GoogleApi.Sheets.V4.Model.IterativeCalculationSettings.t() | nil,
          :locale => String.t() | nil,
          :spreadsheetTheme => GoogleApi.Sheets.V4.Model.SpreadsheetTheme.t() | nil,
          :timeZone => String.t() | nil,
          :title => String.t() | nil
        }

  field(:autoRecalc)
  field(:defaultFormat, as: GoogleApi.Sheets.V4.Model.CellFormat)
  field(:importFunctionsExternalUrlAccessAllowed)
  field(:iterativeCalculationSettings, as: GoogleApi.Sheets.V4.Model.IterativeCalculationSettings)
  field(:locale)
  field(:spreadsheetTheme, as: GoogleApi.Sheets.V4.Model.SpreadsheetTheme)
  field(:timeZone)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.SpreadsheetProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Compute.V1.Model.PathMatcher do
  @moduledoc """
  A matcher for the path portion of the URL. The BackendService from the longest-matched rule will serve the URL. If no rule was matched, the default service is used.

  ## Attributes

  *   `defaultCustomErrorResponsePolicy` (*type:* `GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy.t`, *default:* `nil`) - defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors - A RouteRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client. defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  *   `defaultRouteAction` (*type:* `GoogleApi.Compute.V1.Model.HttpRouteAction.t`, *default:* `nil`) - defaultRouteAction takes effect when none of the pathRules or routeRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. Only one of defaultUrlRedirect, defaultService or defaultRouteAction.weightedBackendService can be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path matcher's defaultRouteAction.
  *   `defaultService` (*type:* `String.t`, *default:* `nil`) - The full or partial URL to the BackendService resource. This URL is used if none of the pathRules or routeRules defined by this PathMatcher are matched. For example, the following are all valid URLs to a BackendService resource: - https://www.googleapis.com/compute/v1/projects/project /global/backendServices/backendService - compute/v1/projects/project/global/backendServices/backendService - global/backendServices/backendService If defaultRouteAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. Only one of defaultUrlRedirect, defaultService or defaultRouteAction.weightedBackendService can be set. Authorization requires one or more of the following Google IAM permissions on the specified resource default_service: - compute.backendBuckets.use - compute.backendServices.use 
  *   `defaultUrlRedirect` (*type:* `GoogleApi.Compute.V1.Model.HttpRedirectAction.t`, *default:* `nil`) - When none of the specified pathRules or routeRules match, the request is redirected to a URL specified by defaultUrlRedirect. Only one of defaultUrlRedirect, defaultService or defaultRouteAction.weightedBackendService can be set. Not supported when the URL map is bound to a target gRPC proxy.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `headerAction` (*type:* `GoogleApi.Compute.V1.Model.HttpHeaderAction.t`, *default:* `nil`) - Specifies changes to request and response headers that need to take effect for the selected backend service. HeaderAction specified here are applied after the matching HttpRouteRule HeaderAction and before the HeaderAction in the UrlMap HeaderAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL. Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name to which this PathMatcher is referred by the HostRule.
  *   `pathRules` (*type:* `list(GoogleApi.Compute.V1.Model.PathRule.t)`, *default:* `nil`) - The list of path rules. Use this list instead of routeRules when routing based on simple path matching is all that's required. The order by which path rules are specified does not matter. Matches are always done on the longest-path-first basis. For example: a pathRule with a path /a/b/c/* will match before /a/b/* irrespective of the order in which those paths appear in this list. Within a given pathMatcher, only one of pathRules or routeRules must be set.
  *   `routeRules` (*type:* `list(GoogleApi.Compute.V1.Model.HttpRouteRule.t)`, *default:* `nil`) - The list of HTTP route rules. Use this list instead of pathRules when advanced route matching and routing actions are desired. routeRules are evaluated in order of priority, from the lowest to highest number. Within a given pathMatcher, you can set only one of pathRules or routeRules.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultCustomErrorResponsePolicy =>
            GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy.t() | nil,
          :defaultRouteAction => GoogleApi.Compute.V1.Model.HttpRouteAction.t() | nil,
          :defaultService => String.t() | nil,
          :defaultUrlRedirect => GoogleApi.Compute.V1.Model.HttpRedirectAction.t() | nil,
          :description => String.t() | nil,
          :headerAction => GoogleApi.Compute.V1.Model.HttpHeaderAction.t() | nil,
          :name => String.t() | nil,
          :pathRules => list(GoogleApi.Compute.V1.Model.PathRule.t()) | nil,
          :routeRules => list(GoogleApi.Compute.V1.Model.HttpRouteRule.t()) | nil
        }

  field(:defaultCustomErrorResponsePolicy,
    as: GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy
  )

  field(:defaultRouteAction, as: GoogleApi.Compute.V1.Model.HttpRouteAction)
  field(:defaultService)
  field(:defaultUrlRedirect, as: GoogleApi.Compute.V1.Model.HttpRedirectAction)
  field(:description)
  field(:headerAction, as: GoogleApi.Compute.V1.Model.HttpHeaderAction)
  field(:name)
  field(:pathRules, as: GoogleApi.Compute.V1.Model.PathRule, type: :list)
  field(:routeRules, as: GoogleApi.Compute.V1.Model.HttpRouteRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PathMatcher do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PathMatcher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PathMatcher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

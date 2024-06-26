=begin
#Coinbase Platform API

#This is the OpenAPI 3.0 specification for the Coinbase Platform APIs, used in conjunction with the Coinbase Platform SDKs.

The version of the OpenAPI document: 0.0.1-alpha
Contact: yuga.cohler@coinbase.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'cgi'

module Coinbase::Client
  class StakeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Build a new staking operation
    # Build a new staking operation
    # @param build_staking_operation_request [BuildStakingOperationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [StakingOperation]
    def build_staking_operation(build_staking_operation_request, opts = {})
      data, _status_code, _headers = build_staking_operation_with_http_info(build_staking_operation_request, opts)
      data
    end

    # Build a new staking operation
    # Build a new staking operation
    # @param build_staking_operation_request [BuildStakingOperationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StakingOperation, Integer, Hash)>] StakingOperation data, response status code and response headers
    def build_staking_operation_with_http_info(build_staking_operation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StakeApi.build_staking_operation ...'
      end
      # verify the required parameter 'build_staking_operation_request' is set
      if @api_client.config.client_side_validation && build_staking_operation_request.nil?
        fail ArgumentError, "Missing the required parameter 'build_staking_operation_request' when calling StakeApi.build_staking_operation"
      end
      # resource path
      local_var_path = '/v1/stake/build'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(build_staking_operation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'StakingOperation'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StakeApi.build_staking_operation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StakeApi#build_staking_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch staking rewards
    # Fetch staking rewards for a list of addresses
    # @param fetch_staking_rewards_request [FetchStakingRewardsRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 50.
    # @option opts [String] :page A cursor for pagination across multiple pages of results. Don&#39;t include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
    # @return [FetchStakingRewards200Response]
    def fetch_staking_rewards(fetch_staking_rewards_request, opts = {})
      data, _status_code, _headers = fetch_staking_rewards_with_http_info(fetch_staking_rewards_request, opts)
      data
    end

    # Fetch staking rewards
    # Fetch staking rewards for a list of addresses
    # @param fetch_staking_rewards_request [FetchStakingRewardsRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 50.
    # @option opts [String] :page A cursor for pagination across multiple pages of results. Don&#39;t include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
    # @return [Array<(FetchStakingRewards200Response, Integer, Hash)>] FetchStakingRewards200Response data, response status code and response headers
    def fetch_staking_rewards_with_http_info(fetch_staking_rewards_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StakeApi.fetch_staking_rewards ...'
      end
      # verify the required parameter 'fetch_staking_rewards_request' is set
      if @api_client.config.client_side_validation && fetch_staking_rewards_request.nil?
        fail ArgumentError, "Missing the required parameter 'fetch_staking_rewards_request' when calling StakeApi.fetch_staking_rewards"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'].to_s.length > 5000
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling StakeApi.fetch_staking_rewards, the character length must be smaller than or equal to 5000.'
      end

      # resource path
      local_var_path = '/v1/stake/rewards/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fetch_staking_rewards_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FetchStakingRewards200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StakeApi.fetch_staking_rewards",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StakeApi#fetch_staking_rewards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get staking context
    # Get staking context for an address
    # @param get_staking_context_request [GetStakingContextRequest] 
    # @param [Hash] opts the optional parameters
    # @return [StakingContext]
    def get_staking_context(get_staking_context_request, opts = {})
      data, _status_code, _headers = get_staking_context_with_http_info(get_staking_context_request, opts)
      data
    end

    # Get staking context
    # Get staking context for an address
    # @param get_staking_context_request [GetStakingContextRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StakingContext, Integer, Hash)>] StakingContext data, response status code and response headers
    def get_staking_context_with_http_info(get_staking_context_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StakeApi.get_staking_context ...'
      end
      # verify the required parameter 'get_staking_context_request' is set
      if @api_client.config.client_side_validation && get_staking_context_request.nil?
        fail ArgumentError, "Missing the required parameter 'get_staking_context_request' when calling StakeApi.get_staking_context"
      end
      # resource path
      local_var_path = '/v1/stake/context'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_staking_context_request)

      # return_type
      return_type = opts[:debug_return_type] || 'StakingContext'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StakeApi.get_staking_context",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StakeApi#get_staking_context\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

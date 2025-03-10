# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-storagegateway/types'
require_relative 'aws-sdk-storagegateway/client_api'
require_relative 'aws-sdk-storagegateway/plugins/endpoints.rb'
require_relative 'aws-sdk-storagegateway/client'
require_relative 'aws-sdk-storagegateway/errors'
require_relative 'aws-sdk-storagegateway/resource'
require_relative 'aws-sdk-storagegateway/endpoint_parameters'
require_relative 'aws-sdk-storagegateway/endpoint_provider'
require_relative 'aws-sdk-storagegateway/endpoints'
require_relative 'aws-sdk-storagegateway/customizations'

# This module provides support for AWS Storage Gateway. This module is available in the
# `aws-sdk-storagegateway` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     storage_gateway = Aws::StorageGateway::Client.new
#     resp = storage_gateway.activate_gateway(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Storage Gateway are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::StorageGateway::Errors::ServiceError
#       # rescues all AWS Storage Gateway API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::StorageGateway

  GEM_VERSION = '1.77.0'

end

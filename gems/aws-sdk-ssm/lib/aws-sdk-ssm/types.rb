# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module SSM
    module Types

      # An activation registers one or more on-premises servers or virtual
      # machines (VMs) with AWS so that you can configure those servers or VMs
      # using Run Command. A server or VM that has been registered with AWS is
      # called a managed instance.
      # @!attribute [rw] activation_id
      #   The ID created by SSM when you submitted the activation.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A user defined description of the activation.
      #   @return [String]
      #
      # @!attribute [rw] default_instance_name
      #   A name for the managed instance when it is created.
      #   @return [String]
      #
      # @!attribute [rw] iam_role
      #   The Amazon Identity and Access Management (IAM) role to assign to
      #   the managed instance.
      #   @return [String]
      #
      # @!attribute [rw] registration_limit
      #   The maximum number of managed instances that can be registered using
      #   this activation.
      #   @return [Integer]
      #
      # @!attribute [rw] registrations_count
      #   The number of managed instances already registered with this
      #   activation.
      #   @return [Integer]
      #
      # @!attribute [rw] expiration_date
      #   The date when this activation can no longer be used to register
      #   managed instances.
      #   @return [Time]
      #
      # @!attribute [rw] expired
      #   Whether or not the activation is expired.
      #   @return [Boolean]
      #
      # @!attribute [rw] created_date
      #   The date the activation was created.
      #   @return [Time]
      class Activation < Struct.new(
        :activation_id,
        :description,
        :default_instance_name,
        :iam_role,
        :registration_limit,
        :registrations_count,
        :expiration_date,
        :expired,
        :created_date)
        include Aws::Structure
      end

      # @note When making an API call, pass AddTagsToResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "ManagedInstance", # required, accepts ManagedInstance
      #         resource_id: "ResourceId", # required
      #         tags: [ # required
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue", # required
      #           },
      #         ],
      #       }
      # @!attribute [rw] resource_type
      #   Specifies the type of resource you are tagging.
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The resource ID you want to tag.
      #   @return [String]
      #
      # @!attribute [rw] tags
      #   One or more tags. The value parameter is required, but if you don't
      #   want the tag to have a value, specify the parameter with no value,
      #   and we set the value to an empty string.
      #   @return [Array<Types::Tag>]
      class AddTagsToResourceRequest < Struct.new(
        :resource_type,
        :resource_id,
        :tags)
        include Aws::Structure
      end

      class AddTagsToResourceResult < Aws::EmptyStructure; end

      # Describes an association of an SSM document and an instance.
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The ID of the instance.
      #   @return [String]
      class Association < Struct.new(
        :name,
        :instance_id)
        include Aws::Structure
      end

      # Describes the parameters for a document.
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The ID of the instance.
      #   @return [String]
      #
      # @!attribute [rw] date
      #   The date when the association was made.
      #   @return [Time]
      #
      # @!attribute [rw] status
      #   The association status.
      #   @return [Types::AssociationStatus]
      #
      # @!attribute [rw] parameters
      #   A description of the parameters for a document.
      #   @return [Hash<String,Array<String>>]
      class AssociationDescription < Struct.new(
        :name,
        :instance_id,
        :date,
        :status,
        :parameters)
        include Aws::Structure
      end

      # Describes a filter.
      # @note When making an API call, pass AssociationFilter
      #   data as a hash:
      #
      #       {
      #         key: "InstanceId", # required, accepts InstanceId, Name
      #         value: "AssociationFilterValue", # required
      #       }
      # @!attribute [rw] key
      #   The name of the filter.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The filter value.
      #   @return [String]
      class AssociationFilter < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # Describes an association status.
      # @note When making an API call, pass AssociationStatus
      #   data as a hash:
      #
      #       {
      #         date: Time.now, # required
      #         name: "Pending", # required, accepts Pending, Success, Failed
      #         message: "StatusMessage", # required
      #         additional_info: "StatusAdditionalInfo",
      #       }
      # @!attribute [rw] date
      #   The date when the status changed.
      #   @return [Time]
      #
      # @!attribute [rw] name
      #   The status.
      #   @return [String]
      #
      # @!attribute [rw] message
      #   The reason for the status.
      #   @return [String]
      #
      # @!attribute [rw] additional_info
      #   A user-defined string.
      #   @return [String]
      class AssociationStatus < Struct.new(
        :date,
        :name,
        :message,
        :additional_info)
        include Aws::Structure
      end

      # @note When making an API call, pass CancelCommandRequest
      #   data as a hash:
      #
      #       {
      #         command_id: "CommandId", # required
      #         instance_ids: ["InstanceId"],
      #       }
      # @!attribute [rw] command_id
      #   The ID of the command you want to cancel.
      #   @return [String]
      #
      # @!attribute [rw] instance_ids
      #   (Optional) A list of instance IDs on which you want to cancel the
      #   command. If not provided, the command is canceled on every instance
      #   on which it was requested.
      #   @return [Array<String>]
      class CancelCommandRequest < Struct.new(
        :command_id,
        :instance_ids)
        include Aws::Structure
      end

      # Whether or not the command was successfully canceled. There is no
      # guarantee that a request can be canceled.
      class CancelCommandResult < Aws::EmptyStructure; end

      # Describes a command request.
      # @!attribute [rw] command_id
      #   A unique identifier for this command.
      #   @return [String]
      #
      # @!attribute [rw] document_name
      #   The name of the SSM document requested for execution.
      #   @return [String]
      #
      # @!attribute [rw] comment
      #   User-specified information about the command, such as a brief
      #   description of what the command should do.
      #   @return [String]
      #
      # @!attribute [rw] expires_after
      #   If this time is reached and the command has not already started
      #   executing, it will not execute. Calculated based on the ExpiresAfter
      #   user input provided as part of the SendCommand API.
      #   @return [Time]
      #
      # @!attribute [rw] parameters
      #   The parameter values to be inserted in the SSM document when
      #   executing the command.
      #   @return [Hash<String,Array<String>>]
      #
      # @!attribute [rw] instance_ids
      #   The instance IDs against which this command was requested.
      #   @return [Array<String>]
      #
      # @!attribute [rw] requested_date_time
      #   The date and time the command was requested.
      #   @return [Time]
      #
      # @!attribute [rw] status
      #   The status of the command.
      #   @return [String]
      #
      # @!attribute [rw] output_s3_bucket_name
      #   The S3 bucket where the responses to the command executions should
      #   be stored. This was requested when issuing the command.
      #   @return [String]
      #
      # @!attribute [rw] output_s3_key_prefix
      #   The S3 directory path inside the bucket where the responses to the
      #   command executions should be stored. This was requested when issuing
      #   the command.
      #   @return [String]
      #
      # @!attribute [rw] service_role
      #   The IAM service role that SSM uses to act on your behalf when
      #   sending notifications about command status changes.
      #   @return [String]
      #
      # @!attribute [rw] notification_config
      #   Configurations for sending notifications about command status
      #   changes.
      #   @return [Types::NotificationConfig]
      class Command < Struct.new(
        :command_id,
        :document_name,
        :comment,
        :expires_after,
        :parameters,
        :instance_ids,
        :requested_date_time,
        :status,
        :output_s3_bucket_name,
        :output_s3_key_prefix,
        :service_role,
        :notification_config)
        include Aws::Structure
      end

      # Describes a command filter.
      # @note When making an API call, pass CommandFilter
      #   data as a hash:
      #
      #       {
      #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
      #         value: "CommandFilterValue", # required
      #       }
      # @!attribute [rw] key
      #   The name of the filter. For example, requested date and time.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The filter value. For example: June 30, 2015.
      #   @return [String]
      class CommandFilter < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # An invocation is copy of a command sent to a specific instance. A
      # command can apply to one or more instances. A command invocation
      # applies to one instance. For example, if a user executes SendCommand
      # against three instances, then a command invocation is created for each
      # requested instance ID. A command invocation returns status and detail
      # information about a command you executed.
      # @!attribute [rw] command_id
      #   The command against which this invocation was requested.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The instance ID in which this invocation was requested.
      #   @return [String]
      #
      # @!attribute [rw] comment
      #   User-specified information about the command, such as a brief
      #   description of what the command should do.
      #   @return [String]
      #
      # @!attribute [rw] document_name
      #   The document name that was requested for execution.
      #   @return [String]
      #
      # @!attribute [rw] requested_date_time
      #   The time and date the request was sent to this instance.
      #   @return [Time]
      #
      # @!attribute [rw] status
      #   Whether or not the invocation succeeded, failed, or is pending.
      #   @return [String]
      #
      # @!attribute [rw] trace_output
      #   Gets the trace output sent by the agent.
      #   @return [String]
      #
      # @!attribute [rw] command_plugins
      #   @return [Array<Types::CommandPlugin>]
      #
      # @!attribute [rw] service_role
      #   The IAM service role that SSM uses to act on your behalf when
      #   sending notifications about command status changes on a per instance
      #   basis.
      #   @return [String]
      #
      # @!attribute [rw] notification_config
      #   Configurations for sending notifications about command status
      #   changes on a per instance basis.
      #   @return [Types::NotificationConfig]
      class CommandInvocation < Struct.new(
        :command_id,
        :instance_id,
        :comment,
        :document_name,
        :requested_date_time,
        :status,
        :trace_output,
        :command_plugins,
        :service_role,
        :notification_config)
        include Aws::Structure
      end

      # Describes plugin details.
      # @!attribute [rw] name
      #   The name of the plugin. Must be one of the following:
      #   aws:updateAgent, aws:domainjoin, aws:applications,
      #   aws:runPowerShellScript, aws:psmodule, aws:cloudWatch,
      #   aws:runShellScript, or aws:updateSSMAgent.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The status of this plugin. You can execute a document with multiple
      #   plugins.
      #   @return [String]
      #
      # @!attribute [rw] response_code
      #   A numeric response code generated after executing the plugin.
      #   @return [Integer]
      #
      # @!attribute [rw] response_start_date_time
      #   The time the plugin started executing.
      #   @return [Time]
      #
      # @!attribute [rw] response_finish_date_time
      #   The time the plugin stopped executing. Could stop prematurely if,
      #   for example, a cancel command was sent.
      #   @return [Time]
      #
      # @!attribute [rw] output
      #   Output of the plugin execution.
      #   @return [String]
      #
      # @!attribute [rw] output_s3_bucket_name
      #   The S3 bucket where the responses to the command executions should
      #   be stored. This was requested when issuing the command.
      #   @return [String]
      #
      # @!attribute [rw] output_s3_key_prefix
      #   The S3 directory path inside the bucket where the responses to the
      #   command executions should be stored. This was requested when issuing
      #   the command.
      #   @return [String]
      class CommandPlugin < Struct.new(
        :name,
        :status,
        :response_code,
        :response_start_date_time,
        :response_finish_date_time,
        :output,
        :output_s3_bucket_name,
        :output_s3_key_prefix)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateActivationRequest
      #   data as a hash:
      #
      #       {
      #         description: "ActivationDescription",
      #         default_instance_name: "DefaultInstanceName",
      #         iam_role: "IamRole", # required
      #         registration_limit: 1,
      #         expiration_date: Time.now,
      #       }
      # @!attribute [rw] description
      #   A user-defined description of the resource that you want to register
      #   with Amazon EC2.
      #   @return [String]
      #
      # @!attribute [rw] default_instance_name
      #   The name of the registered, managed instance as it will appear in
      #   the Amazon EC2 console or when you use the AWS command line tools to
      #   list EC2 resources.
      #   @return [String]
      #
      # @!attribute [rw] iam_role
      #   The Amazon Identity and Access Management (IAM) role that you want
      #   to assign to the managed instance.
      #   @return [String]
      #
      # @!attribute [rw] registration_limit
      #   Specify the maximum number of managed instances you want to
      #   register. The default value is 1 instance.
      #   @return [Integer]
      #
      # @!attribute [rw] expiration_date
      #   The date by which this activation request should expire. The default
      #   value is 24 hours.
      #   @return [Time]
      class CreateActivationRequest < Struct.new(
        :description,
        :default_instance_name,
        :iam_role,
        :registration_limit,
        :expiration_date)
        include Aws::Structure
      end

      # @!attribute [rw] activation_id
      #   The ID number generated by the system when it processed the
      #   activation. The activation ID functions like a user name.
      #   @return [String]
      #
      # @!attribute [rw] activation_code
      #   The code the system generates when it processes the activation. The
      #   activation code functions like a password to validate the activation
      #   ID.
      #   @return [String]
      class CreateActivationResult < Struct.new(
        :activation_id,
        :activation_code)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateAssociationBatchRequest
      #   data as a hash:
      #
      #       {
      #         entries: [ # required
      #           {
      #             name: "DocumentName",
      #             instance_id: "InstanceId",
      #             parameters: {
      #               "ParameterName" => ["ParameterValue"],
      #             },
      #           },
      #         ],
      #       }
      # @!attribute [rw] entries
      #   One or more associations.
      #   @return [Array<Types::CreateAssociationBatchRequestEntry>]
      class CreateAssociationBatchRequest < Struct.new(
        :entries)
        include Aws::Structure
      end

      # Describes the association of an SSM document and an instance.
      # @note When making an API call, pass CreateAssociationBatchRequestEntry
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName",
      #         instance_id: "InstanceId",
      #         parameters: {
      #           "ParameterName" => ["ParameterValue"],
      #         },
      #       }
      # @!attribute [rw] name
      #   The name of the configuration document.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The ID of the instance.
      #   @return [String]
      #
      # @!attribute [rw] parameters
      #   A description of the parameters for a document.
      #   @return [Hash<String,Array<String>>]
      class CreateAssociationBatchRequestEntry < Struct.new(
        :name,
        :instance_id,
        :parameters)
        include Aws::Structure
      end

      # @!attribute [rw] successful
      #   Information about the associations that succeeded.
      #   @return [Array<Types::AssociationDescription>]
      #
      # @!attribute [rw] failed
      #   Information about the associations that failed.
      #   @return [Array<Types::FailedCreateAssociation>]
      class CreateAssociationBatchResult < Struct.new(
        :successful,
        :failed)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateAssociationRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName", # required
      #         instance_id: "InstanceId", # required
      #         parameters: {
      #           "ParameterName" => ["ParameterValue"],
      #         },
      #       }
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The instance ID.
      #   @return [String]
      #
      # @!attribute [rw] parameters
      #   The parameters for the documents runtime configuration.
      #   @return [Hash<String,Array<String>>]
      class CreateAssociationRequest < Struct.new(
        :name,
        :instance_id,
        :parameters)
        include Aws::Structure
      end

      # @!attribute [rw] association_description
      #   Information about the association.
      #   @return [Types::AssociationDescription]
      class CreateAssociationResult < Struct.new(
        :association_description)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateDocumentRequest
      #   data as a hash:
      #
      #       {
      #         content: "DocumentContent", # required
      #         name: "DocumentName", # required
      #       }
      # @!attribute [rw] content
      #   A valid JSON string.
      #   @return [String]
      #
      # @!attribute [rw] name
      #   A name for the SSM document.
      #   @return [String]
      class CreateDocumentRequest < Struct.new(
        :content,
        :name)
        include Aws::Structure
      end

      # @!attribute [rw] document_description
      #   Information about the SSM document.
      #   @return [Types::DocumentDescription]
      class CreateDocumentResult < Struct.new(
        :document_description)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteActivationRequest
      #   data as a hash:
      #
      #       {
      #         activation_id: "ActivationId", # required
      #       }
      # @!attribute [rw] activation_id
      #   The ID of the activation that you want to delete.
      #   @return [String]
      class DeleteActivationRequest < Struct.new(
        :activation_id)
        include Aws::Structure
      end

      class DeleteActivationResult < Aws::EmptyStructure; end

      # @note When making an API call, pass DeleteAssociationRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName", # required
      #         instance_id: "InstanceId", # required
      #       }
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The ID of the instance.
      #   @return [String]
      class DeleteAssociationRequest < Struct.new(
        :name,
        :instance_id)
        include Aws::Structure
      end

      class DeleteAssociationResult < Aws::EmptyStructure; end

      # @note When making an API call, pass DeleteDocumentRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName", # required
      #       }
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      class DeleteDocumentRequest < Struct.new(
        :name)
        include Aws::Structure
      end

      class DeleteDocumentResult < Aws::EmptyStructure; end

      # @note When making an API call, pass DeregisterManagedInstanceRequest
      #   data as a hash:
      #
      #       {
      #         instance_id: "ManagedInstanceId", # required
      #       }
      # @!attribute [rw] instance_id
      #   The ID assigned to the managed instance when you registered it using
      #   the activation process.
      #   @return [String]
      class DeregisterManagedInstanceRequest < Struct.new(
        :instance_id)
        include Aws::Structure
      end

      class DeregisterManagedInstanceResult < Aws::EmptyStructure; end

      # Filter for the DescribeActivation API.
      # @note When making an API call, pass DescribeActivationsFilter
      #   data as a hash:
      #
      #       {
      #         filter_key: "ActivationIds", # accepts ActivationIds, DefaultInstanceName, IamRole
      #         filter_values: ["String"],
      #       }
      # @!attribute [rw] filter_key
      #   The name of the filter.
      #   @return [String]
      #
      # @!attribute [rw] filter_values
      #   The filter values.
      #   @return [Array<String>]
      class DescribeActivationsFilter < Struct.new(
        :filter_key,
        :filter_values)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeActivationsRequest
      #   data as a hash:
      #
      #       {
      #         filters: [
      #           {
      #             filter_key: "ActivationIds", # accepts ActivationIds, DefaultInstanceName, IamRole
      #             filter_values: ["String"],
      #           },
      #         ],
      #         max_results: 1,
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] filters
      #   A filter to view information about your activations.
      #   @return [Array<Types::DescribeActivationsFilter>]
      #
      # @!attribute [rw] max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   A token to start the list. Use this token to get the next set of
      #   results.
      #   @return [String]
      class DescribeActivationsRequest < Struct.new(
        :filters,
        :max_results,
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] activation_list
      #   A list of activations for your AWS account.
      #   @return [Array<Types::Activation>]
      #
      # @!attribute [rw] next_token
      #   The token for the next set of items to return. Use this token to get
      #   the next set of results.
      #   @return [String]
      class DescribeActivationsResult < Struct.new(
        :activation_list,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeAssociationRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName", # required
      #         instance_id: "InstanceId", # required
      #       }
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The instance ID.
      #   @return [String]
      class DescribeAssociationRequest < Struct.new(
        :name,
        :instance_id)
        include Aws::Structure
      end

      # @!attribute [rw] association_description
      #   Information about the association.
      #   @return [Types::AssociationDescription]
      class DescribeAssociationResult < Struct.new(
        :association_description)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeDocumentPermissionRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName", # required
      #         permission_type: "Share", # required, accepts Share
      #       }
      # @!attribute [rw] name
      #   The name of the document for which you are the owner.
      #   @return [String]
      #
      # @!attribute [rw] permission_type
      #   The permission type for the document. The permission type can be
      #   *Share*.
      #   @return [String]
      class DescribeDocumentPermissionRequest < Struct.new(
        :name,
        :permission_type)
        include Aws::Structure
      end

      # @!attribute [rw] account_ids
      #   The account IDs that have permission to use this document. The ID
      #   can be either an AWS account or *All*.
      #   @return [Array<String>]
      class DescribeDocumentPermissionResponse < Struct.new(
        :account_ids)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeDocumentRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentARN", # required
      #       }
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      class DescribeDocumentRequest < Struct.new(
        :name)
        include Aws::Structure
      end

      # @!attribute [rw] document
      #   Information about the SSM document.
      #   @return [Types::DocumentDescription]
      class DescribeDocumentResult < Struct.new(
        :document)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeInstanceInformationRequest
      #   data as a hash:
      #
      #       {
      #         instance_information_filter_list: [
      #           {
      #             key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType
      #             value_set: ["InstanceInformationFilterValue"], # required
      #           },
      #         ],
      #         max_results: 1,
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] instance_information_filter_list
      #   One or more filters. Use a filter to return a more specific list of
      #   instances.
      #   @return [Array<Types::InstanceInformationFilter>]
      #
      # @!attribute [rw] max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   The token for the next set of items to return. (You received this
      #   token from a previous call.)
      #   @return [String]
      class DescribeInstanceInformationRequest < Struct.new(
        :instance_information_filter_list,
        :max_results,
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] instance_information_list
      #   The instance information list.
      #   @return [Array<Types::InstanceInformation>]
      #
      # @!attribute [rw] next_token
      #   The token to use when requesting the next set of items. If there are
      #   no additional items to return, the string is empty.
      #   @return [String]
      class DescribeInstanceInformationResult < Struct.new(
        :instance_information_list,
        :next_token)
        include Aws::Structure
      end

      # Describes an SSM document.
      # @!attribute [rw] sha_1
      #   The SHA1 hash of the document, which you can use for verification
      #   purposes.
      #   @return [String]
      #
      # @!attribute [rw] hash
      #   The Sha256 or Sha1 hash created by the system when the document was
      #   created.
      #
      #   <note markdown="1"> Sha1 hashes have been deprecated.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] hash_type
      #   Sha256 or Sha1.
      #
      #   <note markdown="1"> Sha1 hashes have been deprecated.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] owner
      #   The AWS user account of the person who created the document.
      #   @return [String]
      #
      # @!attribute [rw] created_date
      #   The date when the SSM document was created.
      #   @return [Time]
      #
      # @!attribute [rw] status
      #   The status of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A description of the document.
      #   @return [String]
      #
      # @!attribute [rw] parameters
      #   A description of the parameters for a document.
      #   @return [Array<Types::DocumentParameter>]
      #
      # @!attribute [rw] platform_types
      #   The list of OS platforms compatible with this SSM document.
      #   @return [Array<String>]
      class DocumentDescription < Struct.new(
        :sha_1,
        :hash,
        :hash_type,
        :name,
        :owner,
        :created_date,
        :status,
        :description,
        :parameters,
        :platform_types)
        include Aws::Structure
      end

      # Describes a filter.
      # @note When making an API call, pass DocumentFilter
      #   data as a hash:
      #
      #       {
      #         key: "Name", # required, accepts Name, Owner, PlatformTypes
      #         value: "DocumentFilterValue", # required
      #       }
      # @!attribute [rw] key
      #   The name of the filter.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The value of the filter.
      #   @return [String]
      class DocumentFilter < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # Describes the name of an SSM document.
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] owner
      #   The AWS user account of the person who created the document.
      #   @return [String]
      #
      # @!attribute [rw] platform_types
      #   The operating system platform.
      #   @return [Array<String>]
      class DocumentIdentifier < Struct.new(
        :name,
        :owner,
        :platform_types)
        include Aws::Structure
      end

      # Parameters specified in the SSM document that execute on the server
      # when the command is run.
      # @!attribute [rw] name
      #   The name of the parameter.
      #   @return [String]
      #
      # @!attribute [rw] type
      #   The type of parameter. The type can be either “String” or
      #   “StringList”.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A description of what the parameter does, how to use it, the default
      #   value, and whether or not the parameter is optional.
      #   @return [String]
      #
      # @!attribute [rw] default_value
      #   If specified, the default values for the parameters. Parameters
      #   without a default value are required. Parameters with a default
      #   value are optional.
      #   @return [String]
      class DocumentParameter < Struct.new(
        :name,
        :type,
        :description,
        :default_value)
        include Aws::Structure
      end

      # Describes a failed association.
      # @!attribute [rw] entry
      #   The association.
      #   @return [Types::CreateAssociationBatchRequestEntry]
      #
      # @!attribute [rw] message
      #   A description of the failure.
      #   @return [String]
      #
      # @!attribute [rw] fault
      #   The source of the failure.
      #   @return [String]
      class FailedCreateAssociation < Struct.new(
        :entry,
        :message,
        :fault)
        include Aws::Structure
      end

      # @note When making an API call, pass GetDocumentRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentARN", # required
      #       }
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      class GetDocumentRequest < Struct.new(
        :name)
        include Aws::Structure
      end

      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] content
      #   The contents of the SSM document.
      #   @return [String]
      class GetDocumentResult < Struct.new(
        :name,
        :content)
        include Aws::Structure
      end

      # Describes a filter for a specific list of instances.
      # @!attribute [rw] instance_id
      #   The instance ID.
      #   @return [String]
      #
      # @!attribute [rw] ping_status
      #   Connection status of the SSM agent.
      #   @return [String]
      #
      # @!attribute [rw] last_ping_date_time
      #   The date and time when agent last pinged SSM service.
      #   @return [Time]
      #
      # @!attribute [rw] agent_version
      #   The version of the SSM agent running on your Linux instance.
      #   @return [String]
      #
      # @!attribute [rw] is_latest_version
      #   Indicates whether latest version of the SSM agent is running on your
      #   instance.
      #   @return [Boolean]
      #
      # @!attribute [rw] platform_type
      #   The operating system platform type.
      #   @return [String]
      #
      # @!attribute [rw] platform_name
      #   The name of the operating system platform running on your instance.
      #   @return [String]
      #
      # @!attribute [rw] platform_version
      #   The version of the OS platform running on your instance.
      #   @return [String]
      #
      # @!attribute [rw] activation_id
      #   The activation ID created by SSM when the server or VM was
      #   registered.
      #   @return [String]
      #
      # @!attribute [rw] iam_role
      #   The Amazon Identity and Access Management (IAM) role assigned to EC2
      #   instances or managed instances.
      #   @return [String]
      #
      # @!attribute [rw] registration_date
      #   The date the server or VM was registered with AWS as a managed
      #   instance.
      #   @return [Time]
      #
      # @!attribute [rw] resource_type
      #   The type of instance. Instances are either EC2 instances or managed
      #   instances.
      #   @return [String]
      #
      # @!attribute [rw] name
      #   The name of the managed instance.
      #   @return [String]
      #
      # @!attribute [rw] ip_address
      #   The IP address of the managed instance.
      #   @return [String]
      #
      # @!attribute [rw] computer_name
      #   The fully qualified host name of the managed instance.
      #   @return [String]
      class InstanceInformation < Struct.new(
        :instance_id,
        :ping_status,
        :last_ping_date_time,
        :agent_version,
        :is_latest_version,
        :platform_type,
        :platform_name,
        :platform_version,
        :activation_id,
        :iam_role,
        :registration_date,
        :resource_type,
        :name,
        :ip_address,
        :computer_name)
        include Aws::Structure
      end

      # Describes a filter for a specific list of instances.
      # @note When making an API call, pass InstanceInformationFilter
      #   data as a hash:
      #
      #       {
      #         key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType
      #         value_set: ["InstanceInformationFilterValue"], # required
      #       }
      # @!attribute [rw] key
      #   The name of the filter.
      #   @return [String]
      #
      # @!attribute [rw] value_set
      #   The filter values.
      #   @return [Array<String>]
      class InstanceInformationFilter < Struct.new(
        :key,
        :value_set)
        include Aws::Structure
      end

      # @note When making an API call, pass ListAssociationsRequest
      #   data as a hash:
      #
      #       {
      #         association_filter_list: [ # required
      #           {
      #             key: "InstanceId", # required, accepts InstanceId, Name
      #             value: "AssociationFilterValue", # required
      #           },
      #         ],
      #         max_results: 1,
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] association_filter_list
      #   One or more filters. Use a filter to return a more specific list of
      #   results.
      #   @return [Array<Types::AssociationFilter>]
      #
      # @!attribute [rw] max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   The token for the next set of items to return. (You received this
      #   token from a previous call.)
      #   @return [String]
      class ListAssociationsRequest < Struct.new(
        :association_filter_list,
        :max_results,
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] associations
      #   The associations.
      #   @return [Array<Types::Association>]
      #
      # @!attribute [rw] next_token
      #   The token to use when requesting the next set of items. If there are
      #   no additional items to return, the string is empty.
      #   @return [String]
      class ListAssociationsResult < Struct.new(
        :associations,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListCommandInvocationsRequest
      #   data as a hash:
      #
      #       {
      #         command_id: "CommandId",
      #         instance_id: "InstanceId",
      #         max_results: 1,
      #         next_token: "NextToken",
      #         filters: [
      #           {
      #             key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
      #             value: "CommandFilterValue", # required
      #           },
      #         ],
      #         details: false,
      #       }
      # @!attribute [rw] command_id
      #   (Optional) The invocations for a specific command ID.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   (Optional) The command execution details for a specific instance ID.
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   (Optional) The maximum number of items to return for this call. The
      #   call also returns a token that you can specify in a subsequent call
      #   to get the next set of results.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   (Optional) The token for the next set of items to return. (You
      #   received this token from a previous call.)
      #   @return [String]
      #
      # @!attribute [rw] filters
      #   (Optional) One or more filters. Use a filter to return a more
      #   specific list of results.
      #   @return [Array<Types::CommandFilter>]
      #
      # @!attribute [rw] details
      #   (Optional) If set this returns the response of the command
      #   executions and any command output. By default this is set to False.
      #   @return [Boolean]
      class ListCommandInvocationsRequest < Struct.new(
        :command_id,
        :instance_id,
        :max_results,
        :next_token,
        :filters,
        :details)
        include Aws::Structure
      end

      # @!attribute [rw] command_invocations
      #   (Optional) A list of all invocations.
      #   @return [Array<Types::CommandInvocation>]
      #
      # @!attribute [rw] next_token
      #   (Optional) The token for the next set of items to return. (You
      #   received this token from a previous call.)
      #   @return [String]
      class ListCommandInvocationsResult < Struct.new(
        :command_invocations,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListCommandsRequest
      #   data as a hash:
      #
      #       {
      #         command_id: "CommandId",
      #         instance_id: "InstanceId",
      #         max_results: 1,
      #         next_token: "NextToken",
      #         filters: [
      #           {
      #             key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
      #             value: "CommandFilterValue", # required
      #           },
      #         ],
      #       }
      # @!attribute [rw] command_id
      #   (Optional) If provided, lists only the specified command.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   (Optional) Lists commands issued against this instance ID.
      #   @return [String]
      #
      # @!attribute [rw] max_results
      #   (Optional) The maximum number of items to return for this call. The
      #   call also returns a token that you can specify in a subsequent call
      #   to get the next set of results.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   (Optional) The token for the next set of items to return. (You
      #   received this token from a previous call.)
      #   @return [String]
      #
      # @!attribute [rw] filters
      #   (Optional) One or more filters. Use a filter to return a more
      #   specific list of results.
      #   @return [Array<Types::CommandFilter>]
      class ListCommandsRequest < Struct.new(
        :command_id,
        :instance_id,
        :max_results,
        :next_token,
        :filters)
        include Aws::Structure
      end

      # @!attribute [rw] commands
      #   (Optional) The list of commands requested by the user.
      #   @return [Array<Types::Command>]
      #
      # @!attribute [rw] next_token
      #   (Optional) The token for the next set of items to return. (You
      #   received this token from a previous call.)
      #   @return [String]
      class ListCommandsResult < Struct.new(
        :commands,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListDocumentsRequest
      #   data as a hash:
      #
      #       {
      #         document_filter_list: [
      #           {
      #             key: "Name", # required, accepts Name, Owner, PlatformTypes
      #             value: "DocumentFilterValue", # required
      #           },
      #         ],
      #         max_results: 1,
      #         next_token: "NextToken",
      #       }
      # @!attribute [rw] document_filter_list
      #   One or more filters. Use a filter to return a more specific list of
      #   results.
      #   @return [Array<Types::DocumentFilter>]
      #
      # @!attribute [rw] max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      #   @return [Integer]
      #
      # @!attribute [rw] next_token
      #   The token for the next set of items to return. (You received this
      #   token from a previous call.)
      #   @return [String]
      class ListDocumentsRequest < Struct.new(
        :document_filter_list,
        :max_results,
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] document_identifiers
      #   The names of the SSM documents.
      #   @return [Array<Types::DocumentIdentifier>]
      #
      # @!attribute [rw] next_token
      #   The token to use when requesting the next set of items. If there are
      #   no additional items to return, the string is empty.
      #   @return [String]
      class ListDocumentsResult < Struct.new(
        :document_identifiers,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "ManagedInstance", # required, accepts ManagedInstance
      #         resource_id: "ResourceId", # required
      #       }
      # @!attribute [rw] resource_type
      #   Returns a list of tags for a specific resource type.
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The resource ID for which you want to see a list of tags.
      #   @return [String]
      class ListTagsForResourceRequest < Struct.new(
        :resource_type,
        :resource_id)
        include Aws::Structure
      end

      # @!attribute [rw] tag_list
      #   A list of tags.
      #   @return [Array<Types::Tag>]
      class ListTagsForResourceResult < Struct.new(
        :tag_list)
        include Aws::Structure
      end

      # @note When making an API call, pass ModifyDocumentPermissionRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName", # required
      #         permission_type: "Share", # required, accepts Share
      #         account_ids_to_add: ["AccountId"],
      #         account_ids_to_remove: ["AccountId"],
      #       }
      # @!attribute [rw] name
      #   The name of the document that you want to share.
      #   @return [String]
      #
      # @!attribute [rw] permission_type
      #   The permission type for the document. The permission type can be
      #   *Share*.
      #   @return [String]
      #
      # @!attribute [rw] account_ids_to_add
      #   The AWS user accounts that should have access to the document. The
      #   account IDs can either be a group of account IDs or *All*.
      #   @return [Array<String>]
      #
      # @!attribute [rw] account_ids_to_remove
      #   The AWS user accounts that should no longer have access to the
      #   document. The AWS user account can either be a group of account IDs
      #   or *All*. This action has a higher priority than *AccountIdsToAdd*.
      #   If you specify an account ID to add and the same ID to remove, the
      #   system removes access to the document.
      #   @return [Array<String>]
      class ModifyDocumentPermissionRequest < Struct.new(
        :name,
        :permission_type,
        :account_ids_to_add,
        :account_ids_to_remove)
        include Aws::Structure
      end

      class ModifyDocumentPermissionResponse < Aws::EmptyStructure; end

      # Configurations for sending notifications.
      # @note When making an API call, pass NotificationConfig
      #   data as a hash:
      #
      #       {
      #         notification_arn: "NotificationArn",
      #         notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
      #         notification_type: "Command", # accepts Command, Invocation
      #       }
      # @!attribute [rw] notification_arn
      #   An Amazon Resource Name (ARN) for a Simple Notification Service
      #   (SNS) topic. SSM pushes notifications about command status changes
      #   to this topic.
      #   @return [String]
      #
      # @!attribute [rw] notification_events
      #   The different events for which you can receive notifications. These
      #   events include the following: All (events), InProgress, Success,
      #   TimedOut, Cancelled, Failed. To learn more about these events, see
      #   [Monitoring Commands][1] in the <i>Amazon Elastic Compute Cloud User
      #   Guide </i>.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitor-commands.html
      #   @return [Array<String>]
      #
      # @!attribute [rw] notification_type
      #   Command: Receive notification when the status of a command changes.
      #   Invocation: For commands sent to multiple instances, receive
      #   notification on a per-instance basis when the status of a command
      #   changes.
      #   @return [String]
      class NotificationConfig < Struct.new(
        :notification_arn,
        :notification_events,
        :notification_type)
        include Aws::Structure
      end

      # @note When making an API call, pass RemoveTagsFromResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_type: "ManagedInstance", # required, accepts ManagedInstance
      #         resource_id: "ResourceId", # required
      #         tag_keys: ["TagKey"], # required
      #       }
      # @!attribute [rw] resource_type
      #   The type of resource of which you want to remove a tag.
      #   @return [String]
      #
      # @!attribute [rw] resource_id
      #   The resource ID for which you want to remove tags.
      #   @return [String]
      #
      # @!attribute [rw] tag_keys
      #   Tag keys that you want to remove from the specified resource.
      #   @return [Array<String>]
      class RemoveTagsFromResourceRequest < Struct.new(
        :resource_type,
        :resource_id,
        :tag_keys)
        include Aws::Structure
      end

      class RemoveTagsFromResourceResult < Aws::EmptyStructure; end

      # @note When making an API call, pass SendCommandRequest
      #   data as a hash:
      #
      #       {
      #         instance_ids: ["InstanceId"], # required
      #         document_name: "DocumentARN", # required
      #         document_hash: "DocumentHash",
      #         document_hash_type: "Sha256", # accepts Sha256, Sha1
      #         timeout_seconds: 1,
      #         comment: "Comment",
      #         parameters: {
      #           "ParameterName" => ["ParameterValue"],
      #         },
      #         output_s3_bucket_name: "S3BucketName",
      #         output_s3_key_prefix: "S3KeyPrefix",
      #         service_role_arn: "ServiceRole",
      #         notification_config: {
      #           notification_arn: "NotificationArn",
      #           notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
      #           notification_type: "Command", # accepts Command, Invocation
      #         },
      #       }
      # @!attribute [rw] instance_ids
      #   Required. The instance IDs where the command should execute. You can
      #   specify a maximum of 50 IDs.
      #   @return [Array<String>]
      #
      # @!attribute [rw] document_name
      #   Required. The name of the SSM document to execute. This can be an
      #   SSM public document or a custom document.
      #   @return [String]
      #
      # @!attribute [rw] document_hash
      #   The Sha256 or Sha1 hash created by the system when the document was
      #   created.
      #
      #   <note markdown="1"> Sha1 hashes have been deprecated.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] document_hash_type
      #   Sha256 or Sha1.
      #
      #   <note markdown="1"> Sha1 hashes have been deprecated.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] timeout_seconds
      #   If this time is reached and the command has not already started
      #   executing, it will not execute.
      #   @return [Integer]
      #
      # @!attribute [rw] comment
      #   User-specified information about the command, such as a brief
      #   description of what the command should do.
      #   @return [String]
      #
      # @!attribute [rw] parameters
      #   The required and optional parameters specified in the SSM document
      #   being executed.
      #   @return [Hash<String,Array<String>>]
      #
      # @!attribute [rw] output_s3_bucket_name
      #   The name of the S3 bucket where command execution responses should
      #   be stored.
      #   @return [String]
      #
      # @!attribute [rw] output_s3_key_prefix
      #   The directory structure within the S3 bucket where the responses
      #   should be stored.
      #   @return [String]
      #
      # @!attribute [rw] service_role_arn
      #   The IAM role that SSM uses to send notifications.
      #   @return [String]
      #
      # @!attribute [rw] notification_config
      #   Configurations for sending notifications.
      #   @return [Types::NotificationConfig]
      class SendCommandRequest < Struct.new(
        :instance_ids,
        :document_name,
        :document_hash,
        :document_hash_type,
        :timeout_seconds,
        :comment,
        :parameters,
        :output_s3_bucket_name,
        :output_s3_key_prefix,
        :service_role_arn,
        :notification_config)
        include Aws::Structure
      end

      # @!attribute [rw] command
      #   The request as it was received by SSM. Also provides the command ID
      #   which can be used future references to this request.
      #   @return [Types::Command]
      class SendCommandResult < Struct.new(
        :command)
        include Aws::Structure
      end

      # Metadata that you assign to your managed instances. Tags enable you to
      # categorize your managed instances in different ways, for example, by
      # purpose, owner, or environment.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       }
      # @!attribute [rw] key
      #   The name of the tag.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The value of the tag.
      #   @return [String]
      class Tag < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # @note When making an API call, pass UpdateAssociationStatusRequest
      #   data as a hash:
      #
      #       {
      #         name: "DocumentName", # required
      #         instance_id: "InstanceId", # required
      #         association_status: { # required
      #           date: Time.now, # required
      #           name: "Pending", # required, accepts Pending, Success, Failed
      #           message: "StatusMessage", # required
      #           additional_info: "StatusAdditionalInfo",
      #         },
      #       }
      # @!attribute [rw] name
      #   The name of the SSM document.
      #   @return [String]
      #
      # @!attribute [rw] instance_id
      #   The ID of the instance.
      #   @return [String]
      #
      # @!attribute [rw] association_status
      #   The association status.
      #   @return [Types::AssociationStatus]
      class UpdateAssociationStatusRequest < Struct.new(
        :name,
        :instance_id,
        :association_status)
        include Aws::Structure
      end

      # @!attribute [rw] association_description
      #   Information about the association.
      #   @return [Types::AssociationDescription]
      class UpdateAssociationStatusResult < Struct.new(
        :association_description)
        include Aws::Structure
      end

      # @note When making an API call, pass UpdateManagedInstanceRoleRequest
      #   data as a hash:
      #
      #       {
      #         instance_id: "ManagedInstanceId", # required
      #         iam_role: "IamRole", # required
      #       }
      # @!attribute [rw] instance_id
      #   The ID of the managed instance where you want to update the role.
      #   @return [String]
      #
      # @!attribute [rw] iam_role
      #   The IAM role you want to assign or change.
      #   @return [String]
      class UpdateManagedInstanceRoleRequest < Struct.new(
        :instance_id,
        :iam_role)
        include Aws::Structure
      end

      class UpdateManagedInstanceRoleResult < Aws::EmptyStructure; end

    end
  end
end

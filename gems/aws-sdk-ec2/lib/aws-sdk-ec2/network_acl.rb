# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module EC2
    class NetworkAcl

      extend Aws::Deprecations

      # @overload def initialize(id, options = {})
      #   @param [String] id
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :id
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @id = extract_id(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def id
        @id
      end
      alias :network_acl_id :id

      # The ID of the VPC for the network ACL.
      # @return [String]
      def vpc_id
        data.vpc_id
      end

      # Indicates whether this is the default network ACL for the VPC.
      # @return [Boolean]
      def is_default
        data.is_default
      end

      # One or more entries (rules) in the network ACL.
      # @return [Array<Types::NetworkAclEntry>]
      def entries
        data.entries
      end

      # Any associations between the network ACL and one or more subnets
      # @return [Array<Types::NetworkAclAssociation>]
      def associations
        data.associations
      end

      # Any tags assigned to the network ACL.
      # @return [Array<Types::Tag>]
      def tags
        data.tags
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {NetworkAcl}.
      # Returns `self` making it possible to chain methods.
      #
      #     network_acl.reload.data
      #
      # @return [self]
      def load
        resp = @client.describe_network_acls(network_acl_ids: [@id])
        @data = resp.networkacls[0]
        self
      end
      alias :reload :load

      # @return [Types::NetworkAcl]
      #   Returns the data for this {NetworkAcl}. Calls
      #   {Client#describe_network_acls} if {#data_loaded?} is `false`.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Integer] :rule_number
      #   The rule number for the entry (for example, 100). ACL entries are
      #   processed in ascending order by rule number.
      #
      #   Constraints: Positive integer from 1 to 32766. The range 32767 to
      #   65535 is reserved for internal use.
      # @option options [required, String] :protocol
      #   The protocol. A value of -1 means all protocols.
      # @option options [required, String] :rule_action
      #   Indicates whether to allow or deny the traffic that matches the rule.
      # @option options [required, Boolean] :egress
      #   Indicates whether this is an egress rule (rule is applied to traffic
      #   leaving the subnet).
      # @option options [required, String] :cidr_block
      #   The network range to allow or deny, in CIDR notation (for example
      #   `172.16.0.0/24`).
      # @option options [Types::IcmpTypeCode] :icmp_type_code
      #   ICMP protocol: The ICMP type and code. Required if specifying ICMP for
      #   the protocol.
      # @option options [Types::PortRange] :port_range
      #   TCP or UDP protocols: The range of ports the rule applies to.
      # @return [EmptyStructure]
      def create_entry(options = {})
        options = options.merge(network_acl_id: @id)
        resp = @client.create_network_acl_entry(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Array<Types::Tag>] :tags
      #   One or more tags. The `value` parameter is required, but if you don't
      #   want the tag to have a value, specify the parameter with no value, and
      #   we set the value to an empty string.
      # @return [Tag::Collection]
      def create_tags(options = {})
        batch = []
        options = Aws::Util.deep_merge(options, resources: [@id])
        resp = @client.create_tags(options)
        options[:tags].each do |t|
          batch << Tag.new(
            resource_id: @id,
            key: t[:key],
            value: t[:value],
            client: @client
          )
        end
        Tag::Collection.new([batch], size: batch.size)
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(network_acl_id: @id)
        resp = @client.delete_network_acl(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Integer] :rule_number
      #   The rule number of the entry to delete.
      # @option options [required, Boolean] :egress
      #   Indicates whether the rule is an egress rule.
      # @return [EmptyStructure]
      def delete_entry(options = {})
        options = options.merge(network_acl_id: @id)
        resp = @client.delete_network_acl_entry(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, String] :association_id
      #   The ID of the current association between the original network ACL and
      #   the subnet.
      # @return [Types::ReplaceNetworkAclAssociationResult]
      def replace_association(options = {})
        options = options.merge(network_acl_id: @id)
        resp = @client.replace_network_acl_association(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @option options [required, Integer] :rule_number
      #   The rule number of the entry to replace.
      # @option options [required, String] :protocol
      #   The IP protocol. You can specify `all` or `-1` to mean all protocols.
      # @option options [required, String] :rule_action
      #   Indicates whether to allow or deny the traffic that matches the rule.
      # @option options [required, Boolean] :egress
      #   Indicates whether to replace the egress rule.
      #
      #   Default: If no value is specified, we replace the ingress rule.
      # @option options [required, String] :cidr_block
      #   The network range to allow or deny, in CIDR notation.
      # @option options [Types::IcmpTypeCode] :icmp_type_code
      #   ICMP protocol: The ICMP type and code. Required if specifying 1 (ICMP)
      #   for the protocol.
      # @option options [Types::PortRange] :port_range
      #   TCP or UDP protocols: The range of ports the rule applies to. Required
      #   if specifying 6 (TCP) or 17 (UDP) for the protocol.
      # @return [EmptyStructure]
      def replace_entry(options = {})
        options = options.merge(network_acl_id: @id)
        resp = @client.replace_network_acl_entry(options)
        resp.data
      end

      # @!group Associations

      # @return [Vpc, nil]
      def vpc
        if data.vpc_id
          Vpc.new(
            id: data.vpc_id,
            client: @client
          )
        else
          nil
        end
      end

      # @deprecated
      # @api private
      def identifiers
        { id: @id }
      end
      deprecated(:identifiers)

      private

      def extract_id(args, options)
        value = args[0] || options.delete(:id)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :id"
        else
          msg = "expected :id to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<NetworkAcl>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end

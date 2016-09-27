# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module IAM
    class Policy

      extend Aws::Deprecations

      # @overload def initialize(arn, options = {})
      #   @param [String] arn
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :arn
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @arn = extract_arn(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def arn
        @arn
      end

      # The friendly name (not ARN) identifying the policy.
      # @return [String]
      def policy_name
        data.policy_name
      end

      # The stable and unique string identifying the policy.
      #
      # For more information about IDs, see [IAM Identifiers][1] in the *Using
      # IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      # @return [String]
      def policy_id
        data.policy_id
      end

      # The path to the policy.
      #
      # For more information about paths, see [IAM Identifiers][1] in the
      # *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      # @return [String]
      def path
        data.path
      end

      # The identifier for the version of the policy that is set as the
      # default version.
      # @return [String]
      def default_version_id
        data.default_version_id
      end

      # The number of entities (users, groups, and roles) that the policy is
      # attached to.
      # @return [Integer]
      def attachment_count
        data.attachment_count
      end

      # Specifies whether the policy can be attached to an IAM user, group, or
      # role.
      # @return [Boolean]
      def is_attachable
        data.is_attachable
      end

      # A friendly description of the policy.
      #
      # This element is included in the response to the GetPolicy operation.
      # It is not included in the response to the ListPolicies operation.
      # @return [String]
      def description
        data.description
      end

      # The date and time, in [ISO 8601 date-time format][1], when the policy
      # was created.
      #
      #
      #
      # [1]: http://www.iso.org/iso/iso8601
      # @return [Time]
      def create_date
        data.create_date
      end

      # The date and time, in [ISO 8601 date-time format][1], when the policy
      # was last updated.
      #
      # When a policy has only one version, this field contains the date and
      # time when the policy was created. When a policy has more than one
      # version, this field contains the date and time when the most recent
      # policy version was created.
      #
      #
      #
      # [1]: http://www.iso.org/iso/iso8601
      # @return [Time]
      def update_date
        data.update_date
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {Policy}.
      # Returns `self` making it possible to chain methods.
      #
      #     policy.reload.data
      #
      # @return [self]
      def load
        resp = @client.get_policy(policy_arn: @arn)
        @data = resp.policy
        self
      end
      alias :reload :load

      # @return [Types::Policy]
      #   Returns the data for this {Policy}. Calls
      #   {Client#get_policy} if {#data_loaded?} is `false`.
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
      # @option options [required, String] :group_name
      #   The name (friendly name, not ARN) of the group to attach the policy
      #   to.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def attach_group(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.attach_group_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :role_name
      #   The name (friendly name, not ARN) of the role to attach the policy to.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def attach_role(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.attach_role_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :user_name
      #   The name (friendly name, not ARN) of the IAM user to attach the policy
      #   to.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def attach_user(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.attach_user_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :policy_document
      #   The JSON policy document that you want to use as the content for this
      #   new version of the policy.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [Boolean] :set_as_default
      #   Specifies whether to set this version as the policy's default
      #   version.
      #
      #   When this parameter is `true`, the new policy version becomes the
      #   operative version; that is, the version that is in effect for the IAM
      #   users, groups, and roles that the policy is attached to.
      #
      #   For more information about managed policy versions, see [Versioning
      #   for Managed Policies][1] in the *IAM User Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
      # @return [PolicyVersion]
      def create_version(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.create_policy_version(options)
        PolicyVersion.new(
          arn: @arn,
          version_id: resp.data.policy_version.version_id,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.delete_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :group_name
      #   The name (friendly name, not ARN) of the IAM group to detach the
      #   policy from.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def detach_group(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.detach_group_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :role_name
      #   The name (friendly name, not ARN) of the IAM role to detach the policy
      #   from.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def detach_role(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.detach_role_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :user_name
      #   The name (friendly name, not ARN) of the IAM user to detach the policy
      #   from.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def detach_user(options = {})
        options = options.merge(policy_arn: @arn)
        resp = @client.detach_user_policy(options)
        resp.data
      end

      # @!group Associations

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. This parameter is optional.
      #   If it is not included, it defaults to a slash (/), listing all
      #   entities.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Group::Collection]
      def attached_groups(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(
            policy_arn: @arn,
            entity_filter: "Group"
          )
          resp = @client.list_entities_for_policy(options)
          resp.each_page do |page|
            batch = []
            page.data.policy_groups.each do |p|
              batch << Group.new(
                name: p.group_name,
                data: p,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Group::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. This parameter is optional.
      #   If it is not included, it defaults to a slash (/), listing all
      #   entities.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Role::Collection]
      def attached_roles(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(
            policy_arn: @arn,
            entity_filter: "Role"
          )
          resp = @client.list_entities_for_policy(options)
          resp.each_page do |page|
            batch = []
            page.data.policy_roles.each do |p|
              batch << Role.new(
                name: p.role_name,
                data: p,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Role::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. This parameter is optional.
      #   If it is not included, it defaults to a slash (/), listing all
      #   entities.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [User::Collection]
      def attached_users(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(
            policy_arn: @arn,
            entity_filter: "User"
          )
          resp = @client.list_entities_for_policy(options)
          resp.each_page do |page|
            batch = []
            page.data.policy_users.each do |p|
              batch << User.new(
                name: p.user_name,
                data: p,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        User::Collection.new(batches)
      end

      # @return [PolicyVersion, nil]
      def default_version
        if data.default_version_id
          PolicyVersion.new(
            arn: @arn,
            version_id: data.default_version_id,
            client: @client
          )
        else
          nil
        end
      end

      # @param [Hash] options ({})
      # @return [PolicyVersion::Collection]
      def versions(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(policy_arn: @arn)
          resp = @client.list_policy_versions(options)
          resp.each_page do |page|
            batch = []
            page.data.versions.each do |v|
              batch << PolicyVersion.new(
                arn: @arn,
                version_id: v.version_id,
                data: v,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        PolicyVersion::Collection.new(batches)
      end

      # @deprecated
      # @api private
      def identifiers
        { arn: @arn }
      end
      deprecated(:identifiers)

      private

      def extract_arn(args, options)
        value = args[0] || options.delete(:arn)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :arn"
        else
          msg = "expected :arn to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<Policy>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end

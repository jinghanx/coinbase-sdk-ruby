=begin
#Coinbase Platform API

#This is the OpenAPI 3.0 specification for the Coinbase Platform APIs, used in conjunction with the Coinbase Platform SDKs.

The version of the OpenAPI document: 0.0.1-alpha
Contact: yuga.cohler@coinbase.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Coinbase::Client
  # A trade of an asset to another asset
  class Trade
    # The ID of the blockchain network
    attr_accessor :network_id

    # The ID of the wallet that owns the from address
    attr_accessor :wallet_id

    # The onchain address of the sender
    attr_accessor :address_id

    # The ID of the trade
    attr_accessor :trade_id

    # The amount of the from asset to be traded (in atomic units of the from asset)
    attr_accessor :from_amount

    attr_accessor :from_asset

    # The amount of the to asset that will be received (in atomic units of the to asset)
    attr_accessor :to_amount

    attr_accessor :to_asset

    attr_accessor :transaction

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'network_id' => :'network_id',
        :'wallet_id' => :'wallet_id',
        :'address_id' => :'address_id',
        :'trade_id' => :'trade_id',
        :'from_amount' => :'from_amount',
        :'from_asset' => :'from_asset',
        :'to_amount' => :'to_amount',
        :'to_asset' => :'to_asset',
        :'transaction' => :'transaction'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'network_id' => :'String',
        :'wallet_id' => :'String',
        :'address_id' => :'String',
        :'trade_id' => :'String',
        :'from_amount' => :'String',
        :'from_asset' => :'Asset',
        :'to_amount' => :'String',
        :'to_asset' => :'Asset',
        :'transaction' => :'Transaction'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Coinbase::Client::Trade` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Coinbase::Client::Trade`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'network_id')
        self.network_id = attributes[:'network_id']
      else
        self.network_id = nil
      end

      if attributes.key?(:'wallet_id')
        self.wallet_id = attributes[:'wallet_id']
      else
        self.wallet_id = nil
      end

      if attributes.key?(:'address_id')
        self.address_id = attributes[:'address_id']
      else
        self.address_id = nil
      end

      if attributes.key?(:'trade_id')
        self.trade_id = attributes[:'trade_id']
      else
        self.trade_id = nil
      end

      if attributes.key?(:'from_amount')
        self.from_amount = attributes[:'from_amount']
      else
        self.from_amount = nil
      end

      if attributes.key?(:'from_asset')
        self.from_asset = attributes[:'from_asset']
      else
        self.from_asset = nil
      end

      if attributes.key?(:'to_amount')
        self.to_amount = attributes[:'to_amount']
      else
        self.to_amount = nil
      end

      if attributes.key?(:'to_asset')
        self.to_asset = attributes[:'to_asset']
      else
        self.to_asset = nil
      end

      if attributes.key?(:'transaction')
        self.transaction = attributes[:'transaction']
      else
        self.transaction = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @network_id.nil?
        invalid_properties.push('invalid value for "network_id", network_id cannot be nil.')
      end

      if @wallet_id.nil?
        invalid_properties.push('invalid value for "wallet_id", wallet_id cannot be nil.')
      end

      if @address_id.nil?
        invalid_properties.push('invalid value for "address_id", address_id cannot be nil.')
      end

      if @trade_id.nil?
        invalid_properties.push('invalid value for "trade_id", trade_id cannot be nil.')
      end

      if @from_amount.nil?
        invalid_properties.push('invalid value for "from_amount", from_amount cannot be nil.')
      end

      if @from_asset.nil?
        invalid_properties.push('invalid value for "from_asset", from_asset cannot be nil.')
      end

      if @to_amount.nil?
        invalid_properties.push('invalid value for "to_amount", to_amount cannot be nil.')
      end

      if @to_asset.nil?
        invalid_properties.push('invalid value for "to_asset", to_asset cannot be nil.')
      end

      if @transaction.nil?
        invalid_properties.push('invalid value for "transaction", transaction cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @network_id.nil?
      return false if @wallet_id.nil?
      return false if @address_id.nil?
      return false if @trade_id.nil?
      return false if @from_amount.nil?
      return false if @from_asset.nil?
      return false if @to_amount.nil?
      return false if @to_asset.nil?
      return false if @transaction.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          network_id == o.network_id &&
          wallet_id == o.wallet_id &&
          address_id == o.address_id &&
          trade_id == o.trade_id &&
          from_amount == o.from_amount &&
          from_asset == o.from_asset &&
          to_amount == o.to_amount &&
          to_asset == o.to_asset &&
          transaction == o.transaction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [network_id, wallet_id, address_id, trade_id, from_amount, from_asset, to_amount, to_asset, transaction].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Coinbase::Client.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end

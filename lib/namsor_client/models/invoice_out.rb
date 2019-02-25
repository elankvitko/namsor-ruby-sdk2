=begin
#NamSor API v2

#NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 

OpenAPI spec version: 2.0.2-beta
Contact: contact@namsor.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'date'

module NamSorClient
  class InvoiceOut
    attr_accessor :items

    attr_accessor :user_id

    attr_accessor :invoice_id

    attr_accessor :is_striped

    attr_accessor :stripe_customer_id

    attr_accessor :amount_due

    attr_accessor :amount_paid

    attr_accessor :amount_remaining

    attr_accessor :attempted

    attr_accessor :currency

    attr_accessor :invoice_date

    attr_accessor :due_date

    attr_accessor :description

    attr_accessor :invoice_pdf

    attr_accessor :period_start

    attr_accessor :period_end

    attr_accessor :receipt_number

    attr_accessor :invoice_status

    attr_accessor :sub_total

    attr_accessor :tax

    attr_accessor :tax_percent

    attr_accessor :total

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'items' => :'items',
        :'user_id' => :'userId',
        :'invoice_id' => :'invoiceId',
        :'is_striped' => :'isStriped',
        :'stripe_customer_id' => :'stripeCustomerId',
        :'amount_due' => :'amountDue',
        :'amount_paid' => :'amountPaid',
        :'amount_remaining' => :'amountRemaining',
        :'attempted' => :'attempted',
        :'currency' => :'currency',
        :'invoice_date' => :'invoiceDate',
        :'due_date' => :'dueDate',
        :'description' => :'description',
        :'invoice_pdf' => :'invoicePdf',
        :'period_start' => :'periodStart',
        :'period_end' => :'periodEnd',
        :'receipt_number' => :'receiptNumber',
        :'invoice_status' => :'invoiceStatus',
        :'sub_total' => :'subTotal',
        :'tax' => :'tax',
        :'tax_percent' => :'taxPercent',
        :'total' => :'total'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'items' => :'Array<InvoiceItemOut>',
        :'user_id' => :'String',
        :'invoice_id' => :'String',
        :'is_striped' => :'BOOLEAN',
        :'stripe_customer_id' => :'String',
        :'amount_due' => :'Integer',
        :'amount_paid' => :'Integer',
        :'amount_remaining' => :'Integer',
        :'attempted' => :'BOOLEAN',
        :'currency' => :'String',
        :'invoice_date' => :'DateTime',
        :'due_date' => :'DateTime',
        :'description' => :'String',
        :'invoice_pdf' => :'String',
        :'period_start' => :'DateTime',
        :'period_end' => :'DateTime',
        :'receipt_number' => :'String',
        :'invoice_status' => :'String',
        :'sub_total' => :'Integer',
        :'tax' => :'Integer',
        :'tax_percent' => :'Integer',
        :'total' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NamSorClient::InvoiceOut` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NamSorClient::InvoiceOut`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'invoice_id')
        self.invoice_id = attributes[:'invoice_id']
      end

      if attributes.key?(:'is_striped')
        self.is_striped = attributes[:'is_striped']
      end

      if attributes.key?(:'stripe_customer_id')
        self.stripe_customer_id = attributes[:'stripe_customer_id']
      end

      if attributes.key?(:'amount_due')
        self.amount_due = attributes[:'amount_due']
      end

      if attributes.key?(:'amount_paid')
        self.amount_paid = attributes[:'amount_paid']
      end

      if attributes.key?(:'amount_remaining')
        self.amount_remaining = attributes[:'amount_remaining']
      end

      if attributes.key?(:'attempted')
        self.attempted = attributes[:'attempted']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'invoice_date')
        self.invoice_date = attributes[:'invoice_date']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'invoice_pdf')
        self.invoice_pdf = attributes[:'invoice_pdf']
      end

      if attributes.key?(:'period_start')
        self.period_start = attributes[:'period_start']
      end

      if attributes.key?(:'period_end')
        self.period_end = attributes[:'period_end']
      end

      if attributes.key?(:'receipt_number')
        self.receipt_number = attributes[:'receipt_number']
      end

      if attributes.key?(:'invoice_status')
        self.invoice_status = attributes[:'invoice_status']
      end

      if attributes.key?(:'sub_total')
        self.sub_total = attributes[:'sub_total']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.key?(:'tax_percent')
        self.tax_percent = attributes[:'tax_percent']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          items == o.items &&
          user_id == o.user_id &&
          invoice_id == o.invoice_id &&
          is_striped == o.is_striped &&
          stripe_customer_id == o.stripe_customer_id &&
          amount_due == o.amount_due &&
          amount_paid == o.amount_paid &&
          amount_remaining == o.amount_remaining &&
          attempted == o.attempted &&
          currency == o.currency &&
          invoice_date == o.invoice_date &&
          due_date == o.due_date &&
          description == o.description &&
          invoice_pdf == o.invoice_pdf &&
          period_start == o.period_start &&
          period_end == o.period_end &&
          receipt_number == o.receipt_number &&
          invoice_status == o.invoice_status &&
          sub_total == o.sub_total &&
          tax == o.tax &&
          tax_percent == o.tax_percent &&
          total == o.total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [items, user_id, invoice_id, is_striped, stripe_customer_id, amount_due, amount_paid, amount_remaining, attempted, currency, invoice_date, due_date, description, invoice_pdf, period_start, period_end, receipt_number, invoice_status, sub_total, tax, tax_percent, total].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        NamSorClient.const_get(type).build_from_hash(value)
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
        next if value.nil?
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
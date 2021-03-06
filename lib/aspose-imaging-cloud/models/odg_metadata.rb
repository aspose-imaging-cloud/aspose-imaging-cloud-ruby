#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="odg_metadata.rb">
#    Copyright (c) 2018-2020 Aspose Pty Ltd. All rights reserved.
#  </copyright>
#  <summary>
#    Permission is hereby granted, free of charge, to any person obtaining a
#   copy  of this software and associated documentation files (the "Software"),
#   to deal  in the Software without restriction, including without limitation
#   the rights  to use, copy, modify, merge, publish, distribute, sublicense,
#   and/or sell  copies of the Software, and to permit persons to whom the
#   Software is  furnished to do so, subject to the following conditions:
#
#   The above copyright notice and this permission notice shall be included in
#   all  copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#   FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#   DEALINGS IN THE SOFTWARE.
#  </summary>
#  ----------------------------------------------------------------------------


require 'date'

module AsposeImagingCloud
  # ODG format metadata
  class OdgMetadata
    # Gets or sets the generator.
    attr_accessor :generator

    # Gets or sets the title.
    attr_accessor :title

    # Gets or sets the description.
    attr_accessor :description

    # Gets or sets the subject.
    attr_accessor :subject

    # Gets or sets the keywords.
    attr_accessor :keywords

    # Gets or sets the initial creator.
    attr_accessor :initial_creator

    # Gets or sets the creator.
    attr_accessor :creator

    # Gets or sets the \"PrintedBy\" record.
    attr_accessor :printed_by

    # Gets or sets the creation date and time.
    attr_accessor :creation_date_time

    # Gets or sets the modification date and time.
    attr_accessor :modification_date_time

    # Gets or sets the print date and time.
    attr_accessor :print_date_time

    # Gets or sets the document template.
    attr_accessor :document_template

    # Gets or sets the automatic reload.
    attr_accessor :automatic_reload

    # Gets or sets the hyperlink behavior.
    attr_accessor :hyperlink_behavior

    # Gets or sets the language.
    attr_accessor :language

    # Gets or sets the editing cycles.
    attr_accessor :editing_cycles

    # Gets or sets the duration of the editing.
    attr_accessor :editing_duration

    # Gets or sets the document statistics.
    attr_accessor :document_statistics

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'generator' => :'Generator',
        :'title' => :'Title',
        :'description' => :'Description',
        :'subject' => :'Subject',
        :'keywords' => :'Keywords',
        :'initial_creator' => :'InitialCreator',
        :'creator' => :'Creator',
        :'printed_by' => :'PrintedBy',
        :'creation_date_time' => :'CreationDateTime',
        :'modification_date_time' => :'ModificationDateTime',
        :'print_date_time' => :'PrintDateTime',
        :'document_template' => :'DocumentTemplate',
        :'automatic_reload' => :'AutomaticReload',
        :'hyperlink_behavior' => :'HyperlinkBehavior',
        :'language' => :'Language',
        :'editing_cycles' => :'EditingCycles',
        :'editing_duration' => :'EditingDuration',
        :'document_statistics' => :'DocumentStatistics'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'generator' => :'String',
        :'title' => :'String',
        :'description' => :'String',
        :'subject' => :'String',
        :'keywords' => :'String',
        :'initial_creator' => :'String',
        :'creator' => :'String',
        :'printed_by' => :'String',
        :'creation_date_time' => :'String',
        :'modification_date_time' => :'String',
        :'print_date_time' => :'String',
        :'document_template' => :'String',
        :'automatic_reload' => :'String',
        :'hyperlink_behavior' => :'String',
        :'language' => :'String',
        :'editing_cycles' => :'String',
        :'editing_duration' => :'String',
        :'document_statistics' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Generator')
        self.generator = attributes[:'Generator']
      end

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'Subject')
        self.subject = attributes[:'Subject']
      end

      if attributes.has_key?(:'Keywords')
        self.keywords = attributes[:'Keywords']
      end

      if attributes.has_key?(:'InitialCreator')
        self.initial_creator = attributes[:'InitialCreator']
      end

      if attributes.has_key?(:'Creator')
        self.creator = attributes[:'Creator']
      end

      if attributes.has_key?(:'PrintedBy')
        self.printed_by = attributes[:'PrintedBy']
      end

      if attributes.has_key?(:'CreationDateTime')
        self.creation_date_time = attributes[:'CreationDateTime']
      end

      if attributes.has_key?(:'ModificationDateTime')
        self.modification_date_time = attributes[:'ModificationDateTime']
      end

      if attributes.has_key?(:'PrintDateTime')
        self.print_date_time = attributes[:'PrintDateTime']
      end

      if attributes.has_key?(:'DocumentTemplate')
        self.document_template = attributes[:'DocumentTemplate']
      end

      if attributes.has_key?(:'AutomaticReload')
        self.automatic_reload = attributes[:'AutomaticReload']
      end

      if attributes.has_key?(:'HyperlinkBehavior')
        self.hyperlink_behavior = attributes[:'HyperlinkBehavior']
      end

      if attributes.has_key?(:'Language')
        self.language = attributes[:'Language']
      end

      if attributes.has_key?(:'EditingCycles')
        self.editing_cycles = attributes[:'EditingCycles']
      end

      if attributes.has_key?(:'EditingDuration')
        self.editing_duration = attributes[:'EditingDuration']
      end

      if attributes.has_key?(:'DocumentStatistics')
        self.document_statistics = attributes[:'DocumentStatistics']
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
          generator == o.generator &&
          title == o.title &&
          description == o.description &&
          subject == o.subject &&
          keywords == o.keywords &&
          initial_creator == o.initial_creator &&
          creator == o.creator &&
          printed_by == o.printed_by &&
          creation_date_time == o.creation_date_time &&
          modification_date_time == o.modification_date_time &&
          print_date_time == o.print_date_time &&
          document_template == o.document_template &&
          automatic_reload == o.automatic_reload &&
          hyperlink_behavior == o.hyperlink_behavior &&
          language == o.language &&
          editing_cycles == o.editing_cycles &&
          editing_duration == o.editing_duration &&
          document_statistics == o.document_statistics
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [generator, title, description, subject, keywords, initial_creator, creator, printed_by, creation_date_time, modification_date_time, print_date_time, document_template, automatic_reload, hyperlink_behavior, language, editing_cycles, editing_duration, document_statistics].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        attribute_key = self.class.attribute_map[key]
        attribute_key = (attribute_key[0, 1].downcase + attribute_key[1..-1]).to_sym
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[attribute_key].is_a?(Array)
            self.send("#{key}=", attributes[attribute_key].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[attribute_key].nil?
          self.send("#{key}=", _deserialize(type, attributes[attribute_key]))
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
        temp_model = AsposeImagingCloud.const_get(type).new
        temp_model.build_from_hash(value)
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

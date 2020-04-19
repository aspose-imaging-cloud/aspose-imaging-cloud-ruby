#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="dng_properties.rb">
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
  # Represents information about image in DNG format.
  class DngProperties
    # Gets or sets the DNG version.
    attr_accessor :dng_version

    # Gets or sets the description of colors (RGBG, RGBE, GMCY or GBTG).
    attr_accessor :description

    # Gets or sets the camera model.
    attr_accessor :model

    # Gets or sets the camera manufacturer.
    attr_accessor :camera_manufacturer

    # Gets or sets the value indicating whether it's a Foveon matrix.
    attr_accessor :is_foveon

    # Gets or sets the software.
    attr_accessor :software

    # Gets or sets the number of RAW images in file (0 means that the file has not been recognized).
    attr_accessor :raw_count

    # Gets or sets the bit mask describing the order of color pixels in the matrix.
    attr_accessor :filters

    # Gets or sets the colors count.
    attr_accessor :colors_count

    # Gets or sets the XMP data.
    attr_accessor :xmp_data

    # Gets or sets the translation array for CFA mosaic of DNG format.
    attr_accessor :translation_cfa_dng

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'dng_version' => :'DngVersion',
        :'description' => :'Description',
        :'model' => :'Model',
        :'camera_manufacturer' => :'CameraManufacturer',
        :'is_foveon' => :'IsFoveon',
        :'software' => :'Software',
        :'raw_count' => :'RawCount',
        :'filters' => :'Filters',
        :'colors_count' => :'ColorsCount',
        :'xmp_data' => :'XmpData',
        :'translation_cfa_dng' => :'TranslationCfaDng'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'dng_version' => :'Integer',
        :'description' => :'String',
        :'model' => :'String',
        :'camera_manufacturer' => :'String',
        :'is_foveon' => :'Integer',
        :'software' => :'String',
        :'raw_count' => :'Integer',
        :'filters' => :'Integer',
        :'colors_count' => :'Integer',
        :'xmp_data' => :'String',
        :'translation_cfa_dng' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'DngVersion')
        self.dng_version = attributes[:'DngVersion']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
      end

      if attributes.has_key?(:'Model')
        self.model = attributes[:'Model']
      end

      if attributes.has_key?(:'CameraManufacturer')
        self.camera_manufacturer = attributes[:'CameraManufacturer']
      end

      if attributes.has_key?(:'IsFoveon')
        self.is_foveon = attributes[:'IsFoveon']
      end

      if attributes.has_key?(:'Software')
        self.software = attributes[:'Software']
      end

      if attributes.has_key?(:'RawCount')
        self.raw_count = attributes[:'RawCount']
      end

      if attributes.has_key?(:'Filters')
        self.filters = attributes[:'Filters']
      end

      if attributes.has_key?(:'ColorsCount')
        self.colors_count = attributes[:'ColorsCount']
      end

      if attributes.has_key?(:'XmpData')
        self.xmp_data = attributes[:'XmpData']
      end

      if attributes.has_key?(:'TranslationCfaDng')
        if (value = attributes[:'TranslationCfaDng']).is_a?(Array)
          self.translation_cfa_dng = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @dng_version.nil?
        invalid_properties.push('invalid value for "dng_version", dng_version cannot be nil.')
      end

      if @is_foveon.nil?
        invalid_properties.push('invalid value for "is_foveon", is_foveon cannot be nil.')
      end

      if @raw_count.nil?
        invalid_properties.push('invalid value for "raw_count", raw_count cannot be nil.')
      end

      if @filters.nil?
        invalid_properties.push('invalid value for "filters", filters cannot be nil.')
      end

      if @colors_count.nil?
        invalid_properties.push('invalid value for "colors_count", colors_count cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @dng_version.nil?
      return false if @is_foveon.nil?
      return false if @raw_count.nil?
      return false if @filters.nil?
      return false if @colors_count.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          dng_version == o.dng_version &&
          description == o.description &&
          model == o.model &&
          camera_manufacturer == o.camera_manufacturer &&
          is_foveon == o.is_foveon &&
          software == o.software &&
          raw_count == o.raw_count &&
          filters == o.filters &&
          colors_count == o.colors_count &&
          xmp_data == o.xmp_data &&
          translation_cfa_dng == o.translation_cfa_dng
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [dng_version, description, model, camera_manufacturer, is_foveon, software, raw_count, filters, colors_count, xmp_data, translation_cfa_dng].hash
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

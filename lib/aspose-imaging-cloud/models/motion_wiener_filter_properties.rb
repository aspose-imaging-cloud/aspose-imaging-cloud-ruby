#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="motion_wiener_filter_properties.rb">
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
  # Deconvolution filter options deblur motion             
  class MotionWienerFilterProperties
    attr_accessor :discriminator

    # Gets or sets the SNR(signal-to-noise ratio) recommended range 0.002 - 0.009, default value = 0.007
    attr_accessor :snr

    # Gets or sets the brightness. recommended range 1 - 1.5 default value = 1.15
    attr_accessor :brightness

    # Gets or sets a value indicating whether this DeconvolutionFilterProperties is grayscale. Return grayscale mode or RGB mode.
    attr_accessor :grayscale

    # Gets a value indicating whether this instance is partial loaded.
    attr_accessor :is_partial_loaded

    # Gets or sets the length.             
    attr_accessor :length

    # Gets or sets the smooth.             
    attr_accessor :smooth

    # Gets or sets the angle in gradus.             
    attr_accessor :angle

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'discriminator' => :'discriminator',
        :'snr' => :'Snr',
        :'brightness' => :'Brightness',
        :'grayscale' => :'Grayscale',
        :'is_partial_loaded' => :'IsPartialLoaded',
        :'length' => :'Length',
        :'smooth' => :'Smooth',
        :'angle' => :'Angle'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'discriminator' => :'String',
        :'snr' => :'Float',
        :'brightness' => :'Float',
        :'grayscale' => :'BOOLEAN',
        :'is_partial_loaded' => :'BOOLEAN',
        :'length' => :'Integer',
        :'smooth' => :'Float',
        :'angle' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'discriminator')
        self.discriminator = attributes[:'discriminator']
      end

      if attributes.has_key?(:'Snr')
        self.snr = attributes[:'Snr']
      end

      if attributes.has_key?(:'Brightness')
        self.brightness = attributes[:'Brightness']
      end

      if attributes.has_key?(:'Grayscale')
        self.grayscale = attributes[:'Grayscale']
      end

      if attributes.has_key?(:'IsPartialLoaded')
        self.is_partial_loaded = attributes[:'IsPartialLoaded']
      end

      if attributes.has_key?(:'Length')
        self.length = attributes[:'Length']
      end

      if attributes.has_key?(:'Smooth')
        self.smooth = attributes[:'Smooth']
      end

      if attributes.has_key?(:'Angle')
        self.angle = attributes[:'Angle']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @discriminator.nil?
        invalid_properties.push('invalid value for "discriminator", discriminator cannot be nil.')
      end

      if @snr.nil?
        invalid_properties.push('invalid value for "snr", snr cannot be nil.')
      end

      if @brightness.nil?
        invalid_properties.push('invalid value for "brightness", brightness cannot be nil.')
      end

      if @grayscale.nil?
        invalid_properties.push('invalid value for "grayscale", grayscale cannot be nil.')
      end

      if @is_partial_loaded.nil?
        invalid_properties.push('invalid value for "is_partial_loaded", is_partial_loaded cannot be nil.')
      end

      if @length.nil?
        invalid_properties.push('invalid value for "length", length cannot be nil.')
      end

      if @smooth.nil?
        invalid_properties.push('invalid value for "smooth", smooth cannot be nil.')
      end

      if @angle.nil?
        invalid_properties.push('invalid value for "angle", angle cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @discriminator.nil?
      return false if @snr.nil?
      return false if @brightness.nil?
      return false if @grayscale.nil?
      return false if @is_partial_loaded.nil?
      return false if @length.nil?
      return false if @smooth.nil?
      return false if @angle.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          discriminator == o.discriminator &&
          snr == o.snr &&
          brightness == o.brightness &&
          grayscale == o.grayscale &&
          is_partial_loaded == o.is_partial_loaded &&
          length == o.length &&
          smooth == o.smooth &&
          angle == o.angle
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [discriminator, snr, brightness, grayscale, is_partial_loaded, length, smooth, angle].hash
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

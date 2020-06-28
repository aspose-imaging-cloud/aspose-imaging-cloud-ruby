#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="dicom_properties.rb">
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
  # Represents information about image in dicom format.
  class DicomProperties
    # Gets or sets the planar configuration.
    attr_accessor :planar_configuration

    # Gets or sets the array of red colors.
    attr_accessor :reds

    # Gets or sets the array of green colors.
    attr_accessor :greens

    # Gets or sets the array of blue colors.
    attr_accessor :blues

    # Gets or sets the header information by bytes.
    attr_accessor :dicom_header_info_by_bytes

    # Gets or sets a value indicating whether it's a signed image.
    attr_accessor :signed_image

    # Gets or sets the header information of the DICOM file.
    attr_accessor :dicom_info

    # Gets or sets samples per pixel count.
    attr_accessor :samples_per_pixel

    # Gets or sets allocated bits count.
    attr_accessor :bits_allocated

    # Gets or sets the photo interpretation.
    attr_accessor :photo_interpretation

    # Gets or sets the width.
    attr_accessor :width

    # Gets or sets the height.
    attr_accessor :height

    # Gets or sets the window centre.
    attr_accessor :window_centre

    # Gets or sets the width of the window.
    attr_accessor :window_width

    # Gets or sets data representation of the pixel samples.
    attr_accessor :pixel_representation

    # Gets or sets a value of the rescale intercept.
    attr_accessor :rescale_intercept

    # Gets or sets a value of the rescale slope.
    attr_accessor :rescale_slope

    # Gets or sets the number of frames.
    attr_accessor :number_of_frames

    # Indicates if DICOM image has little endian byte order.
    attr_accessor :is_little_endian

    # Gets or sets the offset.
    attr_accessor :offset

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'planar_configuration' => :'PlanarConfiguration',
        :'reds' => :'Reds',
        :'greens' => :'Greens',
        :'blues' => :'Blues',
        :'dicom_header_info_by_bytes' => :'DicomHeaderInfoByBytes',
        :'signed_image' => :'SignedImage',
        :'dicom_info' => :'DicomInfo',
        :'samples_per_pixel' => :'SamplesPerPixel',
        :'bits_allocated' => :'BitsAllocated',
        :'photo_interpretation' => :'PhotoInterpretation',
        :'width' => :'Width',
        :'height' => :'Height',
        :'window_centre' => :'WindowCentre',
        :'window_width' => :'WindowWidth',
        :'pixel_representation' => :'PixelRepresentation',
        :'rescale_intercept' => :'RescaleIntercept',
        :'rescale_slope' => :'RescaleSlope',
        :'number_of_frames' => :'NumberOfFrames',
        :'is_little_endian' => :'IsLittleEndian',
        :'offset' => :'Offset'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'planar_configuration' => :'Integer',
        :'reds' => :'String',
        :'greens' => :'String',
        :'blues' => :'String',
        :'dicom_header_info_by_bytes' => :'String',
        :'signed_image' => :'BOOLEAN',
        :'dicom_info' => :'Array<String>',
        :'samples_per_pixel' => :'Integer',
        :'bits_allocated' => :'Integer',
        :'photo_interpretation' => :'String',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'window_centre' => :'Float',
        :'window_width' => :'Float',
        :'pixel_representation' => :'Integer',
        :'rescale_intercept' => :'Float',
        :'rescale_slope' => :'Float',
        :'number_of_frames' => :'Integer',
        :'is_little_endian' => :'BOOLEAN',
        :'offset' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'PlanarConfiguration')
        self.planar_configuration = attributes[:'PlanarConfiguration']
      end

      if attributes.has_key?(:'Reds')
        self.reds = attributes[:'Reds']
      end

      if attributes.has_key?(:'Greens')
        self.greens = attributes[:'Greens']
      end

      if attributes.has_key?(:'Blues')
        self.blues = attributes[:'Blues']
      end

      if attributes.has_key?(:'DicomHeaderInfoByBytes')
        self.dicom_header_info_by_bytes = attributes[:'DicomHeaderInfoByBytes']
      end

      if attributes.has_key?(:'SignedImage')
        self.signed_image = attributes[:'SignedImage']
      end

      if attributes.has_key?(:'DicomInfo')
        if (value = attributes[:'DicomInfo']).is_a?(Array)
          self.dicom_info = value
        end
      end

      if attributes.has_key?(:'SamplesPerPixel')
        self.samples_per_pixel = attributes[:'SamplesPerPixel']
      end

      if attributes.has_key?(:'BitsAllocated')
        self.bits_allocated = attributes[:'BitsAllocated']
      end

      if attributes.has_key?(:'PhotoInterpretation')
        self.photo_interpretation = attributes[:'PhotoInterpretation']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'WindowCentre')
        self.window_centre = attributes[:'WindowCentre']
      end

      if attributes.has_key?(:'WindowWidth')
        self.window_width = attributes[:'WindowWidth']
      end

      if attributes.has_key?(:'PixelRepresentation')
        self.pixel_representation = attributes[:'PixelRepresentation']
      end

      if attributes.has_key?(:'RescaleIntercept')
        self.rescale_intercept = attributes[:'RescaleIntercept']
      end

      if attributes.has_key?(:'RescaleSlope')
        self.rescale_slope = attributes[:'RescaleSlope']
      end

      if attributes.has_key?(:'NumberOfFrames')
        self.number_of_frames = attributes[:'NumberOfFrames']
      end

      if attributes.has_key?(:'IsLittleEndian')
        self.is_little_endian = attributes[:'IsLittleEndian']
      end

      if attributes.has_key?(:'Offset')
        self.offset = attributes[:'Offset']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @planar_configuration.nil?
        invalid_properties.push('invalid value for "planar_configuration", planar_configuration cannot be nil.')
      end

      if !@reds.nil? && @reds !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "reds", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if !@greens.nil? && @greens !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "greens", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if !@blues.nil? && @blues !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "blues", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if !@dicom_header_info_by_bytes.nil? && @dicom_header_info_by_bytes !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "dicom_header_info_by_bytes", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @signed_image.nil?
        invalid_properties.push('invalid value for "signed_image", signed_image cannot be nil.')
      end

      if @samples_per_pixel.nil?
        invalid_properties.push('invalid value for "samples_per_pixel", samples_per_pixel cannot be nil.')
      end

      if @bits_allocated.nil?
        invalid_properties.push('invalid value for "bits_allocated", bits_allocated cannot be nil.')
      end

      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end

      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      if @window_centre.nil?
        invalid_properties.push('invalid value for "window_centre", window_centre cannot be nil.')
      end

      if @window_width.nil?
        invalid_properties.push('invalid value for "window_width", window_width cannot be nil.')
      end

      if @pixel_representation.nil?
        invalid_properties.push('invalid value for "pixel_representation", pixel_representation cannot be nil.')
      end

      if @rescale_intercept.nil?
        invalid_properties.push('invalid value for "rescale_intercept", rescale_intercept cannot be nil.')
      end

      if @rescale_slope.nil?
        invalid_properties.push('invalid value for "rescale_slope", rescale_slope cannot be nil.')
      end

      if @number_of_frames.nil?
        invalid_properties.push('invalid value for "number_of_frames", number_of_frames cannot be nil.')
      end

      if @is_little_endian.nil?
        invalid_properties.push('invalid value for "is_little_endian", is_little_endian cannot be nil.')
      end

      if @offset.nil?
        invalid_properties.push('invalid value for "offset", offset cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @planar_configuration.nil?
      return false if !@reds.nil? && @reds !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if !@greens.nil? && @greens !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if !@blues.nil? && @blues !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if !@dicom_header_info_by_bytes.nil? && @dicom_header_info_by_bytes !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @signed_image.nil?
      return false if @samples_per_pixel.nil?
      return false if @bits_allocated.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @window_centre.nil?
      return false if @window_width.nil?
      return false if @pixel_representation.nil?
      return false if @rescale_intercept.nil?
      return false if @rescale_slope.nil?
      return false if @number_of_frames.nil?
      return false if @is_little_endian.nil?
      return false if @offset.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reds Value to be assigned
    def reds=(reds)
      if !reds.nil? && reds !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "reds", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @reds = reds
    end

    # Custom attribute writer method with validation
    # @param [Object] greens Value to be assigned
    def greens=(greens)
      if !greens.nil? && greens !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "greens", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @greens = greens
    end

    # Custom attribute writer method with validation
    # @param [Object] blues Value to be assigned
    def blues=(blues)
      if !blues.nil? && blues !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "blues", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @blues = blues
    end

    # Custom attribute writer method with validation
    # @param [Object] dicom_header_info_by_bytes Value to be assigned
    def dicom_header_info_by_bytes=(dicom_header_info_by_bytes)
      if !dicom_header_info_by_bytes.nil? && dicom_header_info_by_bytes !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "dicom_header_info_by_bytes", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @dicom_header_info_by_bytes = dicom_header_info_by_bytes
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          planar_configuration == o.planar_configuration &&
          reds == o.reds &&
          greens == o.greens &&
          blues == o.blues &&
          dicom_header_info_by_bytes == o.dicom_header_info_by_bytes &&
          signed_image == o.signed_image &&
          dicom_info == o.dicom_info &&
          samples_per_pixel == o.samples_per_pixel &&
          bits_allocated == o.bits_allocated &&
          photo_interpretation == o.photo_interpretation &&
          width == o.width &&
          height == o.height &&
          window_centre == o.window_centre &&
          window_width == o.window_width &&
          pixel_representation == o.pixel_representation &&
          rescale_intercept == o.rescale_intercept &&
          rescale_slope == o.rescale_slope &&
          number_of_frames == o.number_of_frames &&
          is_little_endian == o.is_little_endian &&
          offset == o.offset
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [planar_configuration, reds, greens, blues, dicom_header_info_by_bytes, signed_image, dicom_info, samples_per_pixel, bits_allocated, photo_interpretation, width, height, window_centre, window_width, pixel_representation, rescale_intercept, rescale_slope, number_of_frames, is_little_endian, offset].hash
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

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="imaging_response.rb">
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
  # Represents information about image.
  class ImagingResponse
    # Gets or sets the height of image.
    attr_accessor :height

    # Gets or sets the width of image.
    attr_accessor :width

    # Gets or sets the bits per pixel for image.
    attr_accessor :bits_per_pixel

    # Gets or sets the BMP properties.
    attr_accessor :bmp_properties

    # Gets or sets the GIF properties.
    attr_accessor :gif_properties

    # Gets or sets the JPEG properties.
    attr_accessor :jpeg_properties

    # Gets or sets the PNG properties.
    attr_accessor :png_properties

    # Gets or sets the TIFF properties.
    attr_accessor :tiff_properties

    # Gets or sets the PSD properties.
    attr_accessor :psd_properties

    # Gets or sets the DJVU properties.
    attr_accessor :djvu_properties

    # Gets or sets the WEBP properties.
    attr_accessor :web_p_properties

    # Gets or sets the JPEG2000 properties.
    attr_accessor :jpeg2000_properties

    # Gets or sets the DICOM properties.
    attr_accessor :dicom_properties

    # Gets or sets the DNG properties.
    attr_accessor :dng_properties

    # Gets or sets the the ODG properties.
    attr_accessor :odg_properties

    # Gets or sets the SVG properties.
    attr_accessor :svg_properties

    # Gets or sets the ESP properties.
    attr_accessor :esp_properties

    # Gets or sets the horizontal resolution of an image.
    attr_accessor :horizontal_resolution

    # Gets or sets the vertical resolution of an image.
    attr_accessor :vertical_resolution

    # Gets or sets a value indicating whether image is cached.
    attr_accessor :is_cached

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'height' => :'Height',
        :'width' => :'Width',
        :'bits_per_pixel' => :'BitsPerPixel',
        :'bmp_properties' => :'BmpProperties',
        :'gif_properties' => :'GifProperties',
        :'jpeg_properties' => :'JpegProperties',
        :'png_properties' => :'PngProperties',
        :'tiff_properties' => :'TiffProperties',
        :'psd_properties' => :'PsdProperties',
        :'djvu_properties' => :'DjvuProperties',
        :'web_p_properties' => :'WebPProperties',
        :'jpeg2000_properties' => :'Jpeg2000Properties',
        :'dicom_properties' => :'DicomProperties',
        :'dng_properties' => :'DngProperties',
        :'odg_properties' => :'OdgProperties',
        :'svg_properties' => :'SvgProperties',
        :'esp_properties' => :'EspProperties',
        :'horizontal_resolution' => :'HorizontalResolution',
        :'vertical_resolution' => :'VerticalResolution',
        :'is_cached' => :'IsCached'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'bits_per_pixel' => :'Integer',
        :'bmp_properties' => :'BmpProperties',
        :'gif_properties' => :'GifProperties',
        :'jpeg_properties' => :'JpegProperties',
        :'png_properties' => :'PngProperties',
        :'tiff_properties' => :'TiffProperties',
        :'psd_properties' => :'PsdProperties',
        :'djvu_properties' => :'DjvuProperties',
        :'web_p_properties' => :'WebPProperties',
        :'jpeg2000_properties' => :'Jpeg2000Properties',
        :'dicom_properties' => :'DicomProperties',
        :'dng_properties' => :'DngProperties',
        :'odg_properties' => :'OdgProperties',
        :'svg_properties' => :'SvgProperties',
        :'esp_properties' => :'EpsProperties',
        :'horizontal_resolution' => :'Float',
        :'vertical_resolution' => :'Float',
        :'is_cached' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'BitsPerPixel')
        self.bits_per_pixel = attributes[:'BitsPerPixel']
      end

      if attributes.has_key?(:'BmpProperties')
        self.bmp_properties = attributes[:'BmpProperties']
      end

      if attributes.has_key?(:'GifProperties')
        self.gif_properties = attributes[:'GifProperties']
      end

      if attributes.has_key?(:'JpegProperties')
        self.jpeg_properties = attributes[:'JpegProperties']
      end

      if attributes.has_key?(:'PngProperties')
        self.png_properties = attributes[:'PngProperties']
      end

      if attributes.has_key?(:'TiffProperties')
        self.tiff_properties = attributes[:'TiffProperties']
      end

      if attributes.has_key?(:'PsdProperties')
        self.psd_properties = attributes[:'PsdProperties']
      end

      if attributes.has_key?(:'DjvuProperties')
        self.djvu_properties = attributes[:'DjvuProperties']
      end

      if attributes.has_key?(:'WebPProperties')
        self.web_p_properties = attributes[:'WebPProperties']
      end

      if attributes.has_key?(:'Jpeg2000Properties')
        self.jpeg2000_properties = attributes[:'Jpeg2000Properties']
      end

      if attributes.has_key?(:'DicomProperties')
        self.dicom_properties = attributes[:'DicomProperties']
      end

      if attributes.has_key?(:'DngProperties')
        self.dng_properties = attributes[:'DngProperties']
      end

      if attributes.has_key?(:'OdgProperties')
        self.odg_properties = attributes[:'OdgProperties']
      end

      if attributes.has_key?(:'SvgProperties')
        self.svg_properties = attributes[:'SvgProperties']
      end

      if attributes.has_key?(:'EspProperties')
        self.esp_properties = attributes[:'EspProperties']
      end

      if attributes.has_key?(:'HorizontalResolution')
        self.horizontal_resolution = attributes[:'HorizontalResolution']
      end

      if attributes.has_key?(:'VerticalResolution')
        self.vertical_resolution = attributes[:'VerticalResolution']
      end

      if attributes.has_key?(:'IsCached')
        self.is_cached = attributes[:'IsCached']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end

      if @bits_per_pixel.nil?
        invalid_properties.push('invalid value for "bits_per_pixel", bits_per_pixel cannot be nil.')
      end

      if @horizontal_resolution.nil?
        invalid_properties.push('invalid value for "horizontal_resolution", horizontal_resolution cannot be nil.')
      end

      if @vertical_resolution.nil?
        invalid_properties.push('invalid value for "vertical_resolution", vertical_resolution cannot be nil.')
      end

      if @is_cached.nil?
        invalid_properties.push('invalid value for "is_cached", is_cached cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @height.nil?
      return false if @width.nil?
      return false if @bits_per_pixel.nil?
      return false if @horizontal_resolution.nil?
      return false if @vertical_resolution.nil?
      return false if @is_cached.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          height == o.height &&
          width == o.width &&
          bits_per_pixel == o.bits_per_pixel &&
          bmp_properties == o.bmp_properties &&
          gif_properties == o.gif_properties &&
          jpeg_properties == o.jpeg_properties &&
          png_properties == o.png_properties &&
          tiff_properties == o.tiff_properties &&
          psd_properties == o.psd_properties &&
          djvu_properties == o.djvu_properties &&
          web_p_properties == o.web_p_properties &&
          jpeg2000_properties == o.jpeg2000_properties &&
          dicom_properties == o.dicom_properties &&
          dng_properties == o.dng_properties &&
          odg_properties == o.odg_properties &&
          svg_properties == o.svg_properties &&
          esp_properties == o.esp_properties &&
          horizontal_resolution == o.horizontal_resolution &&
          vertical_resolution == o.vertical_resolution &&
          is_cached == o.is_cached
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [height, width, bits_per_pixel, bmp_properties, gif_properties, jpeg_properties, png_properties, tiff_properties, psd_properties, djvu_properties, web_p_properties, jpeg2000_properties, dicom_properties, dng_properties, odg_properties, svg_properties, esp_properties, horizontal_resolution, vertical_resolution, is_cached].hash
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

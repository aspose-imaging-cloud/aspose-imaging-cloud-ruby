#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tiff_options.rb">
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
  # Represents options for TIFF frame.
  class TiffOptions
    # Gets or sets a value indicating whether TIFF image has valid data.
    attr_accessor :is_valid

    # Gets or sets the artist.
    attr_accessor :artist

    # Gets or sets the byte order.
    attr_accessor :byte_order

    # Gets or sets the bits per sample.
    attr_accessor :bits_per_sample

    # Gets or sets the compression.
    attr_accessor :compression

    # Gets or sets the copyright info.
    attr_accessor :copyright

    # Gets or sets the color map.
    attr_accessor :color_map

    # Gets or sets the date and time.
    attr_accessor :date_time

    # Gets or sets the document name.
    attr_accessor :document_name

    # Gets or sets the alpha storage.
    attr_accessor :alpha_storage

    # Gets or sets the fill order.
    attr_accessor :fill_order

    # Gets or sets the half-tone hints.
    attr_accessor :half_tone_hints

    # Gets or sets the image description.
    attr_accessor :image_description

    # Gets or sets the ink names.
    attr_accessor :ink_names

    # Gets or sets the scanner manufacturer.
    attr_accessor :scanner_manufacturer

    # Gets or sets the max sample value.
    attr_accessor :max_sample_value

    # Gets or sets the min sample value.
    attr_accessor :min_sample_value

    # Gets or sets the scanner model.
    attr_accessor :scanner_model

    # Gets or sets the page name.
    attr_accessor :page_name

    # Gets or sets the orientation.
    attr_accessor :orientation

    # Gets or sets the page number.
    attr_accessor :page_number

    # Gets or sets the photometric interpretation.
    attr_accessor :photometric

    # Gets or sets the planar configuration.
    attr_accessor :planar_configuration

    # Gets or sets the resolution unit.
    attr_accessor :resolution_unit

    # Gets or sets the rows per strip.
    attr_accessor :rows_per_strip

    # Gets or sets the sample format.
    attr_accessor :sample_format

    # Gets or sets the samples per pixel.
    attr_accessor :samples_per_pixel

    # Gets or sets the Smax sample value.
    attr_accessor :smax_sample_value

    # Gets or sets the Smin sample value.
    attr_accessor :smin_sample_value

    # Gets or sets the software type.
    attr_accessor :software_type

    # Gets or sets the strip byte counts.
    attr_accessor :strip_byte_counts

    # Gets or sets the strip offsets.
    attr_accessor :strip_offsets

    # Gets or sets the subfile type.
    attr_accessor :sub_file_type

    # Gets or sets the target printer.
    attr_accessor :target_printer

    # Gets or sets the threshholding.
    attr_accessor :threshholding

    # Gets or sets the total pages count.
    attr_accessor :total_pages

    # Gets or sets the X position.
    attr_accessor :xposition

    # Gets or sets the X resolution.
    attr_accessor :xresolution

    # Gets or sets the Y position.
    attr_accessor :yposition

    # Gets or sets the Y resolution.
    attr_accessor :yresolution

    # Gets or sets the FaxT4 Options.
    attr_accessor :fax_t4_options

    # Gets or sets the predictor (a mathematical operator that is applied to the image data before an encoding scheme is applied).
    attr_accessor :predictor

    # Gets or sets the image length.
    attr_accessor :image_length

    # Gets or sets the image width.
    attr_accessor :image_width

    # Gets or sets the valid tag count.
    attr_accessor :valid_tag_count

    # Gets or sets the bits per pixel.
    attr_accessor :bits_per_pixel

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_valid' => :'IsValid',
        :'artist' => :'Artist',
        :'byte_order' => :'ByteOrder',
        :'bits_per_sample' => :'BitsPerSample',
        :'compression' => :'Compression',
        :'copyright' => :'Copyright',
        :'color_map' => :'ColorMap',
        :'date_time' => :'DateTime',
        :'document_name' => :'DocumentName',
        :'alpha_storage' => :'AlphaStorage',
        :'fill_order' => :'FillOrder',
        :'half_tone_hints' => :'HalfToneHints',
        :'image_description' => :'ImageDescription',
        :'ink_names' => :'InkNames',
        :'scanner_manufacturer' => :'ScannerManufacturer',
        :'max_sample_value' => :'MaxSampleValue',
        :'min_sample_value' => :'MinSampleValue',
        :'scanner_model' => :'ScannerModel',
        :'page_name' => :'PageName',
        :'orientation' => :'Orientation',
        :'page_number' => :'PageNumber',
        :'photometric' => :'Photometric',
        :'planar_configuration' => :'PlanarConfiguration',
        :'resolution_unit' => :'ResolutionUnit',
        :'rows_per_strip' => :'RowsPerStrip',
        :'sample_format' => :'SampleFormat',
        :'samples_per_pixel' => :'SamplesPerPixel',
        :'smax_sample_value' => :'SmaxSampleValue',
        :'smin_sample_value' => :'SminSampleValue',
        :'software_type' => :'SoftwareType',
        :'strip_byte_counts' => :'StripByteCounts',
        :'strip_offsets' => :'StripOffsets',
        :'sub_file_type' => :'SubFileType',
        :'target_printer' => :'TargetPrinter',
        :'threshholding' => :'Threshholding',
        :'total_pages' => :'TotalPages',
        :'xposition' => :'Xposition',
        :'xresolution' => :'Xresolution',
        :'yposition' => :'Yposition',
        :'yresolution' => :'Yresolution',
        :'fax_t4_options' => :'FaxT4Options',
        :'predictor' => :'Predictor',
        :'image_length' => :'ImageLength',
        :'image_width' => :'ImageWidth',
        :'valid_tag_count' => :'ValidTagCount',
        :'bits_per_pixel' => :'BitsPerPixel'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_valid' => :'BOOLEAN',
        :'artist' => :'String',
        :'byte_order' => :'String',
        :'bits_per_sample' => :'Array<Integer>',
        :'compression' => :'String',
        :'copyright' => :'String',
        :'color_map' => :'Array<Integer>',
        :'date_time' => :'String',
        :'document_name' => :'String',
        :'alpha_storage' => :'String',
        :'fill_order' => :'String',
        :'half_tone_hints' => :'Array<Integer>',
        :'image_description' => :'String',
        :'ink_names' => :'String',
        :'scanner_manufacturer' => :'String',
        :'max_sample_value' => :'Array<Integer>',
        :'min_sample_value' => :'Array<Integer>',
        :'scanner_model' => :'String',
        :'page_name' => :'String',
        :'orientation' => :'String',
        :'page_number' => :'Array<Integer>',
        :'photometric' => :'String',
        :'planar_configuration' => :'String',
        :'resolution_unit' => :'String',
        :'rows_per_strip' => :'Integer',
        :'sample_format' => :'Array<String>',
        :'samples_per_pixel' => :'Integer',
        :'smax_sample_value' => :'Array<Integer>',
        :'smin_sample_value' => :'Array<Integer>',
        :'software_type' => :'String',
        :'strip_byte_counts' => :'Array<Integer>',
        :'strip_offsets' => :'Array<Integer>',
        :'sub_file_type' => :'String',
        :'target_printer' => :'String',
        :'threshholding' => :'String',
        :'total_pages' => :'Integer',
        :'xposition' => :'Float',
        :'xresolution' => :'Float',
        :'yposition' => :'Float',
        :'yresolution' => :'Float',
        :'fax_t4_options' => :'String',
        :'predictor' => :'String',
        :'image_length' => :'Integer',
        :'image_width' => :'Integer',
        :'valid_tag_count' => :'Integer',
        :'bits_per_pixel' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'IsValid')
        self.is_valid = attributes[:'IsValid']
      end

      if attributes.has_key?(:'Artist')
        self.artist = attributes[:'Artist']
      end

      if attributes.has_key?(:'ByteOrder')
        self.byte_order = attributes[:'ByteOrder']
      end

      if attributes.has_key?(:'BitsPerSample')
        if (value = attributes[:'BitsPerSample']).is_a?(Array)
          self.bits_per_sample = value
        end
      end

      if attributes.has_key?(:'Compression')
        self.compression = attributes[:'Compression']
      end

      if attributes.has_key?(:'Copyright')
        self.copyright = attributes[:'Copyright']
      end

      if attributes.has_key?(:'ColorMap')
        if (value = attributes[:'ColorMap']).is_a?(Array)
          self.color_map = value
        end
      end

      if attributes.has_key?(:'DateTime')
        self.date_time = attributes[:'DateTime']
      end

      if attributes.has_key?(:'DocumentName')
        self.document_name = attributes[:'DocumentName']
      end

      if attributes.has_key?(:'AlphaStorage')
        self.alpha_storage = attributes[:'AlphaStorage']
      end

      if attributes.has_key?(:'FillOrder')
        self.fill_order = attributes[:'FillOrder']
      end

      if attributes.has_key?(:'HalfToneHints')
        if (value = attributes[:'HalfToneHints']).is_a?(Array)
          self.half_tone_hints = value
        end
      end

      if attributes.has_key?(:'ImageDescription')
        self.image_description = attributes[:'ImageDescription']
      end

      if attributes.has_key?(:'InkNames')
        self.ink_names = attributes[:'InkNames']
      end

      if attributes.has_key?(:'ScannerManufacturer')
        self.scanner_manufacturer = attributes[:'ScannerManufacturer']
      end

      if attributes.has_key?(:'MaxSampleValue')
        if (value = attributes[:'MaxSampleValue']).is_a?(Array)
          self.max_sample_value = value
        end
      end

      if attributes.has_key?(:'MinSampleValue')
        if (value = attributes[:'MinSampleValue']).is_a?(Array)
          self.min_sample_value = value
        end
      end

      if attributes.has_key?(:'ScannerModel')
        self.scanner_model = attributes[:'ScannerModel']
      end

      if attributes.has_key?(:'PageName')
        self.page_name = attributes[:'PageName']
      end

      if attributes.has_key?(:'Orientation')
        self.orientation = attributes[:'Orientation']
      end

      if attributes.has_key?(:'PageNumber')
        if (value = attributes[:'PageNumber']).is_a?(Array)
          self.page_number = value
        end
      end

      if attributes.has_key?(:'Photometric')
        self.photometric = attributes[:'Photometric']
      end

      if attributes.has_key?(:'PlanarConfiguration')
        self.planar_configuration = attributes[:'PlanarConfiguration']
      end

      if attributes.has_key?(:'ResolutionUnit')
        self.resolution_unit = attributes[:'ResolutionUnit']
      end

      if attributes.has_key?(:'RowsPerStrip')
        self.rows_per_strip = attributes[:'RowsPerStrip']
      end

      if attributes.has_key?(:'SampleFormat')
        if (value = attributes[:'SampleFormat']).is_a?(Array)
          self.sample_format = value
        end
      end

      if attributes.has_key?(:'SamplesPerPixel')
        self.samples_per_pixel = attributes[:'SamplesPerPixel']
      end

      if attributes.has_key?(:'SmaxSampleValue')
        if (value = attributes[:'SmaxSampleValue']).is_a?(Array)
          self.smax_sample_value = value
        end
      end

      if attributes.has_key?(:'SminSampleValue')
        if (value = attributes[:'SminSampleValue']).is_a?(Array)
          self.smin_sample_value = value
        end
      end

      if attributes.has_key?(:'SoftwareType')
        self.software_type = attributes[:'SoftwareType']
      end

      if attributes.has_key?(:'StripByteCounts')
        if (value = attributes[:'StripByteCounts']).is_a?(Array)
          self.strip_byte_counts = value
        end
      end

      if attributes.has_key?(:'StripOffsets')
        if (value = attributes[:'StripOffsets']).is_a?(Array)
          self.strip_offsets = value
        end
      end

      if attributes.has_key?(:'SubFileType')
        self.sub_file_type = attributes[:'SubFileType']
      end

      if attributes.has_key?(:'TargetPrinter')
        self.target_printer = attributes[:'TargetPrinter']
      end

      if attributes.has_key?(:'Threshholding')
        self.threshholding = attributes[:'Threshholding']
      end

      if attributes.has_key?(:'TotalPages')
        self.total_pages = attributes[:'TotalPages']
      end

      if attributes.has_key?(:'Xposition')
        self.xposition = attributes[:'Xposition']
      end

      if attributes.has_key?(:'Xresolution')
        self.xresolution = attributes[:'Xresolution']
      end

      if attributes.has_key?(:'Yposition')
        self.yposition = attributes[:'Yposition']
      end

      if attributes.has_key?(:'Yresolution')
        self.yresolution = attributes[:'Yresolution']
      end

      if attributes.has_key?(:'FaxT4Options')
        self.fax_t4_options = attributes[:'FaxT4Options']
      end

      if attributes.has_key?(:'Predictor')
        self.predictor = attributes[:'Predictor']
      end

      if attributes.has_key?(:'ImageLength')
        self.image_length = attributes[:'ImageLength']
      end

      if attributes.has_key?(:'ImageWidth')
        self.image_width = attributes[:'ImageWidth']
      end

      if attributes.has_key?(:'ValidTagCount')
        self.valid_tag_count = attributes[:'ValidTagCount']
      end

      if attributes.has_key?(:'BitsPerPixel')
        self.bits_per_pixel = attributes[:'BitsPerPixel']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_valid.nil?
        invalid_properties.push('invalid value for "is_valid", is_valid cannot be nil.')
      end

      if @rows_per_strip.nil?
        invalid_properties.push('invalid value for "rows_per_strip", rows_per_strip cannot be nil.')
      end

      if @samples_per_pixel.nil?
        invalid_properties.push('invalid value for "samples_per_pixel", samples_per_pixel cannot be nil.')
      end

      if @total_pages.nil?
        invalid_properties.push('invalid value for "total_pages", total_pages cannot be nil.')
      end

      if @xposition.nil?
        invalid_properties.push('invalid value for "xposition", xposition cannot be nil.')
      end

      if @xresolution.nil?
        invalid_properties.push('invalid value for "xresolution", xresolution cannot be nil.')
      end

      if @yposition.nil?
        invalid_properties.push('invalid value for "yposition", yposition cannot be nil.')
      end

      if @yresolution.nil?
        invalid_properties.push('invalid value for "yresolution", yresolution cannot be nil.')
      end

      if @image_length.nil?
        invalid_properties.push('invalid value for "image_length", image_length cannot be nil.')
      end

      if @image_width.nil?
        invalid_properties.push('invalid value for "image_width", image_width cannot be nil.')
      end

      if @valid_tag_count.nil?
        invalid_properties.push('invalid value for "valid_tag_count", valid_tag_count cannot be nil.')
      end

      if @bits_per_pixel.nil?
        invalid_properties.push('invalid value for "bits_per_pixel", bits_per_pixel cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_valid.nil?
      return false if @rows_per_strip.nil?
      return false if @samples_per_pixel.nil?
      return false if @total_pages.nil?
      return false if @xposition.nil?
      return false if @xresolution.nil?
      return false if @yposition.nil?
      return false if @yresolution.nil?
      return false if @image_length.nil?
      return false if @image_width.nil?
      return false if @valid_tag_count.nil?
      return false if @bits_per_pixel.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_valid == o.is_valid &&
          artist == o.artist &&
          byte_order == o.byte_order &&
          bits_per_sample == o.bits_per_sample &&
          compression == o.compression &&
          copyright == o.copyright &&
          color_map == o.color_map &&
          date_time == o.date_time &&
          document_name == o.document_name &&
          alpha_storage == o.alpha_storage &&
          fill_order == o.fill_order &&
          half_tone_hints == o.half_tone_hints &&
          image_description == o.image_description &&
          ink_names == o.ink_names &&
          scanner_manufacturer == o.scanner_manufacturer &&
          max_sample_value == o.max_sample_value &&
          min_sample_value == o.min_sample_value &&
          scanner_model == o.scanner_model &&
          page_name == o.page_name &&
          orientation == o.orientation &&
          page_number == o.page_number &&
          photometric == o.photometric &&
          planar_configuration == o.planar_configuration &&
          resolution_unit == o.resolution_unit &&
          rows_per_strip == o.rows_per_strip &&
          sample_format == o.sample_format &&
          samples_per_pixel == o.samples_per_pixel &&
          smax_sample_value == o.smax_sample_value &&
          smin_sample_value == o.smin_sample_value &&
          software_type == o.software_type &&
          strip_byte_counts == o.strip_byte_counts &&
          strip_offsets == o.strip_offsets &&
          sub_file_type == o.sub_file_type &&
          target_printer == o.target_printer &&
          threshholding == o.threshholding &&
          total_pages == o.total_pages &&
          xposition == o.xposition &&
          xresolution == o.xresolution &&
          yposition == o.yposition &&
          yresolution == o.yresolution &&
          fax_t4_options == o.fax_t4_options &&
          predictor == o.predictor &&
          image_length == o.image_length &&
          image_width == o.image_width &&
          valid_tag_count == o.valid_tag_count &&
          bits_per_pixel == o.bits_per_pixel
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_valid, artist, byte_order, bits_per_sample, compression, copyright, color_map, date_time, document_name, alpha_storage, fill_order, half_tone_hints, image_description, ink_names, scanner_manufacturer, max_sample_value, min_sample_value, scanner_model, page_name, orientation, page_number, photometric, planar_configuration, resolution_unit, rows_per_strip, sample_format, samples_per_pixel, smax_sample_value, smin_sample_value, software_type, strip_byte_counts, strip_offsets, sub_file_type, target_printer, threshholding, total_pages, xposition, xresolution, yposition, yresolution, fax_t4_options, predictor, image_length, image_width, valid_tag_count, bits_per_pixel].hash
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

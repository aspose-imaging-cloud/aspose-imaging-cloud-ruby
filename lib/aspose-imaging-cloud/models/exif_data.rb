#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="exif_data.rb">
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
  # Represents common EXIF data section.
  class ExifData
    # Gets or sets the aperture.
    attr_accessor :aperture_value

    # Gets or sets the body serial number.
    attr_accessor :body_serial_number

    # Gets or sets the brightness.
    attr_accessor :brightness_value

    # Gets or sets the CFA pattern.
    attr_accessor :cfa_pattern

    # Gets or sets the camera owner name.
    attr_accessor :camera_owner_name

    # Gets or sets the color space.
    attr_accessor :color_space

    # Gets or sets the components configuration.
    attr_accessor :components_configuration

    # Gets or sets the compressed bits per pixel.
    attr_accessor :compressed_bits_per_pixel

    # Gets or sets the contrast.
    attr_accessor :contrast

    # Gets or sets the value indincating if custom rendering is performed.
    attr_accessor :custom_rendered

    # Gets or sets date and time when image was digitized.
    attr_accessor :date_time_digitized

    # Gets or sets date and time of the original image.
    attr_accessor :date_time_original

    # Gets or sets the device setting description.
    attr_accessor :device_setting_description

    # Gets or sets the digital zoom ratio.
    attr_accessor :digital_zoom_ratio

    # Gets or sets EXIF version.
    attr_accessor :exif_version

    # Gets or sets the exposure bias.
    attr_accessor :exposure_bias_value

    # Gets or sets the exposure index.
    attr_accessor :exposure_index

    # Gets or sets the exposure mode.
    attr_accessor :exposure_mode

    # Gets or sets the exposure program.
    attr_accessor :exposure_program

    # Gets or sets the exposure time.
    attr_accessor :exposure_time

    # Gets or sets the focal number.
    attr_accessor :f_number

    # Gets or sets the file source.
    attr_accessor :file_source

    # Gets or sets the flash.
    attr_accessor :flash

    # Gets or sets the flash energy.
    attr_accessor :flash_energy

    # Gets or sets the Flashpix version.
    attr_accessor :flashpix_version

    # Gets or sets the focal length.
    attr_accessor :focal_length

    # Gets or sets the focal length in 35mm film.
    attr_accessor :focal_length_in35_mm_film

    # Gets or sets the focal plane resolution unit.
    attr_accessor :focal_plane_resolution_unit

    # Gets or sets the focal plane X resolution.
    attr_accessor :focal_plane_x_resolution

    # Gets or sets the focal plane Y resolution.
    attr_accessor :focal_plane_y_resolution

    # Gets or sets the GPS altitude.
    attr_accessor :gps_altitude

    # Gets or sets the GPS altitude reference (if it's above or below sea level).
    attr_accessor :gps_altitude_ref

    # Gets or sets the GPS area information.
    attr_accessor :gps_area_information

    # Gets or sets the GPS DOP (data degree of precision).
    attr_accessor :gpsdop

    # Gets or sets the GPS bearing of the destination.
    attr_accessor :gps_dest_bearing

    # Gets or sets the GPS reference unit for bearing of the destination.
    attr_accessor :gps_dest_bearing_ref

    # Gets or sets the GPS destination distance.
    attr_accessor :gps_dest_distance

    # Gets or sets the GPS reference unit for destination distance.
    attr_accessor :gps_dest_distance_ref

    # Gets or sets the GPS destination latitude.
    attr_accessor :gps_dest_latitude

    # Gets or sets the GPS reference destination latitude (north or south).
    attr_accessor :gps_dest_latitude_ref

    # Gets or sets the GPS destination longtitude.
    attr_accessor :gps_dest_longitude

    # Gets or sets the GPS reference destination longtitude (east or west).
    attr_accessor :gps_dest_longitude_ref

    # Gets or sets the GPS differential.
    attr_accessor :gps_differential

    # Gets or sets the GPS image direction.
    attr_accessor :gps_img_direction

    # Gets or sets the GPS reference image direction.
    attr_accessor :gps_img_direction_ref

    # Gets or sets the GPS date stamp.
    attr_accessor :gps_date_stamp

    # Gets or sets the GPS latitude.
    attr_accessor :gps_latitude

    # Gets or sets the GPS latitude reference (north or south).
    attr_accessor :gps_latitude_ref

    # Gets or sets the GPS longitude.
    attr_accessor :gps_longitude

    # Gets or sets the GPS longitude reference (east or west).
    attr_accessor :gps_longitude_ref

    # Gets or sets the geodetic survey data used by the GPS receiver.
    attr_accessor :gps_map_datum

    # Gets or sets the GPS measure mode.
    attr_accessor :gps_measure_mode

    # Gets or setsthe GPS processing method.
    attr_accessor :gps_processing_method

    # Gets or sets the GPS satellites info.
    attr_accessor :gps_satellites

    # Gets or sets the GPS speed.
    attr_accessor :gps_speed

    # Gets or sets the GPS speed reference unit.
    attr_accessor :gps_speed_ref

    # Gets or sets the GPS status.
    attr_accessor :gps_status

    # Gets or sets the GPS times tamp.
    attr_accessor :gps_timestamp

    # Gets or sets the GPS track.
    attr_accessor :gps_track

    # Gets or sets the GPS track reference.
    attr_accessor :gps_track_ref

    # Gets or sets the GPS version ID.
    attr_accessor :gps_version_id

    # Gets or sets the gain control.
    attr_accessor :gain_control

    # Gets or sets the gamma.
    attr_accessor :gamma

    # Gets or sets the ISO speed.
    attr_accessor :iso_speed

    # Gets or sets the ISO speed latitude YYY value.
    attr_accessor :iso_speed_latitude_yyy

    # Gets or sets the ISO speed latitude ZZZ value.
    attr_accessor :iso_speed_latitude_zzz

    # Gets or sets the photographic sensitivity.
    attr_accessor :photographic_sensitivity

    # Gets or sets the image unique ID.
    attr_accessor :image_unique_id

    # Gets or sets the lens manufacturer.
    attr_accessor :lens_make

    # Gets or sets the lens model.
    attr_accessor :lens_model

    # Gets or sets the lens serial number.
    attr_accessor :lens_serial_number

    # Gets or sets the lens specification.
    attr_accessor :lens_specification

    # Gets or sets the light source.
    attr_accessor :light_source

    # Gets or sets the maker note raw data.
    attr_accessor :maker_note_raw_data

    # Gets or sets the max aperture.
    attr_accessor :max_aperture_value

    # Gets or sets the metering mode.
    attr_accessor :metering_mode

    # Gets or sets the OECF (Opto-Electric Conversion Function).
    attr_accessor :oecf

    # Gets or sets the pixel X dimension.
    attr_accessor :pixel_x_dimension

    # Gets or sets the pixel Y dimension.
    attr_accessor :pixel_y_dimension

    # Gets or sets the recommended exposure index.
    attr_accessor :recommended_exposure_index

    # Gets or sets the related sound file.
    attr_accessor :related_sound_file

    # Gets or sets the saturation.
    attr_accessor :saturation

    # Gets or sets the scene capture type.
    attr_accessor :scene_capture_type

    # Gets or sets the scene type.
    attr_accessor :scene_type

    # Gets or sets the sensing method.
    attr_accessor :sensing_method

    # Gets or sets the sensitivity type.
    attr_accessor :sensitivity_type

    # Gets or sets the sharpness.
    attr_accessor :sharpness

    # Gets or sets the shutter speed.
    attr_accessor :shutter_speed_value

    # Gets or sets the spatial frequency response.
    attr_accessor :spatial_frequency_response

    # Gets or sets the spectral sensitivity.
    attr_accessor :spectral_sensitivity

    # Gets or sets the standard output sensitivity.
    attr_accessor :standard_output_sensitivity

    # Gets or sets the subject area.
    attr_accessor :subject_area

    # Gets or sets the subject distance.
    attr_accessor :subject_distance

    # Gets or sets the subject distance range.
    attr_accessor :subject_distance_range

    # Gets or sets the subject location.
    attr_accessor :subject_location

    # Gets or sets the fractions of seconds for the DateTime tag.
    attr_accessor :subsec_time

    # Gets or sets the fractions of seconds for the DateTimeDigitized tag.
    attr_accessor :subsec_time_digitized

    # Gets or sets the fractions of seconds for the DateTimeOriginal tag.
    attr_accessor :subsec_time_original

    # Gets or sets the user comment.
    attr_accessor :user_comment

    # Gets or sets the white balance.
    attr_accessor :white_balance

    # Gets or sets the white point.
    attr_accessor :white_point

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aperture_value' => :'ApertureValue',
        :'body_serial_number' => :'BodySerialNumber',
        :'brightness_value' => :'BrightnessValue',
        :'cfa_pattern' => :'CFAPattern',
        :'camera_owner_name' => :'CameraOwnerName',
        :'color_space' => :'ColorSpace',
        :'components_configuration' => :'ComponentsConfiguration',
        :'compressed_bits_per_pixel' => :'CompressedBitsPerPixel',
        :'contrast' => :'Contrast',
        :'custom_rendered' => :'CustomRendered',
        :'date_time_digitized' => :'DateTimeDigitized',
        :'date_time_original' => :'DateTimeOriginal',
        :'device_setting_description' => :'DeviceSettingDescription',
        :'digital_zoom_ratio' => :'DigitalZoomRatio',
        :'exif_version' => :'ExifVersion',
        :'exposure_bias_value' => :'ExposureBiasValue',
        :'exposure_index' => :'ExposureIndex',
        :'exposure_mode' => :'ExposureMode',
        :'exposure_program' => :'ExposureProgram',
        :'exposure_time' => :'ExposureTime',
        :'f_number' => :'FNumber',
        :'file_source' => :'FileSource',
        :'flash' => :'Flash',
        :'flash_energy' => :'FlashEnergy',
        :'flashpix_version' => :'FlashpixVersion',
        :'focal_length' => :'FocalLength',
        :'focal_length_in35_mm_film' => :'FocalLengthIn35MmFilm',
        :'focal_plane_resolution_unit' => :'FocalPlaneResolutionUnit',
        :'focal_plane_x_resolution' => :'FocalPlaneXResolution',
        :'focal_plane_y_resolution' => :'FocalPlaneYResolution',
        :'gps_altitude' => :'GPSAltitude',
        :'gps_altitude_ref' => :'GPSAltitudeRef',
        :'gps_area_information' => :'GPSAreaInformation',
        :'gpsdop' => :'GPSDOP',
        :'gps_dest_bearing' => :'GPSDestBearing',
        :'gps_dest_bearing_ref' => :'GPSDestBearingRef',
        :'gps_dest_distance' => :'GPSDestDistance',
        :'gps_dest_distance_ref' => :'GPSDestDistanceRef',
        :'gps_dest_latitude' => :'GPSDestLatitude',
        :'gps_dest_latitude_ref' => :'GPSDestLatitudeRef',
        :'gps_dest_longitude' => :'GPSDestLongitude',
        :'gps_dest_longitude_ref' => :'GPSDestLongitudeRef',
        :'gps_differential' => :'GPSDifferential',
        :'gps_img_direction' => :'GPSImgDirection',
        :'gps_img_direction_ref' => :'GPSImgDirectionRef',
        :'gps_date_stamp' => :'GPSDateStamp',
        :'gps_latitude' => :'GPSLatitude',
        :'gps_latitude_ref' => :'GPSLatitudeRef',
        :'gps_longitude' => :'GPSLongitude',
        :'gps_longitude_ref' => :'GPSLongitudeRef',
        :'gps_map_datum' => :'GPSMapDatum',
        :'gps_measure_mode' => :'GPSMeasureMode',
        :'gps_processing_method' => :'GPSProcessingMethod',
        :'gps_satellites' => :'GPSSatellites',
        :'gps_speed' => :'GPSSpeed',
        :'gps_speed_ref' => :'GPSSpeedRef',
        :'gps_status' => :'GPSStatus',
        :'gps_timestamp' => :'GPSTimestamp',
        :'gps_track' => :'GPSTrack',
        :'gps_track_ref' => :'GPSTrackRef',
        :'gps_version_id' => :'GPSVersionID',
        :'gain_control' => :'GainControl',
        :'gamma' => :'Gamma',
        :'iso_speed' => :'ISOSpeed',
        :'iso_speed_latitude_yyy' => :'ISOSpeedLatitudeYYY',
        :'iso_speed_latitude_zzz' => :'ISOSpeedLatitudeZZZ',
        :'photographic_sensitivity' => :'PhotographicSensitivity',
        :'image_unique_id' => :'ImageUniqueID',
        :'lens_make' => :'LensMake',
        :'lens_model' => :'LensModel',
        :'lens_serial_number' => :'LensSerialNumber',
        :'lens_specification' => :'LensSpecification',
        :'light_source' => :'LightSource',
        :'maker_note_raw_data' => :'MakerNoteRawData',
        :'max_aperture_value' => :'MaxApertureValue',
        :'metering_mode' => :'MeteringMode',
        :'oecf' => :'OECF',
        :'pixel_x_dimension' => :'PixelXDimension',
        :'pixel_y_dimension' => :'PixelYDimension',
        :'recommended_exposure_index' => :'RecommendedExposureIndex',
        :'related_sound_file' => :'RelatedSoundFile',
        :'saturation' => :'Saturation',
        :'scene_capture_type' => :'SceneCaptureType',
        :'scene_type' => :'SceneType',
        :'sensing_method' => :'SensingMethod',
        :'sensitivity_type' => :'SensitivityType',
        :'sharpness' => :'Sharpness',
        :'shutter_speed_value' => :'ShutterSpeedValue',
        :'spatial_frequency_response' => :'SpatialFrequencyResponse',
        :'spectral_sensitivity' => :'SpectralSensitivity',
        :'standard_output_sensitivity' => :'StandardOutputSensitivity',
        :'subject_area' => :'SubjectArea',
        :'subject_distance' => :'SubjectDistance',
        :'subject_distance_range' => :'SubjectDistanceRange',
        :'subject_location' => :'SubjectLocation',
        :'subsec_time' => :'SubsecTime',
        :'subsec_time_digitized' => :'SubsecTimeDigitized',
        :'subsec_time_original' => :'SubsecTimeOriginal',
        :'user_comment' => :'UserComment',
        :'white_balance' => :'WhiteBalance',
        :'white_point' => :'WhitePoint'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'aperture_value' => :'Float',
        :'body_serial_number' => :'String',
        :'brightness_value' => :'Float',
        :'cfa_pattern' => :'String',
        :'camera_owner_name' => :'String',
        :'color_space' => :'String',
        :'components_configuration' => :'String',
        :'compressed_bits_per_pixel' => :'Float',
        :'contrast' => :'String',
        :'custom_rendered' => :'String',
        :'date_time_digitized' => :'String',
        :'date_time_original' => :'String',
        :'device_setting_description' => :'String',
        :'digital_zoom_ratio' => :'Float',
        :'exif_version' => :'String',
        :'exposure_bias_value' => :'Float',
        :'exposure_index' => :'Float',
        :'exposure_mode' => :'String',
        :'exposure_program' => :'String',
        :'exposure_time' => :'Float',
        :'f_number' => :'Float',
        :'file_source' => :'String',
        :'flash' => :'String',
        :'flash_energy' => :'Float',
        :'flashpix_version' => :'String',
        :'focal_length' => :'Float',
        :'focal_length_in35_mm_film' => :'Integer',
        :'focal_plane_resolution_unit' => :'String',
        :'focal_plane_x_resolution' => :'Float',
        :'focal_plane_y_resolution' => :'Float',
        :'gps_altitude' => :'Float',
        :'gps_altitude_ref' => :'String',
        :'gps_area_information' => :'String',
        :'gpsdop' => :'Float',
        :'gps_dest_bearing' => :'Float',
        :'gps_dest_bearing_ref' => :'String',
        :'gps_dest_distance' => :'Float',
        :'gps_dest_distance_ref' => :'String',
        :'gps_dest_latitude' => :'Array<Float>',
        :'gps_dest_latitude_ref' => :'String',
        :'gps_dest_longitude' => :'Array<Float>',
        :'gps_dest_longitude_ref' => :'String',
        :'gps_differential' => :'Integer',
        :'gps_img_direction' => :'Float',
        :'gps_img_direction_ref' => :'String',
        :'gps_date_stamp' => :'String',
        :'gps_latitude' => :'Array<Float>',
        :'gps_latitude_ref' => :'String',
        :'gps_longitude' => :'Array<Float>',
        :'gps_longitude_ref' => :'String',
        :'gps_map_datum' => :'String',
        :'gps_measure_mode' => :'String',
        :'gps_processing_method' => :'String',
        :'gps_satellites' => :'String',
        :'gps_speed' => :'Float',
        :'gps_speed_ref' => :'String',
        :'gps_status' => :'String',
        :'gps_timestamp' => :'Array<Float>',
        :'gps_track' => :'String',
        :'gps_track_ref' => :'String',
        :'gps_version_id' => :'String',
        :'gain_control' => :'String',
        :'gamma' => :'Float',
        :'iso_speed' => :'Integer',
        :'iso_speed_latitude_yyy' => :'Integer',
        :'iso_speed_latitude_zzz' => :'Integer',
        :'photographic_sensitivity' => :'Integer',
        :'image_unique_id' => :'String',
        :'lens_make' => :'String',
        :'lens_model' => :'String',
        :'lens_serial_number' => :'String',
        :'lens_specification' => :'Array<Float>',
        :'light_source' => :'String',
        :'maker_note_raw_data' => :'String',
        :'max_aperture_value' => :'Float',
        :'metering_mode' => :'String',
        :'oecf' => :'String',
        :'pixel_x_dimension' => :'Integer',
        :'pixel_y_dimension' => :'Integer',
        :'recommended_exposure_index' => :'Integer',
        :'related_sound_file' => :'String',
        :'saturation' => :'String',
        :'scene_capture_type' => :'String',
        :'scene_type' => :'Integer',
        :'sensing_method' => :'String',
        :'sensitivity_type' => :'Integer',
        :'sharpness' => :'Integer',
        :'shutter_speed_value' => :'Float',
        :'spatial_frequency_response' => :'String',
        :'spectral_sensitivity' => :'String',
        :'standard_output_sensitivity' => :'Integer',
        :'subject_area' => :'Array<Integer>',
        :'subject_distance' => :'Float',
        :'subject_distance_range' => :'String',
        :'subject_location' => :'Array<Integer>',
        :'subsec_time' => :'String',
        :'subsec_time_digitized' => :'String',
        :'subsec_time_original' => :'String',
        :'user_comment' => :'String',
        :'white_balance' => :'String',
        :'white_point' => :'Array<Float>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'ApertureValue')
        self.aperture_value = attributes[:'ApertureValue']
      end

      if attributes.has_key?(:'BodySerialNumber')
        self.body_serial_number = attributes[:'BodySerialNumber']
      end

      if attributes.has_key?(:'BrightnessValue')
        self.brightness_value = attributes[:'BrightnessValue']
      end

      if attributes.has_key?(:'CFAPattern')
        self.cfa_pattern = attributes[:'CFAPattern']
      end

      if attributes.has_key?(:'CameraOwnerName')
        self.camera_owner_name = attributes[:'CameraOwnerName']
      end

      if attributes.has_key?(:'ColorSpace')
        self.color_space = attributes[:'ColorSpace']
      end

      if attributes.has_key?(:'ComponentsConfiguration')
        self.components_configuration = attributes[:'ComponentsConfiguration']
      end

      if attributes.has_key?(:'CompressedBitsPerPixel')
        self.compressed_bits_per_pixel = attributes[:'CompressedBitsPerPixel']
      end

      if attributes.has_key?(:'Contrast')
        self.contrast = attributes[:'Contrast']
      end

      if attributes.has_key?(:'CustomRendered')
        self.custom_rendered = attributes[:'CustomRendered']
      end

      if attributes.has_key?(:'DateTimeDigitized')
        self.date_time_digitized = attributes[:'DateTimeDigitized']
      end

      if attributes.has_key?(:'DateTimeOriginal')
        self.date_time_original = attributes[:'DateTimeOriginal']
      end

      if attributes.has_key?(:'DeviceSettingDescription')
        self.device_setting_description = attributes[:'DeviceSettingDescription']
      end

      if attributes.has_key?(:'DigitalZoomRatio')
        self.digital_zoom_ratio = attributes[:'DigitalZoomRatio']
      end

      if attributes.has_key?(:'ExifVersion')
        self.exif_version = attributes[:'ExifVersion']
      end

      if attributes.has_key?(:'ExposureBiasValue')
        self.exposure_bias_value = attributes[:'ExposureBiasValue']
      end

      if attributes.has_key?(:'ExposureIndex')
        self.exposure_index = attributes[:'ExposureIndex']
      end

      if attributes.has_key?(:'ExposureMode')
        self.exposure_mode = attributes[:'ExposureMode']
      end

      if attributes.has_key?(:'ExposureProgram')
        self.exposure_program = attributes[:'ExposureProgram']
      end

      if attributes.has_key?(:'ExposureTime')
        self.exposure_time = attributes[:'ExposureTime']
      end

      if attributes.has_key?(:'FNumber')
        self.f_number = attributes[:'FNumber']
      end

      if attributes.has_key?(:'FileSource')
        self.file_source = attributes[:'FileSource']
      end

      if attributes.has_key?(:'Flash')
        self.flash = attributes[:'Flash']
      end

      if attributes.has_key?(:'FlashEnergy')
        self.flash_energy = attributes[:'FlashEnergy']
      end

      if attributes.has_key?(:'FlashpixVersion')
        self.flashpix_version = attributes[:'FlashpixVersion']
      end

      if attributes.has_key?(:'FocalLength')
        self.focal_length = attributes[:'FocalLength']
      end

      if attributes.has_key?(:'FocalLengthIn35MmFilm')
        self.focal_length_in35_mm_film = attributes[:'FocalLengthIn35MmFilm']
      end

      if attributes.has_key?(:'FocalPlaneResolutionUnit')
        self.focal_plane_resolution_unit = attributes[:'FocalPlaneResolutionUnit']
      end

      if attributes.has_key?(:'FocalPlaneXResolution')
        self.focal_plane_x_resolution = attributes[:'FocalPlaneXResolution']
      end

      if attributes.has_key?(:'FocalPlaneYResolution')
        self.focal_plane_y_resolution = attributes[:'FocalPlaneYResolution']
      end

      if attributes.has_key?(:'GPSAltitude')
        self.gps_altitude = attributes[:'GPSAltitude']
      end

      if attributes.has_key?(:'GPSAltitudeRef')
        self.gps_altitude_ref = attributes[:'GPSAltitudeRef']
      end

      if attributes.has_key?(:'GPSAreaInformation')
        self.gps_area_information = attributes[:'GPSAreaInformation']
      end

      if attributes.has_key?(:'GPSDOP')
        self.gpsdop = attributes[:'GPSDOP']
      end

      if attributes.has_key?(:'GPSDestBearing')
        self.gps_dest_bearing = attributes[:'GPSDestBearing']
      end

      if attributes.has_key?(:'GPSDestBearingRef')
        self.gps_dest_bearing_ref = attributes[:'GPSDestBearingRef']
      end

      if attributes.has_key?(:'GPSDestDistance')
        self.gps_dest_distance = attributes[:'GPSDestDistance']
      end

      if attributes.has_key?(:'GPSDestDistanceRef')
        self.gps_dest_distance_ref = attributes[:'GPSDestDistanceRef']
      end

      if attributes.has_key?(:'GPSDestLatitude')
        if (value = attributes[:'GPSDestLatitude']).is_a?(Array)
          self.gps_dest_latitude = value
        end
      end

      if attributes.has_key?(:'GPSDestLatitudeRef')
        self.gps_dest_latitude_ref = attributes[:'GPSDestLatitudeRef']
      end

      if attributes.has_key?(:'GPSDestLongitude')
        if (value = attributes[:'GPSDestLongitude']).is_a?(Array)
          self.gps_dest_longitude = value
        end
      end

      if attributes.has_key?(:'GPSDestLongitudeRef')
        self.gps_dest_longitude_ref = attributes[:'GPSDestLongitudeRef']
      end

      if attributes.has_key?(:'GPSDifferential')
        self.gps_differential = attributes[:'GPSDifferential']
      end

      if attributes.has_key?(:'GPSImgDirection')
        self.gps_img_direction = attributes[:'GPSImgDirection']
      end

      if attributes.has_key?(:'GPSImgDirectionRef')
        self.gps_img_direction_ref = attributes[:'GPSImgDirectionRef']
      end

      if attributes.has_key?(:'GPSDateStamp')
        self.gps_date_stamp = attributes[:'GPSDateStamp']
      end

      if attributes.has_key?(:'GPSLatitude')
        if (value = attributes[:'GPSLatitude']).is_a?(Array)
          self.gps_latitude = value
        end
      end

      if attributes.has_key?(:'GPSLatitudeRef')
        self.gps_latitude_ref = attributes[:'GPSLatitudeRef']
      end

      if attributes.has_key?(:'GPSLongitude')
        if (value = attributes[:'GPSLongitude']).is_a?(Array)
          self.gps_longitude = value
        end
      end

      if attributes.has_key?(:'GPSLongitudeRef')
        self.gps_longitude_ref = attributes[:'GPSLongitudeRef']
      end

      if attributes.has_key?(:'GPSMapDatum')
        self.gps_map_datum = attributes[:'GPSMapDatum']
      end

      if attributes.has_key?(:'GPSMeasureMode')
        self.gps_measure_mode = attributes[:'GPSMeasureMode']
      end

      if attributes.has_key?(:'GPSProcessingMethod')
        self.gps_processing_method = attributes[:'GPSProcessingMethod']
      end

      if attributes.has_key?(:'GPSSatellites')
        self.gps_satellites = attributes[:'GPSSatellites']
      end

      if attributes.has_key?(:'GPSSpeed')
        self.gps_speed = attributes[:'GPSSpeed']
      end

      if attributes.has_key?(:'GPSSpeedRef')
        self.gps_speed_ref = attributes[:'GPSSpeedRef']
      end

      if attributes.has_key?(:'GPSStatus')
        self.gps_status = attributes[:'GPSStatus']
      end

      if attributes.has_key?(:'GPSTimestamp')
        if (value = attributes[:'GPSTimestamp']).is_a?(Array)
          self.gps_timestamp = value
        end
      end

      if attributes.has_key?(:'GPSTrack')
        self.gps_track = attributes[:'GPSTrack']
      end

      if attributes.has_key?(:'GPSTrackRef')
        self.gps_track_ref = attributes[:'GPSTrackRef']
      end

      if attributes.has_key?(:'GPSVersionID')
        self.gps_version_id = attributes[:'GPSVersionID']
      end

      if attributes.has_key?(:'GainControl')
        self.gain_control = attributes[:'GainControl']
      end

      if attributes.has_key?(:'Gamma')
        self.gamma = attributes[:'Gamma']
      end

      if attributes.has_key?(:'ISOSpeed')
        self.iso_speed = attributes[:'ISOSpeed']
      end

      if attributes.has_key?(:'ISOSpeedLatitudeYYY')
        self.iso_speed_latitude_yyy = attributes[:'ISOSpeedLatitudeYYY']
      end

      if attributes.has_key?(:'ISOSpeedLatitudeZZZ')
        self.iso_speed_latitude_zzz = attributes[:'ISOSpeedLatitudeZZZ']
      end

      if attributes.has_key?(:'PhotographicSensitivity')
        self.photographic_sensitivity = attributes[:'PhotographicSensitivity']
      end

      if attributes.has_key?(:'ImageUniqueID')
        self.image_unique_id = attributes[:'ImageUniqueID']
      end

      if attributes.has_key?(:'LensMake')
        self.lens_make = attributes[:'LensMake']
      end

      if attributes.has_key?(:'LensModel')
        self.lens_model = attributes[:'LensModel']
      end

      if attributes.has_key?(:'LensSerialNumber')
        self.lens_serial_number = attributes[:'LensSerialNumber']
      end

      if attributes.has_key?(:'LensSpecification')
        if (value = attributes[:'LensSpecification']).is_a?(Array)
          self.lens_specification = value
        end
      end

      if attributes.has_key?(:'LightSource')
        self.light_source = attributes[:'LightSource']
      end

      if attributes.has_key?(:'MakerNoteRawData')
        self.maker_note_raw_data = attributes[:'MakerNoteRawData']
      end

      if attributes.has_key?(:'MaxApertureValue')
        self.max_aperture_value = attributes[:'MaxApertureValue']
      end

      if attributes.has_key?(:'MeteringMode')
        self.metering_mode = attributes[:'MeteringMode']
      end

      if attributes.has_key?(:'OECF')
        self.oecf = attributes[:'OECF']
      end

      if attributes.has_key?(:'PixelXDimension')
        self.pixel_x_dimension = attributes[:'PixelXDimension']
      end

      if attributes.has_key?(:'PixelYDimension')
        self.pixel_y_dimension = attributes[:'PixelYDimension']
      end

      if attributes.has_key?(:'RecommendedExposureIndex')
        self.recommended_exposure_index = attributes[:'RecommendedExposureIndex']
      end

      if attributes.has_key?(:'RelatedSoundFile')
        self.related_sound_file = attributes[:'RelatedSoundFile']
      end

      if attributes.has_key?(:'Saturation')
        self.saturation = attributes[:'Saturation']
      end

      if attributes.has_key?(:'SceneCaptureType')
        self.scene_capture_type = attributes[:'SceneCaptureType']
      end

      if attributes.has_key?(:'SceneType')
        self.scene_type = attributes[:'SceneType']
      end

      if attributes.has_key?(:'SensingMethod')
        self.sensing_method = attributes[:'SensingMethod']
      end

      if attributes.has_key?(:'SensitivityType')
        self.sensitivity_type = attributes[:'SensitivityType']
      end

      if attributes.has_key?(:'Sharpness')
        self.sharpness = attributes[:'Sharpness']
      end

      if attributes.has_key?(:'ShutterSpeedValue')
        self.shutter_speed_value = attributes[:'ShutterSpeedValue']
      end

      if attributes.has_key?(:'SpatialFrequencyResponse')
        self.spatial_frequency_response = attributes[:'SpatialFrequencyResponse']
      end

      if attributes.has_key?(:'SpectralSensitivity')
        self.spectral_sensitivity = attributes[:'SpectralSensitivity']
      end

      if attributes.has_key?(:'StandardOutputSensitivity')
        self.standard_output_sensitivity = attributes[:'StandardOutputSensitivity']
      end

      if attributes.has_key?(:'SubjectArea')
        if (value = attributes[:'SubjectArea']).is_a?(Array)
          self.subject_area = value
        end
      end

      if attributes.has_key?(:'SubjectDistance')
        self.subject_distance = attributes[:'SubjectDistance']
      end

      if attributes.has_key?(:'SubjectDistanceRange')
        self.subject_distance_range = attributes[:'SubjectDistanceRange']
      end

      if attributes.has_key?(:'SubjectLocation')
        if (value = attributes[:'SubjectLocation']).is_a?(Array)
          self.subject_location = value
        end
      end

      if attributes.has_key?(:'SubsecTime')
        self.subsec_time = attributes[:'SubsecTime']
      end

      if attributes.has_key?(:'SubsecTimeDigitized')
        self.subsec_time_digitized = attributes[:'SubsecTimeDigitized']
      end

      if attributes.has_key?(:'SubsecTimeOriginal')
        self.subsec_time_original = attributes[:'SubsecTimeOriginal']
      end

      if attributes.has_key?(:'UserComment')
        self.user_comment = attributes[:'UserComment']
      end

      if attributes.has_key?(:'WhiteBalance')
        self.white_balance = attributes[:'WhiteBalance']
      end

      if attributes.has_key?(:'WhitePoint')
        if (value = attributes[:'WhitePoint']).is_a?(Array)
          self.white_point = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @aperture_value.nil?
        invalid_properties.push('invalid value for "aperture_value", aperture_value cannot be nil.')
      end

      if @brightness_value.nil?
        invalid_properties.push('invalid value for "brightness_value", brightness_value cannot be nil.')
      end

      if !@cfa_pattern.nil? && @cfa_pattern !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "cfa_pattern", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if !@components_configuration.nil? && @components_configuration !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "components_configuration", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @compressed_bits_per_pixel.nil?
        invalid_properties.push('invalid value for "compressed_bits_per_pixel", compressed_bits_per_pixel cannot be nil.')
      end

      if !@device_setting_description.nil? && @device_setting_description !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "device_setting_description", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @digital_zoom_ratio.nil?
        invalid_properties.push('invalid value for "digital_zoom_ratio", digital_zoom_ratio cannot be nil.')
      end

      if !@exif_version.nil? && @exif_version !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "exif_version", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @exposure_bias_value.nil?
        invalid_properties.push('invalid value for "exposure_bias_value", exposure_bias_value cannot be nil.')
      end

      if @exposure_index.nil?
        invalid_properties.push('invalid value for "exposure_index", exposure_index cannot be nil.')
      end

      if @exposure_time.nil?
        invalid_properties.push('invalid value for "exposure_time", exposure_time cannot be nil.')
      end

      if @f_number.nil?
        invalid_properties.push('invalid value for "f_number", f_number cannot be nil.')
      end

      if @flash_energy.nil?
        invalid_properties.push('invalid value for "flash_energy", flash_energy cannot be nil.')
      end

      if !@flashpix_version.nil? && @flashpix_version !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "flashpix_version", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @focal_length.nil?
        invalid_properties.push('invalid value for "focal_length", focal_length cannot be nil.')
      end

      if @focal_length_in35_mm_film.nil?
        invalid_properties.push('invalid value for "focal_length_in35_mm_film", focal_length_in35_mm_film cannot be nil.')
      end

      if @focal_plane_x_resolution.nil?
        invalid_properties.push('invalid value for "focal_plane_x_resolution", focal_plane_x_resolution cannot be nil.')
      end

      if @focal_plane_y_resolution.nil?
        invalid_properties.push('invalid value for "focal_plane_y_resolution", focal_plane_y_resolution cannot be nil.')
      end

      if @gps_altitude.nil?
        invalid_properties.push('invalid value for "gps_altitude", gps_altitude cannot be nil.')
      end

      if !@gps_area_information.nil? && @gps_area_information !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "gps_area_information", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @gpsdop.nil?
        invalid_properties.push('invalid value for "gpsdop", gpsdop cannot be nil.')
      end

      if @gps_dest_bearing.nil?
        invalid_properties.push('invalid value for "gps_dest_bearing", gps_dest_bearing cannot be nil.')
      end

      if @gps_dest_distance.nil?
        invalid_properties.push('invalid value for "gps_dest_distance", gps_dest_distance cannot be nil.')
      end

      if @gps_differential.nil?
        invalid_properties.push('invalid value for "gps_differential", gps_differential cannot be nil.')
      end

      if @gps_img_direction.nil?
        invalid_properties.push('invalid value for "gps_img_direction", gps_img_direction cannot be nil.')
      end

      if !@gps_processing_method.nil? && @gps_processing_method !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "gps_processing_method", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @gps_speed.nil?
        invalid_properties.push('invalid value for "gps_speed", gps_speed cannot be nil.')
      end

      if !@gps_version_id.nil? && @gps_version_id !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "gps_version_id", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @gamma.nil?
        invalid_properties.push('invalid value for "gamma", gamma cannot be nil.')
      end

      if @iso_speed.nil?
        invalid_properties.push('invalid value for "iso_speed", iso_speed cannot be nil.')
      end

      if @iso_speed_latitude_yyy.nil?
        invalid_properties.push('invalid value for "iso_speed_latitude_yyy", iso_speed_latitude_yyy cannot be nil.')
      end

      if @iso_speed_latitude_zzz.nil?
        invalid_properties.push('invalid value for "iso_speed_latitude_zzz", iso_speed_latitude_zzz cannot be nil.')
      end

      if @photographic_sensitivity.nil?
        invalid_properties.push('invalid value for "photographic_sensitivity", photographic_sensitivity cannot be nil.')
      end

      if !@maker_note_raw_data.nil? && @maker_note_raw_data !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "maker_note_raw_data", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @max_aperture_value.nil?
        invalid_properties.push('invalid value for "max_aperture_value", max_aperture_value cannot be nil.')
      end

      if !@oecf.nil? && @oecf !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "oecf", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @pixel_x_dimension.nil?
        invalid_properties.push('invalid value for "pixel_x_dimension", pixel_x_dimension cannot be nil.')
      end

      if @pixel_y_dimension.nil?
        invalid_properties.push('invalid value for "pixel_y_dimension", pixel_y_dimension cannot be nil.')
      end

      if @recommended_exposure_index.nil?
        invalid_properties.push('invalid value for "recommended_exposure_index", recommended_exposure_index cannot be nil.')
      end

      if @scene_type.nil?
        invalid_properties.push('invalid value for "scene_type", scene_type cannot be nil.')
      end

      if @sensitivity_type.nil?
        invalid_properties.push('invalid value for "sensitivity_type", sensitivity_type cannot be nil.')
      end

      if @sharpness.nil?
        invalid_properties.push('invalid value for "sharpness", sharpness cannot be nil.')
      end

      if @shutter_speed_value.nil?
        invalid_properties.push('invalid value for "shutter_speed_value", shutter_speed_value cannot be nil.')
      end

      if !@spatial_frequency_response.nil? && @spatial_frequency_response !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push('invalid value for "spatial_frequency_response", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.')
      end

      if @standard_output_sensitivity.nil?
        invalid_properties.push('invalid value for "standard_output_sensitivity", standard_output_sensitivity cannot be nil.')
      end

      if @subject_distance.nil?
        invalid_properties.push('invalid value for "subject_distance", subject_distance cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @aperture_value.nil?
      return false if @brightness_value.nil?
      return false if !@cfa_pattern.nil? && @cfa_pattern !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if !@components_configuration.nil? && @components_configuration !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @compressed_bits_per_pixel.nil?
      return false if !@device_setting_description.nil? && @device_setting_description !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @digital_zoom_ratio.nil?
      return false if !@exif_version.nil? && @exif_version !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @exposure_bias_value.nil?
      return false if @exposure_index.nil?
      return false if @exposure_time.nil?
      return false if @f_number.nil?
      return false if @flash_energy.nil?
      return false if !@flashpix_version.nil? && @flashpix_version !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @focal_length.nil?
      return false if @focal_length_in35_mm_film.nil?
      return false if @focal_plane_x_resolution.nil?
      return false if @focal_plane_y_resolution.nil?
      return false if @gps_altitude.nil?
      return false if !@gps_area_information.nil? && @gps_area_information !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @gpsdop.nil?
      return false if @gps_dest_bearing.nil?
      return false if @gps_dest_distance.nil?
      return false if @gps_differential.nil?
      return false if @gps_img_direction.nil?
      return false if !@gps_processing_method.nil? && @gps_processing_method !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @gps_speed.nil?
      return false if !@gps_version_id.nil? && @gps_version_id !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @gamma.nil?
      return false if @iso_speed.nil?
      return false if @iso_speed_latitude_yyy.nil?
      return false if @iso_speed_latitude_zzz.nil?
      return false if @photographic_sensitivity.nil?
      return false if !@maker_note_raw_data.nil? && @maker_note_raw_data !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @max_aperture_value.nil?
      return false if !@oecf.nil? && @oecf !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @pixel_x_dimension.nil?
      return false if @pixel_y_dimension.nil?
      return false if @recommended_exposure_index.nil?
      return false if @scene_type.nil?
      return false if @sensitivity_type.nil?
      return false if @sharpness.nil?
      return false if @shutter_speed_value.nil?
      return false if !@spatial_frequency_response.nil? && @spatial_frequency_response !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @standard_output_sensitivity.nil?
      return false if @subject_distance.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] cfa_pattern Value to be assigned
    def cfa_pattern=(cfa_pattern)
      if !cfa_pattern.nil? && cfa_pattern !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "cfa_pattern", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @cfa_pattern = cfa_pattern
    end

    # Custom attribute writer method with validation
    # @param [Object] components_configuration Value to be assigned
    def components_configuration=(components_configuration)
      if !components_configuration.nil? && components_configuration !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "components_configuration", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @components_configuration = components_configuration
    end

    # Custom attribute writer method with validation
    # @param [Object] device_setting_description Value to be assigned
    def device_setting_description=(device_setting_description)
      if !device_setting_description.nil? && device_setting_description !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "device_setting_description", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @device_setting_description = device_setting_description
    end

    # Custom attribute writer method with validation
    # @param [Object] exif_version Value to be assigned
    def exif_version=(exif_version)
      if !exif_version.nil? && exif_version !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "exif_version", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @exif_version = exif_version
    end

    # Custom attribute writer method with validation
    # @param [Object] flashpix_version Value to be assigned
    def flashpix_version=(flashpix_version)
      if !flashpix_version.nil? && flashpix_version !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "flashpix_version", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @flashpix_version = flashpix_version
    end

    # Custom attribute writer method with validation
    # @param [Object] gps_area_information Value to be assigned
    def gps_area_information=(gps_area_information)
      if !gps_area_information.nil? && gps_area_information !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "gps_area_information", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @gps_area_information = gps_area_information
    end

    # Custom attribute writer method with validation
    # @param [Object] gps_processing_method Value to be assigned
    def gps_processing_method=(gps_processing_method)
      if !gps_processing_method.nil? && gps_processing_method !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "gps_processing_method", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @gps_processing_method = gps_processing_method
    end

    # Custom attribute writer method with validation
    # @param [Object] gps_version_id Value to be assigned
    def gps_version_id=(gps_version_id)
      if !gps_version_id.nil? && gps_version_id !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "gps_version_id", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @gps_version_id = gps_version_id
    end

    # Custom attribute writer method with validation
    # @param [Object] maker_note_raw_data Value to be assigned
    def maker_note_raw_data=(maker_note_raw_data)
      if !maker_note_raw_data.nil? && maker_note_raw_data !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "maker_note_raw_data", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @maker_note_raw_data = maker_note_raw_data
    end

    # Custom attribute writer method with validation
    # @param [Object] oecf Value to be assigned
    def oecf=(oecf)
      if !oecf.nil? && oecf !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "oecf", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @oecf = oecf
    end

    # Custom attribute writer method with validation
    # @param [Object] spatial_frequency_response Value to be assigned
    def spatial_frequency_response=(spatial_frequency_response)
      if !spatial_frequency_response.nil? && spatial_frequency_response !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        fail ArgumentError, 'invalid value for "spatial_frequency_response", must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.'
      end

      @spatial_frequency_response = spatial_frequency_response
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aperture_value == o.aperture_value &&
          body_serial_number == o.body_serial_number &&
          brightness_value == o.brightness_value &&
          cfa_pattern == o.cfa_pattern &&
          camera_owner_name == o.camera_owner_name &&
          color_space == o.color_space &&
          components_configuration == o.components_configuration &&
          compressed_bits_per_pixel == o.compressed_bits_per_pixel &&
          contrast == o.contrast &&
          custom_rendered == o.custom_rendered &&
          date_time_digitized == o.date_time_digitized &&
          date_time_original == o.date_time_original &&
          device_setting_description == o.device_setting_description &&
          digital_zoom_ratio == o.digital_zoom_ratio &&
          exif_version == o.exif_version &&
          exposure_bias_value == o.exposure_bias_value &&
          exposure_index == o.exposure_index &&
          exposure_mode == o.exposure_mode &&
          exposure_program == o.exposure_program &&
          exposure_time == o.exposure_time &&
          f_number == o.f_number &&
          file_source == o.file_source &&
          flash == o.flash &&
          flash_energy == o.flash_energy &&
          flashpix_version == o.flashpix_version &&
          focal_length == o.focal_length &&
          focal_length_in35_mm_film == o.focal_length_in35_mm_film &&
          focal_plane_resolution_unit == o.focal_plane_resolution_unit &&
          focal_plane_x_resolution == o.focal_plane_x_resolution &&
          focal_plane_y_resolution == o.focal_plane_y_resolution &&
          gps_altitude == o.gps_altitude &&
          gps_altitude_ref == o.gps_altitude_ref &&
          gps_area_information == o.gps_area_information &&
          gpsdop == o.gpsdop &&
          gps_dest_bearing == o.gps_dest_bearing &&
          gps_dest_bearing_ref == o.gps_dest_bearing_ref &&
          gps_dest_distance == o.gps_dest_distance &&
          gps_dest_distance_ref == o.gps_dest_distance_ref &&
          gps_dest_latitude == o.gps_dest_latitude &&
          gps_dest_latitude_ref == o.gps_dest_latitude_ref &&
          gps_dest_longitude == o.gps_dest_longitude &&
          gps_dest_longitude_ref == o.gps_dest_longitude_ref &&
          gps_differential == o.gps_differential &&
          gps_img_direction == o.gps_img_direction &&
          gps_img_direction_ref == o.gps_img_direction_ref &&
          gps_date_stamp == o.gps_date_stamp &&
          gps_latitude == o.gps_latitude &&
          gps_latitude_ref == o.gps_latitude_ref &&
          gps_longitude == o.gps_longitude &&
          gps_longitude_ref == o.gps_longitude_ref &&
          gps_map_datum == o.gps_map_datum &&
          gps_measure_mode == o.gps_measure_mode &&
          gps_processing_method == o.gps_processing_method &&
          gps_satellites == o.gps_satellites &&
          gps_speed == o.gps_speed &&
          gps_speed_ref == o.gps_speed_ref &&
          gps_status == o.gps_status &&
          gps_timestamp == o.gps_timestamp &&
          gps_track == o.gps_track &&
          gps_track_ref == o.gps_track_ref &&
          gps_version_id == o.gps_version_id &&
          gain_control == o.gain_control &&
          gamma == o.gamma &&
          iso_speed == o.iso_speed &&
          iso_speed_latitude_yyy == o.iso_speed_latitude_yyy &&
          iso_speed_latitude_zzz == o.iso_speed_latitude_zzz &&
          photographic_sensitivity == o.photographic_sensitivity &&
          image_unique_id == o.image_unique_id &&
          lens_make == o.lens_make &&
          lens_model == o.lens_model &&
          lens_serial_number == o.lens_serial_number &&
          lens_specification == o.lens_specification &&
          light_source == o.light_source &&
          maker_note_raw_data == o.maker_note_raw_data &&
          max_aperture_value == o.max_aperture_value &&
          metering_mode == o.metering_mode &&
          oecf == o.oecf &&
          pixel_x_dimension == o.pixel_x_dimension &&
          pixel_y_dimension == o.pixel_y_dimension &&
          recommended_exposure_index == o.recommended_exposure_index &&
          related_sound_file == o.related_sound_file &&
          saturation == o.saturation &&
          scene_capture_type == o.scene_capture_type &&
          scene_type == o.scene_type &&
          sensing_method == o.sensing_method &&
          sensitivity_type == o.sensitivity_type &&
          sharpness == o.sharpness &&
          shutter_speed_value == o.shutter_speed_value &&
          spatial_frequency_response == o.spatial_frequency_response &&
          spectral_sensitivity == o.spectral_sensitivity &&
          standard_output_sensitivity == o.standard_output_sensitivity &&
          subject_area == o.subject_area &&
          subject_distance == o.subject_distance &&
          subject_distance_range == o.subject_distance_range &&
          subject_location == o.subject_location &&
          subsec_time == o.subsec_time &&
          subsec_time_digitized == o.subsec_time_digitized &&
          subsec_time_original == o.subsec_time_original &&
          user_comment == o.user_comment &&
          white_balance == o.white_balance &&
          white_point == o.white_point
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [aperture_value, body_serial_number, brightness_value, cfa_pattern, camera_owner_name, color_space, components_configuration, compressed_bits_per_pixel, contrast, custom_rendered, date_time_digitized, date_time_original, device_setting_description, digital_zoom_ratio, exif_version, exposure_bias_value, exposure_index, exposure_mode, exposure_program, exposure_time, f_number, file_source, flash, flash_energy, flashpix_version, focal_length, focal_length_in35_mm_film, focal_plane_resolution_unit, focal_plane_x_resolution, focal_plane_y_resolution, gps_altitude, gps_altitude_ref, gps_area_information, gpsdop, gps_dest_bearing, gps_dest_bearing_ref, gps_dest_distance, gps_dest_distance_ref, gps_dest_latitude, gps_dest_latitude_ref, gps_dest_longitude, gps_dest_longitude_ref, gps_differential, gps_img_direction, gps_img_direction_ref, gps_date_stamp, gps_latitude, gps_latitude_ref, gps_longitude, gps_longitude_ref, gps_map_datum, gps_measure_mode, gps_processing_method, gps_satellites, gps_speed, gps_speed_ref, gps_status, gps_timestamp, gps_track, gps_track_ref, gps_version_id, gain_control, gamma, iso_speed, iso_speed_latitude_yyy, iso_speed_latitude_zzz, photographic_sensitivity, image_unique_id, lens_make, lens_model, lens_serial_number, lens_specification, light_source, maker_note_raw_data, max_aperture_value, metering_mode, oecf, pixel_x_dimension, pixel_y_dimension, recommended_exposure_index, related_sound_file, saturation, scene_capture_type, scene_type, sensing_method, sensitivity_type, sharpness, shutter_speed_value, spatial_frequency_response, spectral_sensitivity, standard_output_sensitivity, subject_area, subject_distance, subject_distance_range, subject_location, subsec_time, subsec_time_digitized, subsec_time_original, user_comment, white_balance, white_point].hash
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

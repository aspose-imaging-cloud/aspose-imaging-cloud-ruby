# aspose-imaging-cloud

AsposeImagingCloud - the Ruby gem for the Aspose.Imaging Cloud API Reference

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 3.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build aspose-imaging-cloud.gemspec
```

Then either install the gem locally:

```shell
gem install ./aspose-imaging-cloud.gem
```
(for development, run `gem install --dev ./aspose-imaging-cloud.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'aspose-imaging-cloud', '~> 20.9'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'aspose-imaging-cloud', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'aspose-imaging-cloud'

# Setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | Search context identifier.

image_id = 'image_id_example' # String | Image identifier.

opts = { 
  image_data: File.new('/path/to/file.txt'), # File | Input image
  folder: 'folder_example', # String | Folder.
  storage: 'storage_example' # String | Storage
}

begin
  #Add image and images features to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
  api_instance.add_search_image(search_context_id, image_id, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->add_search_image: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AsposeImagingCloud::ImagingApi* | [**add_search_image**](docs/ImagingApi.md#add_search_image) | **POST** /imaging/ai/imageSearch/{searchContextId}/image | Add image and images features to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**append_tiff**](docs/ImagingApi.md#append_tiff) | **POST** /imaging/tiff/{name}/appendTiff | Appends existing TIFF image to another existing TIFF image (i.e. merges TIFF images).
*AsposeImagingCloud::ImagingApi* | [**compare_images**](docs/ImagingApi.md#compare_images) | **POST** /imaging/ai/imageSearch/{searchContextId}/compare | Compare two images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**convert_tiff_to_fax**](docs/ImagingApi.md#convert_tiff_to_fax) | **GET** /imaging/tiff/{name}/toFax | Update parameters of existing TIFF image accordingly to fax parameters.
*AsposeImagingCloud::ImagingApi* | [**copy_file**](docs/ImagingApi.md#copy_file) | **PUT** /imaging/storage/file/copy/{srcPath} | Copy file
*AsposeImagingCloud::ImagingApi* | [**copy_folder**](docs/ImagingApi.md#copy_folder) | **PUT** /imaging/storage/folder/copy/{srcPath} | Copy folder
*AsposeImagingCloud::ImagingApi* | [**create_cropped_image**](docs/ImagingApi.md#create_cropped_image) | **POST** /imaging/crop | Crop an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_deskewed_image**](docs/ImagingApi.md#create_deskewed_image) | **POST** /imaging/deskew | Deskew an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_fax_tiff**](docs/ImagingApi.md#create_fax_tiff) | **POST** /imaging/tiff/toFax | Update parameters of TIFF image accordingly to fax parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_folder**](docs/ImagingApi.md#create_folder) | **PUT** /imaging/storage/folder/{path} | Create the folder
*AsposeImagingCloud::ImagingApi* | [**create_grayscaled_image**](docs/ImagingApi.md#create_grayscaled_image) | **POST** /imaging/grayscale | Grayscales an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_image_features**](docs/ImagingApi.md#create_image_features) | **POST** /imaging/ai/imageSearch/{searchContextId}/features | Extract images features and add them to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_image_frame**](docs/ImagingApi.md#create_image_frame) | **POST** /imaging/frames/{frameId} | Get separate frame from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_image_frame_range**](docs/ImagingApi.md#create_image_frame_range) | **POST** /imaging/frames/range | Get frames range from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_image_search**](docs/ImagingApi.md#create_image_search) | **POST** /imaging/ai/imageSearch/create | Create new search context.
*AsposeImagingCloud::ImagingApi* | [**create_image_tag**](docs/ImagingApi.md#create_image_tag) | **POST** /imaging/ai/imageSearch/{searchContextId}/addTag | Add tag and reference image to search context. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_bmp**](docs/ImagingApi.md#create_modified_bmp) | **POST** /imaging/bmp | Update parameters of BMP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_emf**](docs/ImagingApi.md#create_modified_emf) | **POST** /imaging/emf | Process existing EMF imaging using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_gif**](docs/ImagingApi.md#create_modified_gif) | **POST** /imaging/gif | Update parameters of GIF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_jpeg**](docs/ImagingApi.md#create_modified_jpeg) | **POST** /imaging/jpg | Update parameters of JPEG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_jpeg2000**](docs/ImagingApi.md#create_modified_jpeg2000) | **POST** /imaging/jpg2000 | Update parameters of JPEG2000 image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_psd**](docs/ImagingApi.md#create_modified_psd) | **POST** /imaging/psd | Update parameters of PSD image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_svg**](docs/ImagingApi.md#create_modified_svg) | **POST** /imaging/svg | Update parameters of SVG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_tiff**](docs/ImagingApi.md#create_modified_tiff) | **POST** /imaging/tiff | Update parameters of TIFF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_web_p**](docs/ImagingApi.md#create_modified_web_p) | **POST** /imaging/webp | Update parameters of WEBP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_modified_wmf**](docs/ImagingApi.md#create_modified_wmf) | **POST** /imaging/wmf | Process existing WMF image using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_object_bounds**](docs/ImagingApi.md#create_object_bounds) | **POST** /imaging/ai/objectdetection/bounds | Detects objects bounds. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_resized_image**](docs/ImagingApi.md#create_resized_image) | **POST** /imaging/resize | Resize an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_rotate_flipped_image**](docs/ImagingApi.md#create_rotate_flipped_image) | **POST** /imaging/rotateflip | Rotate and/or flip an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_updated_image**](docs/ImagingApi.md#create_updated_image) | **POST** /imaging/updateImage | Perform scaling, cropping and flipping of an image in a single request. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**create_visual_object_bounds**](docs/ImagingApi.md#create_visual_object_bounds) | **POST** /imaging/ai/objectdetection/visualbounds | Detects objects bounds and draw them on the original image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream
*AsposeImagingCloud::ImagingApi* | [**create_web_site_image_features**](docs/ImagingApi.md#create_web_site_image_features) | **POST** /imaging/ai/imageSearch/{searchContextId}/features/web | Extract images features from web page and add them to search context
*AsposeImagingCloud::ImagingApi* | [**crop_image**](docs/ImagingApi.md#crop_image) | **GET** /imaging/{name}/crop | Crop an existing image.
*AsposeImagingCloud::ImagingApi* | [**delete_file**](docs/ImagingApi.md#delete_file) | **DELETE** /imaging/storage/file/{path} | Delete file
*AsposeImagingCloud::ImagingApi* | [**delete_folder**](docs/ImagingApi.md#delete_folder) | **DELETE** /imaging/storage/folder/{path} | Delete folder
*AsposeImagingCloud::ImagingApi* | [**delete_image_features**](docs/ImagingApi.md#delete_image_features) | **DELETE** /imaging/ai/imageSearch/{searchContextId}/features | Deletes image features from search context.
*AsposeImagingCloud::ImagingApi* | [**delete_image_search**](docs/ImagingApi.md#delete_image_search) | **DELETE** /imaging/ai/imageSearch/{searchContextId} | Deletes the search context.
*AsposeImagingCloud::ImagingApi* | [**delete_search_image**](docs/ImagingApi.md#delete_search_image) | **DELETE** /imaging/ai/imageSearch/{searchContextId}/image | Delete image and images features from search context
*AsposeImagingCloud::ImagingApi* | [**deskew_image**](docs/ImagingApi.md#deskew_image) | **GET** /imaging/{name}/deskew | Deskew an existing image.
*AsposeImagingCloud::ImagingApi* | [**download_file**](docs/ImagingApi.md#download_file) | **GET** /imaging/storage/file/{path} | Download file
*AsposeImagingCloud::ImagingApi* | [**extract_image_features**](docs/ImagingApi.md#extract_image_features) | **GET** /imaging/ai/imageSearch/{searchContextId}/image2features | Extract features from image without adding to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**extract_image_frame_properties**](docs/ImagingApi.md#extract_image_frame_properties) | **POST** /imaging/frames/{frameId}/properties | Get separate frame properties of existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**extract_image_properties**](docs/ImagingApi.md#extract_image_properties) | **POST** /imaging/properties | Get properties of an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**filter_effect_image**](docs/ImagingApi.md#filter_effect_image) | **PUT** /imaging/{name}/filterEffect | Apply filtering effects to an existing image.
*AsposeImagingCloud::ImagingApi* | [**find_image_duplicates**](docs/ImagingApi.md#find_image_duplicates) | **GET** /imaging/ai/imageSearch/{searchContextId}/findDuplicates | Find images duplicates.
*AsposeImagingCloud::ImagingApi* | [**find_images_by_tags**](docs/ImagingApi.md#find_images_by_tags) | **POST** /imaging/ai/imageSearch/{searchContextId}/findByTags | Find images by tags. Tags JSON string is passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**find_similar_images**](docs/ImagingApi.md#find_similar_images) | **GET** /imaging/ai/imageSearch/{searchContextId}/findSimilar | Find similar images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**get_disc_usage**](docs/ImagingApi.md#get_disc_usage) | **GET** /imaging/storage/disc | Get disc usage
*AsposeImagingCloud::ImagingApi* | [**get_file_versions**](docs/ImagingApi.md#get_file_versions) | **GET** /imaging/storage/version/{path} | Get file versions
*AsposeImagingCloud::ImagingApi* | [**get_files_list**](docs/ImagingApi.md#get_files_list) | **GET** /imaging/storage/folder/{path} | Get all files and folders within a folder
*AsposeImagingCloud::ImagingApi* | [**get_image_features**](docs/ImagingApi.md#get_image_features) | **GET** /imaging/ai/imageSearch/{searchContextId}/features | Gets image features from search context.
*AsposeImagingCloud::ImagingApi* | [**get_image_frame**](docs/ImagingApi.md#get_image_frame) | **GET** /imaging/{name}/frames/{frameId} | Get separate frame from existing image.
*AsposeImagingCloud::ImagingApi* | [**get_image_frame_properties**](docs/ImagingApi.md#get_image_frame_properties) | **GET** /imaging/{name}/frames/{frameId}/properties | Get separate frame properties of existing image.
*AsposeImagingCloud::ImagingApi* | [**get_image_frame_range**](docs/ImagingApi.md#get_image_frame_range) | **GET** /imaging/{name}/frames/range | Get frames range from existing image.
*AsposeImagingCloud::ImagingApi* | [**get_image_properties**](docs/ImagingApi.md#get_image_properties) | **GET** /imaging/{name}/properties | Get properties of an image.
*AsposeImagingCloud::ImagingApi* | [**get_image_search_status**](docs/ImagingApi.md#get_image_search_status) | **GET** /imaging/ai/imageSearch/{searchContextId}/status | Gets the search context status.
*AsposeImagingCloud::ImagingApi* | [**get_object_bounds**](docs/ImagingApi.md#get_object_bounds) | **GET** /imaging/ai/objectdetection/{name}/bounds | Detects objects' bounds
*AsposeImagingCloud::ImagingApi* | [**get_search_image**](docs/ImagingApi.md#get_search_image) | **GET** /imaging/ai/imageSearch/{searchContextId}/image | Get image from search context
*AsposeImagingCloud::ImagingApi* | [**get_visual_object_bounds**](docs/ImagingApi.md#get_visual_object_bounds) | **GET** /imaging/ai/objectdetection/{name}/visualbounds | Detects objects bounds and draw them on the original image
*AsposeImagingCloud::ImagingApi* | [**grayscale_image**](docs/ImagingApi.md#grayscale_image) | **GET** /imaging/{name}/grayscale | Grayscale an existing image.
*AsposeImagingCloud::ImagingApi* | [**modify_bmp**](docs/ImagingApi.md#modify_bmp) | **GET** /imaging/{name}/bmp | Update parameters of existing BMP image.
*AsposeImagingCloud::ImagingApi* | [**modify_emf**](docs/ImagingApi.md#modify_emf) | **GET** /imaging/{name}/emf | Process existing EMF imaging using given parameters.
*AsposeImagingCloud::ImagingApi* | [**modify_gif**](docs/ImagingApi.md#modify_gif) | **GET** /imaging/{name}/gif | Update parameters of existing GIF image.
*AsposeImagingCloud::ImagingApi* | [**modify_jpeg**](docs/ImagingApi.md#modify_jpeg) | **GET** /imaging/{name}/jpg | Update parameters of existing JPEG image.
*AsposeImagingCloud::ImagingApi* | [**modify_jpeg2000**](docs/ImagingApi.md#modify_jpeg2000) | **GET** /imaging/{name}/jpg2000 | Update parameters of existing JPEG2000 image.
*AsposeImagingCloud::ImagingApi* | [**modify_psd**](docs/ImagingApi.md#modify_psd) | **GET** /imaging/{name}/psd | Update parameters of existing PSD image.
*AsposeImagingCloud::ImagingApi* | [**modify_svg**](docs/ImagingApi.md#modify_svg) | **GET** /imaging/{name}/svg | Update parameters of existing SVG image.
*AsposeImagingCloud::ImagingApi* | [**modify_tiff**](docs/ImagingApi.md#modify_tiff) | **GET** /imaging/{name}/tiff | Update parameters of existing TIFF image.
*AsposeImagingCloud::ImagingApi* | [**modify_web_p**](docs/ImagingApi.md#modify_web_p) | **GET** /imaging/{name}/webp | Update parameters of existing WEBP image.
*AsposeImagingCloud::ImagingApi* | [**modify_wmf**](docs/ImagingApi.md#modify_wmf) | **GET** /imaging/{name}/wmf | Process existing WMF image using given parameters.
*AsposeImagingCloud::ImagingApi* | [**move_file**](docs/ImagingApi.md#move_file) | **PUT** /imaging/storage/file/move/{srcPath} | Move file
*AsposeImagingCloud::ImagingApi* | [**move_folder**](docs/ImagingApi.md#move_folder) | **PUT** /imaging/storage/folder/move/{srcPath} | Move folder
*AsposeImagingCloud::ImagingApi* | [**object_exists**](docs/ImagingApi.md#object_exists) | **GET** /imaging/storage/exist/{path} | Check if file or folder exists
*AsposeImagingCloud::ImagingApi* | [**resize_image**](docs/ImagingApi.md#resize_image) | **GET** /imaging/{name}/resize | Resize an existing image.
*AsposeImagingCloud::ImagingApi* | [**rotate_flip_image**](docs/ImagingApi.md#rotate_flip_image) | **GET** /imaging/{name}/rotateflip | Rotate and/or flip an existing image.
*AsposeImagingCloud::ImagingApi* | [**storage_exists**](docs/ImagingApi.md#storage_exists) | **GET** /imaging/storage/{storageName}/exist | Check if storage exists
*AsposeImagingCloud::ImagingApi* | [**update_image**](docs/ImagingApi.md#update_image) | **GET** /imaging/{name}/updateImage | Perform scaling, cropping and flipping of an existing image in a single request.
*AsposeImagingCloud::ImagingApi* | [**update_image_features**](docs/ImagingApi.md#update_image_features) | **PUT** /imaging/ai/imageSearch/{searchContextId}/features | Update images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**update_search_image**](docs/ImagingApi.md#update_search_image) | **PUT** /imaging/ai/imageSearch/{searchContextId}/image | Update image and images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
*AsposeImagingCloud::ImagingApi* | [**upload_file**](docs/ImagingApi.md#upload_file) | **PUT** /imaging/storage/file/{path} | Upload file


## Documentation for Models

 - [AsposeImagingCloud::BmpProperties](docs/BmpProperties.md)
 - [AsposeImagingCloud::DetectedObject](docs/DetectedObject.md)
 - [AsposeImagingCloud::DetectedObjectList](docs/DetectedObjectList.md)
 - [AsposeImagingCloud::DicomProperties](docs/DicomProperties.md)
 - [AsposeImagingCloud::DiscUsage](docs/DiscUsage.md)
 - [AsposeImagingCloud::DjvuProperties](docs/DjvuProperties.md)
 - [AsposeImagingCloud::DngProperties](docs/DngProperties.md)
 - [AsposeImagingCloud::Error](docs/Error.md)
 - [AsposeImagingCloud::ErrorDetails](docs/ErrorDetails.md)
 - [AsposeImagingCloud::ExifData](docs/ExifData.md)
 - [AsposeImagingCloud::FileVersions](docs/FileVersions.md)
 - [AsposeImagingCloud::FilesList](docs/FilesList.md)
 - [AsposeImagingCloud::FilesUploadResult](docs/FilesUploadResult.md)
 - [AsposeImagingCloud::FilterPropertiesBase](docs/FilterPropertiesBase.md)
 - [AsposeImagingCloud::GifProperties](docs/GifProperties.md)
 - [AsposeImagingCloud::ImageDuplicates](docs/ImageDuplicates.md)
 - [AsposeImagingCloud::ImageDuplicatesSet](docs/ImageDuplicatesSet.md)
 - [AsposeImagingCloud::ImageFeatures](docs/ImageFeatures.md)
 - [AsposeImagingCloud::ImagingResponse](docs/ImagingResponse.md)
 - [AsposeImagingCloud::JfifData](docs/JfifData.md)
 - [AsposeImagingCloud::Jpeg2000Properties](docs/Jpeg2000Properties.md)
 - [AsposeImagingCloud::JpegProperties](docs/JpegProperties.md)
 - [AsposeImagingCloud::ObjectExist](docs/ObjectExist.md)
 - [AsposeImagingCloud::OdgMetadata](docs/OdgMetadata.md)
 - [AsposeImagingCloud::OdgPage](docs/OdgPage.md)
 - [AsposeImagingCloud::OdgProperties](docs/OdgProperties.md)
 - [AsposeImagingCloud::PngProperties](docs/PngProperties.md)
 - [AsposeImagingCloud::PsdProperties](docs/PsdProperties.md)
 - [AsposeImagingCloud::Rectangle](docs/Rectangle.md)
 - [AsposeImagingCloud::SearchContextStatus](docs/SearchContextStatus.md)
 - [AsposeImagingCloud::SearchResult](docs/SearchResult.md)
 - [AsposeImagingCloud::SearchResultsSet](docs/SearchResultsSet.md)
 - [AsposeImagingCloud::StorageExist](docs/StorageExist.md)
 - [AsposeImagingCloud::StorageFile](docs/StorageFile.md)
 - [AsposeImagingCloud::SvgProperties](docs/SvgProperties.md)
 - [AsposeImagingCloud::TiffFrame](docs/TiffFrame.md)
 - [AsposeImagingCloud::TiffOptions](docs/TiffOptions.md)
 - [AsposeImagingCloud::TiffProperties](docs/TiffProperties.md)
 - [AsposeImagingCloud::WebPProperties](docs/WebPProperties.md)
 - [AsposeImagingCloud::BigRectangularFilterProperties](docs/BigRectangularFilterProperties.md)
 - [AsposeImagingCloud::BilateralSmoothingFilterProperties](docs/BilateralSmoothingFilterProperties.md)
 - [AsposeImagingCloud::ConvolutionFilterProperties](docs/ConvolutionFilterProperties.md)
 - [AsposeImagingCloud::DeconvolutionFilterProperties](docs/DeconvolutionFilterProperties.md)
 - [AsposeImagingCloud::FileVersion](docs/FileVersion.md)
 - [AsposeImagingCloud::JpegExifData](docs/JpegExifData.md)
 - [AsposeImagingCloud::MedianFilterProperties](docs/MedianFilterProperties.md)
 - [AsposeImagingCloud::SmallRectangularFilterProperties](docs/SmallRectangularFilterProperties.md)
 - [AsposeImagingCloud::GaussWienerFilterProperties](docs/GaussWienerFilterProperties.md)
 - [AsposeImagingCloud::GaussianBlurFilterProperties](docs/GaussianBlurFilterProperties.md)
 - [AsposeImagingCloud::MotionWienerFilterProperties](docs/MotionWienerFilterProperties.md)
 - [AsposeImagingCloud::SharpenFilterProperties](docs/SharpenFilterProperties.md)


## Documentation for Authorization


### JWT

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: N/A


# AsposeImagingCloud::ImagingApi

All URIs are relative to *https://api.aspose.cloud/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_search_image**](ImagingApi.md#add_search_image) | **POST** /imaging/ai/imageSearch/{searchContextId}/image | Add image and images features to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
[**append_tiff**](ImagingApi.md#append_tiff) | **POST** /imaging/tiff/{name}/appendTiff | Appends existing TIFF image to another existing TIFF image (i.e. merges TIFF images).
[**compare_images**](ImagingApi.md#compare_images) | **POST** /imaging/ai/imageSearch/{searchContextId}/compare | Compare two images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
[**convert_tiff_to_fax**](ImagingApi.md#convert_tiff_to_fax) | **GET** /imaging/tiff/{name}/toFax | Update parameters of existing TIFF image accordingly to fax parameters.
[**copy_file**](ImagingApi.md#copy_file) | **PUT** /imaging/storage/file/copy/{srcPath} | Copy file
[**copy_folder**](ImagingApi.md#copy_folder) | **PUT** /imaging/storage/folder/copy/{srcPath} | Copy folder
[**create_cropped_image**](ImagingApi.md#create_cropped_image) | **POST** /imaging/crop | Crop an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_deskewed_image**](ImagingApi.md#create_deskewed_image) | **POST** /imaging/deskew | Deskew an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_fax_tiff**](ImagingApi.md#create_fax_tiff) | **POST** /imaging/tiff/toFax | Update parameters of TIFF image accordingly to fax parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_folder**](ImagingApi.md#create_folder) | **PUT** /imaging/storage/folder/{path} | Create the folder
[**create_grayscaled_image**](ImagingApi.md#create_grayscaled_image) | **POST** /imaging/grayscale | Grayscales an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_image_features**](ImagingApi.md#create_image_features) | **POST** /imaging/ai/imageSearch/{searchContextId}/features | Extract images features and add them to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_image_frame**](ImagingApi.md#create_image_frame) | **POST** /imaging/frames/{frameId} | Get separate frame from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_image_frame_range**](ImagingApi.md#create_image_frame_range) | **POST** /imaging/frames/range | Get frames range from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_image_search**](ImagingApi.md#create_image_search) | **POST** /imaging/ai/imageSearch/create | Create new search context.
[**create_image_tag**](ImagingApi.md#create_image_tag) | **POST** /imaging/ai/imageSearch/{searchContextId}/addTag | Add tag and reference image to search context. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_bmp**](ImagingApi.md#create_modified_bmp) | **POST** /imaging/bmp | Update parameters of BMP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_emf**](ImagingApi.md#create_modified_emf) | **POST** /imaging/emf | Process existing EMF imaging using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_gif**](ImagingApi.md#create_modified_gif) | **POST** /imaging/gif | Update parameters of GIF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_jpeg**](ImagingApi.md#create_modified_jpeg) | **POST** /imaging/jpg | Update parameters of JPEG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_jpeg2000**](ImagingApi.md#create_modified_jpeg2000) | **POST** /imaging/jpg2000 | Update parameters of JPEG2000 image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_psd**](ImagingApi.md#create_modified_psd) | **POST** /imaging/psd | Update parameters of PSD image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_svg**](ImagingApi.md#create_modified_svg) | **POST** /imaging/svg | Update parameters of SVG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_tiff**](ImagingApi.md#create_modified_tiff) | **POST** /imaging/tiff | Update parameters of TIFF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_web_p**](ImagingApi.md#create_modified_web_p) | **POST** /imaging/webp | Update parameters of WEBP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_modified_wmf**](ImagingApi.md#create_modified_wmf) | **POST** /imaging/wmf | Process existing WMF image using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_object_bounds**](ImagingApi.md#create_object_bounds) | **POST** /imaging/ai/objectdetection/bounds | Detects objects bounds. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_resized_image**](ImagingApi.md#create_resized_image) | **POST** /imaging/resize | Resize an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_rotate_flipped_image**](ImagingApi.md#create_rotate_flipped_image) | **POST** /imaging/rotateflip | Rotate and/or flip an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_saved_image_as**](ImagingApi.md#create_saved_image_as) | **POST** /imaging/saveAs | Export existing image to another format. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.             
[**create_updated_image**](ImagingApi.md#create_updated_image) | **POST** /imaging/updateImage | Perform scaling, cropping and flipping of an image in a single request. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**create_visual_object_bounds**](ImagingApi.md#create_visual_object_bounds) | **POST** /imaging/ai/objectdetection/visualbounds | Detects objects bounds and draw them on the original image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream
[**create_web_site_image_features**](ImagingApi.md#create_web_site_image_features) | **POST** /imaging/ai/imageSearch/{searchContextId}/features/web | Extract images features from web page and add them to search context
[**crop_image**](ImagingApi.md#crop_image) | **GET** /imaging/{name}/crop | Crop an existing image.
[**delete_file**](ImagingApi.md#delete_file) | **DELETE** /imaging/storage/file/{path} | Delete file
[**delete_folder**](ImagingApi.md#delete_folder) | **DELETE** /imaging/storage/folder/{path} | Delete folder
[**delete_image_features**](ImagingApi.md#delete_image_features) | **DELETE** /imaging/ai/imageSearch/{searchContextId}/features | Deletes image features from search context.
[**delete_image_search**](ImagingApi.md#delete_image_search) | **DELETE** /imaging/ai/imageSearch/{searchContextId} | Deletes the search context.
[**delete_search_image**](ImagingApi.md#delete_search_image) | **DELETE** /imaging/ai/imageSearch/{searchContextId}/image | Delete image and images features from search context
[**deskew_image**](ImagingApi.md#deskew_image) | **GET** /imaging/{name}/deskew | Deskew an existing image.
[**download_file**](ImagingApi.md#download_file) | **GET** /imaging/storage/file/{path} | Download file
[**extract_image_features**](ImagingApi.md#extract_image_features) | **GET** /imaging/ai/imageSearch/{searchContextId}/image2features | Extract features from image without adding to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
[**extract_image_frame_properties**](ImagingApi.md#extract_image_frame_properties) | **POST** /imaging/frames/{frameId}/properties | Get separate frame properties of existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**extract_image_properties**](ImagingApi.md#extract_image_properties) | **POST** /imaging/properties | Get properties of an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
[**filter_effect_image**](ImagingApi.md#filter_effect_image) | **PUT** /imaging/{name}/filterEffect | Apply filtering effects to an existing image.
[**find_image_duplicates**](ImagingApi.md#find_image_duplicates) | **GET** /imaging/ai/imageSearch/{searchContextId}/findDuplicates | Find images duplicates.
[**find_images_by_tags**](ImagingApi.md#find_images_by_tags) | **POST** /imaging/ai/imageSearch/{searchContextId}/findByTags | Find images by tags. Tags JSON string is passed as zero-indexed multipart/form-data content or as raw body stream.
[**find_similar_images**](ImagingApi.md#find_similar_images) | **GET** /imaging/ai/imageSearch/{searchContextId}/findSimilar | Find similar images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
[**get_available_labels**](ImagingApi.md#get_available_labels) | **GET** /imaging/ai/objectdetection/availablelabels/{method} | Detects objects bounds and draw them on the original image
[**get_disc_usage**](ImagingApi.md#get_disc_usage) | **GET** /imaging/storage/disc | Get disc usage
[**get_file_versions**](ImagingApi.md#get_file_versions) | **GET** /imaging/storage/version/{path} | Get file versions
[**get_files_list**](ImagingApi.md#get_files_list) | **GET** /imaging/storage/folder/{path} | Get all files and folders within a folder
[**get_image_features**](ImagingApi.md#get_image_features) | **GET** /imaging/ai/imageSearch/{searchContextId}/features | Gets image features from search context.
[**get_image_frame**](ImagingApi.md#get_image_frame) | **GET** /imaging/{name}/frames/{frameId} | Get separate frame from existing image.
[**get_image_frame_properties**](ImagingApi.md#get_image_frame_properties) | **GET** /imaging/{name}/frames/{frameId}/properties | Get separate frame properties of existing image.
[**get_image_frame_range**](ImagingApi.md#get_image_frame_range) | **GET** /imaging/{name}/frames/range | Get frames range from existing image.
[**get_image_properties**](ImagingApi.md#get_image_properties) | **GET** /imaging/{name}/properties | Get properties of an image.
[**get_image_search_status**](ImagingApi.md#get_image_search_status) | **GET** /imaging/ai/imageSearch/{searchContextId}/status | Gets the search context status.
[**get_object_bounds**](ImagingApi.md#get_object_bounds) | **GET** /imaging/ai/objectdetection/{name}/bounds | Detects objects&#39; bounds
[**get_search_image**](ImagingApi.md#get_search_image) | **GET** /imaging/ai/imageSearch/{searchContextId}/image | Get image from search context
[**get_visual_object_bounds**](ImagingApi.md#get_visual_object_bounds) | **GET** /imaging/ai/objectdetection/{name}/visualbounds | Detects objects bounds and draw them on the original image
[**grayscale_image**](ImagingApi.md#grayscale_image) | **GET** /imaging/{name}/grayscale | Grayscale an existing image.
[**modify_bmp**](ImagingApi.md#modify_bmp) | **GET** /imaging/{name}/bmp | Update parameters of existing BMP image.
[**modify_emf**](ImagingApi.md#modify_emf) | **GET** /imaging/{name}/emf | Process existing EMF imaging using given parameters.
[**modify_gif**](ImagingApi.md#modify_gif) | **GET** /imaging/{name}/gif | Update parameters of existing GIF image.
[**modify_jpeg**](ImagingApi.md#modify_jpeg) | **GET** /imaging/{name}/jpg | Update parameters of existing JPEG image.
[**modify_jpeg2000**](ImagingApi.md#modify_jpeg2000) | **GET** /imaging/{name}/jpg2000 | Update parameters of existing JPEG2000 image.
[**modify_psd**](ImagingApi.md#modify_psd) | **GET** /imaging/{name}/psd | Update parameters of existing PSD image.
[**modify_svg**](ImagingApi.md#modify_svg) | **GET** /imaging/{name}/svg | Update parameters of existing SVG image.
[**modify_tiff**](ImagingApi.md#modify_tiff) | **GET** /imaging/{name}/tiff | Update parameters of existing TIFF image.
[**modify_web_p**](ImagingApi.md#modify_web_p) | **GET** /imaging/{name}/webp | Update parameters of existing WEBP image.
[**modify_wmf**](ImagingApi.md#modify_wmf) | **GET** /imaging/{name}/wmf | Process existing WMF image using given parameters.
[**move_file**](ImagingApi.md#move_file) | **PUT** /imaging/storage/file/move/{srcPath} | Move file
[**move_folder**](ImagingApi.md#move_folder) | **PUT** /imaging/storage/folder/move/{srcPath} | Move folder
[**object_exists**](ImagingApi.md#object_exists) | **GET** /imaging/storage/exist/{path} | Check if file or folder exists
[**resize_image**](ImagingApi.md#resize_image) | **GET** /imaging/{name}/resize | Resize an existing image.
[**rotate_flip_image**](ImagingApi.md#rotate_flip_image) | **GET** /imaging/{name}/rotateflip | Rotate and/or flip an existing image.
[**save_image_as**](ImagingApi.md#save_image_as) | **GET** /imaging/{name}/saveAs | Export existing image to another format.
[**storage_exists**](ImagingApi.md#storage_exists) | **GET** /imaging/storage/{storageName}/exist | Check if storage exists
[**update_image**](ImagingApi.md#update_image) | **GET** /imaging/{name}/updateImage | Perform scaling, cropping and flipping of an existing image in a single request.
[**update_image_features**](ImagingApi.md#update_image_features) | **PUT** /imaging/ai/imageSearch/{searchContextId}/features | Update images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
[**update_search_image**](ImagingApi.md#update_search_image) | **PUT** /imaging/ai/imageSearch/{searchContextId}/image | Update image and images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
[**upload_file**](ImagingApi.md#upload_file) | **PUT** /imaging/storage/file/{path} | Upload file


# **add_search_image**
> add_search_image(search_context_id, image_id, opts)

Add image and images features to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| Search context identifier. | 
 **image_id** | **String**| Image identifier. | 
 **image_data** | **File**| Input image | [optional] 
 **folder** | **String**| Folder. | [optional] 
 **storage** | **String**| Storage | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **append_tiff**
> append_tiff(name, append_file, opts)

Appends existing TIFF image to another existing TIFF image (i.e. merges TIFF images).

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Original image file name.

append_file = 'append_file_example' # String | Image file name to be appended to original one.

opts = { 
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  folder: 'folder_example' # String | Folder with images to process.
}

begin
  #Appends existing TIFF image to another existing TIFF image (i.e. merges TIFF images).
  api_instance.append_tiff(name, append_file, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->append_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Original image file name. | 
 **append_file** | **String**| Image file name to be appended to original one. | 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **folder** | **String**| Folder with images to process. | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **compare_images**
> SearchResultsSet compare_images(search_context_id, image_id1, opts)

Compare two images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

image_id1 = 'image_id1_example' # String | The first image Id in storage.

opts = { 
  image_data: File.new('/path/to/file.txt'), # File | Input image
  image_id2: 'image_id2_example', # String | The second image Id in storage or null (if image loading in request).
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Compare two images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.compare_images(search_context_id, image_id1, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->compare_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **image_id1** | **String**| The first image Id in storage. | 
 **image_data** | **File**| Input image | [optional] 
 **image_id2** | **String**| The second image Id in storage or null (if image loading in request). | [optional] 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**SearchResultsSet**](SearchResultsSet.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **convert_tiff_to_fax**
> File convert_tiff_to_fax(name, opts)

Update parameters of existing TIFF image accordingly to fax parameters.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

opts = { 
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  folder: 'folder_example' # String | Folder with image to process.
}

begin
  #Update parameters of existing TIFF image accordingly to fax parameters.
  result = api_instance.convert_tiff_to_fax(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->convert_tiff_to_fax: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **folder** | **String**| Folder with image to process. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_file**
> copy_file(src_path, dest_path, opts)

Copy file

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

src_path = 'src_path_example' # String | Source file path e.g. '/folder/file.ext'

dest_path = 'dest_path_example' # String | Destination file path

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example', # String | Destination storage name
  version_id: 'version_id_example' # String | File version ID to copy
}

begin
  #Copy file
  api_instance.copy_file(src_path, dest_path, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->copy_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_folder**
> copy_folder(src_path, dest_path, opts)

Copy folder

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

src_path = 'src_path_example' # String | Source folder path e.g. '/src'

dest_path = 'dest_path_example' # String | Destination folder path e.g. '/dst'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example' # String | Destination storage name
}

begin
  #Copy folder
  api_instance.copy_folder(src_path, dest_path, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->copy_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_cropped_image**
> File create_cropped_image(image_data, x, y, width, height, opts)

Crop an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

x = 56 # Integer | X position of start point for cropping rectangle.

y = 56 # Integer | Y position of start point for cropping rectangle.

width = 56 # Integer | Width of cropping rectangle.

height = 56 # Integer | Height of cropping rectangle.

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Crop an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_cropped_image(image_data, x, y, width, height, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_cropped_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **x** | **Integer**| X position of start point for cropping rectangle. | 
 **y** | **Integer**| Y position of start point for cropping rectangle. | 
 **width** | **Integer**| Width of cropping rectangle. | 
 **height** | **Integer**| Height of cropping rectangle. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_deskewed_image**
> File create_deskewed_image(image_data, resize_proportionally, opts)

Deskew an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

resize_proportionally = true # BOOLEAN | Resize proportionally

opts = { 
  bk_color: 'bk_color_example', # String | Background color
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image)
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Deskew an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_deskewed_image(image_data, resize_proportionally, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_deskewed_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **resize_proportionally** | **BOOLEAN**| Resize proportionally | 
 **bk_color** | **String**| Background color | [optional] 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image) | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_fax_tiff**
> File create_fax_tiff(image_data, opts)

Update parameters of TIFF image accordingly to fax parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of TIFF image accordingly to fax parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_fax_tiff(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_fax_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_folder**
> create_folder(path, opts)

Create the folder

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | Folder path to create e.g. 'folder_1/folder_2/'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Create the folder
  api_instance.create_folder(path, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_grayscaled_image**
> File create_grayscaled_image(image_data, opts)

Grayscales an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image)
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Grayscales an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_grayscaled_image(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_grayscaled_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image) | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_image_features**
> create_image_features(search_context_id, opts)

Extract images features and add them to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

opts = { 
  image_data: File.new('/path/to/file.txt'), # File | Input image
  image_id: 'image_id_example', # String | The image identifier.
  images_folder: 'images_folder_example', # String | Images source - a folder
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Extract images features and add them to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
  api_instance.create_image_features(search_context_id, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_image_features: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **image_data** | **File**| Input image | [optional] 
 **image_id** | **String**| The image identifier. | [optional] 
 **images_folder** | **String**| Images source - a folder | [optional] 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_image_frame**
> File create_image_frame(image_data, frame_id, opts)

Get separate frame from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

frame_id = 56 # Integer | Number of a frame.

opts = { 
  new_width: 56, # Integer | New width.
  new_height: 56, # Integer | New height.
  x: 56, # Integer | X position of start point for cropping rectangle.
  y: 56, # Integer | Y position of start point for cropping rectangle.
  rect_width: 56, # Integer | Width of cropping rectangle.
  rect_height: 56, # Integer | Height of cropping rectangle.
  rotate_flip_method: 'rotate_flip_method_example', # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.
  save_other_frames: false, # BOOLEAN | If result will include all other frames or just a specified frame.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Get separate frame from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_image_frame(image_data, frame_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_image_frame: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **frame_id** | **Integer**| Number of a frame. | 
 **new_width** | **Integer**| New width. | [optional] 
 **new_height** | **Integer**| New height. | [optional] 
 **x** | **Integer**| X position of start point for cropping rectangle. | [optional] 
 **y** | **Integer**| Y position of start point for cropping rectangle. | [optional] 
 **rect_width** | **Integer**| Width of cropping rectangle. | [optional] 
 **rect_height** | **Integer**| Height of cropping rectangle. | [optional] 
 **rotate_flip_method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone. | [optional] 
 **save_other_frames** | **BOOLEAN**| If result will include all other frames or just a specified frame. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_image_frame_range**
> File create_image_frame_range(image_data, start_frame_id, end_frame_id, opts)

Get frames range from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

start_frame_id = 56 # Integer | Index of the first frame in range.

end_frame_id = 56 # Integer | Index of the last frame in range.

opts = { 
  new_width: 56, # Integer | New width.
  new_height: 56, # Integer | New height.
  x: 56, # Integer | X position of start point for cropping rectangle.
  y: 56, # Integer | Y position of start point for cropping rectangle.
  rect_width: 56, # Integer | Width of cropping rectangle.
  rect_height: 56, # Integer | Height of cropping rectangle.
  rotate_flip_method: 'rotate_flip_method_example', # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.
  save_other_frames: false, # BOOLEAN | If result will include all other frames or just a specified frame.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Get frames range from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_image_frame_range(image_data, start_frame_id, end_frame_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_image_frame_range: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **start_frame_id** | **Integer**| Index of the first frame in range. | 
 **end_frame_id** | **Integer**| Index of the last frame in range. | 
 **new_width** | **Integer**| New width. | [optional] 
 **new_height** | **Integer**| New height. | [optional] 
 **x** | **Integer**| X position of start point for cropping rectangle. | [optional] 
 **y** | **Integer**| Y position of start point for cropping rectangle. | [optional] 
 **rect_width** | **Integer**| Width of cropping rectangle. | [optional] 
 **rect_height** | **Integer**| Height of cropping rectangle. | [optional] 
 **rotate_flip_method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone. | [optional] 
 **save_other_frames** | **BOOLEAN**| If result will include all other frames or just a specified frame. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_image_search**
> SearchContextStatus create_image_search(opts)

Create new search context.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

opts = { 
  detector: 'akaze', # String | The image features detector.
  matching_algorithm: 'randomBinaryTree', # String | The matching algorithm.
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Create new search context.
  result = api_instance.create_image_search(opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_image_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detector** | **String**| The image features detector. | [optional] [default to akaze]
 **matching_algorithm** | **String**| The matching algorithm. | [optional] [default to randomBinaryTree]
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**SearchContextStatus**](SearchContextStatus.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_image_tag**
> create_image_tag(image_data, search_context_id, tag_name, opts)

Add tag and reference image to search context. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

search_context_id = 'search_context_id_example' # String | The search context identifier.

tag_name = 'tag_name_example' # String | The tag.

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Add tag and reference image to search context. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  api_instance.create_image_tag(image_data, search_context_id, tag_name, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_image_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **search_context_id** | **String**| The search context identifier. | 
 **tag_name** | **String**| The tag. | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_bmp**
> File create_modified_bmp(image_data, bits_per_pixel, horizontal_resolution, vertical_resolution, opts)

Update parameters of BMP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

bits_per_pixel = 56 # Integer | Color depth.

horizontal_resolution = 56 # Integer | New horizontal resolution.

vertical_resolution = 56 # Integer | New vertical resolution.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of BMP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_bmp(image_data, bits_per_pixel, horizontal_resolution, vertical_resolution, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_bmp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **bits_per_pixel** | **Integer**| Color depth. | 
 **horizontal_resolution** | **Integer**| New horizontal resolution. | 
 **vertical_resolution** | **Integer**| New vertical resolution. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_emf**
> File create_modified_emf(image_data, bk_color, page_width, page_height, border_x, border_y, opts)

Process existing EMF imaging using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

bk_color = 'bk_color_example' # String | Color of the background.

page_width = 56 # Integer | Width of the page.

page_height = 56 # Integer | Height of the page.

border_x = 56 # Integer | Border width.

border_y = 56 # Integer | Border height.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  format: 'png' # String | Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
}

begin
  #Process existing EMF imaging using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_emf(image_data, bk_color, page_width, page_height, border_x, border_y, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_emf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **bk_color** | **String**| Color of the background. | 
 **page_width** | **Integer**| Width of the page. | 
 **page_height** | **Integer**| Height of the page. | 
 **border_x** | **Integer**| Border width. | 
 **border_y** | **Integer**| Border height. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **format** | **String**| Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] [default to png]

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_gif**
> File create_modified_gif(image_data, opts)

Update parameters of GIF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  background_color_index: 32, # Integer | Index of the background color.
  color_resolution: 3, # Integer | Color resolution.
  has_trailer: true, # BOOLEAN | Specifies if image has trailer.
  interlaced: true, # BOOLEAN | Specifies if image is interlaced.
  is_palette_sorted: false, # BOOLEAN | Specifies if palette is sorted.
  pixel_aspect_ratio: 3, # Integer | Pixel aspect ratio.
  from_scratch: true, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of GIF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_gif(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **background_color_index** | **Integer**| Index of the background color. | [optional] [default to 32]
 **color_resolution** | **Integer**| Color resolution. | [optional] [default to 3]
 **has_trailer** | **BOOLEAN**| Specifies if image has trailer. | [optional] [default to true]
 **interlaced** | **BOOLEAN**| Specifies if image is interlaced. | [optional] [default to true]
 **is_palette_sorted** | **BOOLEAN**| Specifies if palette is sorted. | [optional] [default to false]
 **pixel_aspect_ratio** | **Integer**| Pixel aspect ratio. | [optional] [default to 3]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to true]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_jpeg**
> File create_modified_jpeg(image_data, opts)

Update parameters of JPEG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  quality: 75, # Integer | Quality of an image from 0 to 100. Default is 75.
  compression_type: 'baseline', # String | Compression type: baseline (default), progressive, lossless or jpegls.
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of JPEG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_jpeg(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_jpeg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **quality** | **Integer**| Quality of an image from 0 to 100. Default is 75. | [optional] [default to 75]
 **compression_type** | **String**| Compression type: baseline (default), progressive, lossless or jpegls. | [optional] [default to baseline]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_jpeg2000**
> File create_modified_jpeg2000(image_data, comment, opts)

Update parameters of JPEG2000 image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

comment = 'comment_example' # String | The comment (can be either single or comma-separated).

opts = { 
  codec: 'j2k', # String | The codec (j2k or jp2).
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of JPEG2000 image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_jpeg2000(image_data, comment, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_jpeg2000: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **comment** | **String**| The comment (can be either single or comma-separated). | 
 **codec** | **String**| The codec (j2k or jp2). | [optional] [default to j2k]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_psd**
> File create_modified_psd(image_data, opts)

Update parameters of PSD image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  channels_count: 4, # Integer | Count of color channels.
  compression_method: 'rle', # String | Compression method (for now, raw and RLE are supported).
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of PSD image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_psd(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_psd: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **channels_count** | **Integer**| Count of color channels. | [optional] [default to 4]
 **compression_method** | **String**| Compression method (for now, raw and RLE are supported). | [optional] [default to rle]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_svg**
> File create_modified_svg(image_data, opts)

Update parameters of SVG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  color_type: 'Rgb', # String | Color type for SVG image. Only RGB is supported for now.
  text_as_shapes: false, # BOOLEAN | Whether text must be converted as shapes. true if all text is turned into SVG shapes in the convertion; otherwise, false
  scale_x: 0.0, # Float | Scale X.
  scale_y: 0.0, # Float | Scale Y.
  page_width: 56, # Integer | Width of the page.
  page_height: 56, # Integer | Height of the page.
  border_x: 56, # Integer | Border width. Only 0 is supported for now.
  border_y: 56, # Integer | Border height. Only 0 is supported for now.
  bk_color: 'white', # String | Background color (Default is white).
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  format: 'png' # String | Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
}

begin
  #Update parameters of SVG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_svg(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_svg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **color_type** | **String**| Color type for SVG image. Only RGB is supported for now. | [optional] [default to Rgb]
 **text_as_shapes** | **BOOLEAN**| Whether text must be converted as shapes. true if all text is turned into SVG shapes in the convertion; otherwise, false | [optional] [default to false]
 **scale_x** | **Float**| Scale X. | [optional] [default to 0.0]
 **scale_y** | **Float**| Scale Y. | [optional] [default to 0.0]
 **page_width** | **Integer**| Width of the page. | [optional] 
 **page_height** | **Integer**| Height of the page. | [optional] 
 **border_x** | **Integer**| Border width. Only 0 is supported for now. | [optional] 
 **border_y** | **Integer**| Border height. Only 0 is supported for now. | [optional] 
 **bk_color** | **String**| Background color (Default is white). | [optional] [default to white]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **format** | **String**| Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] [default to png]

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_tiff**
> File create_modified_tiff(image_data, bit_depth, opts)

Update parameters of TIFF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

bit_depth = 56 # Integer | Bit depth.

opts = { 
  compression: 'compression_example', # String | Compression (none is default). Please, refer to https://apireference.aspose.com/net/imaging/aspose.imaging.fileformats.tiff.enums/tiffcompressions for all possible values.
  resolution_unit: 'resolution_unit_example', # String | New resolution unit (none - the default one, inch or centimeter).
  horizontal_resolution: 0.0, # Float | New horizontal resolution.
  vertical_resolution: 0.0, # Float | New vertical resolution.
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of TIFF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_tiff(image_data, bit_depth, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **bit_depth** | **Integer**| Bit depth. | 
 **compression** | **String**| Compression (none is default). Please, refer to https://apireference.aspose.com/net/imaging/aspose.imaging.fileformats.tiff.enums/tiffcompressions for all possible values. | [optional] 
 **resolution_unit** | **String**| New resolution unit (none - the default one, inch or centimeter). | [optional] 
 **horizontal_resolution** | **Float**| New horizontal resolution. | [optional] [default to 0.0]
 **vertical_resolution** | **Float**| New vertical resolution. | [optional] [default to 0.0]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_web_p**
> File create_modified_web_p(image_data, loss_less, quality, anim_loop_count, anim_background_color, opts)

Update parameters of WEBP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

loss_less = true # BOOLEAN | If WEBP should be in lossless format.

quality = 56 # Integer | Quality (0-100).

anim_loop_count = 56 # Integer | The animation loop count.

anim_background_color = 'anim_background_color_example' # String | Color of the animation background.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of WEBP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_web_p(image_data, loss_less, quality, anim_loop_count, anim_background_color, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_web_p: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **loss_less** | **BOOLEAN**| If WEBP should be in lossless format. | 
 **quality** | **Integer**| Quality (0-100). | 
 **anim_loop_count** | **Integer**| The animation loop count. | 
 **anim_background_color** | **String**| Color of the animation background. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_modified_wmf**
> File create_modified_wmf(image_data, bk_color, page_width, page_height, border_x, border_y, opts)

Process existing WMF image using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

bk_color = 'bk_color_example' # String | Color of the background.

page_width = 56 # Integer | Width of the page.

page_height = 56 # Integer | Height of the page.

border_x = 56 # Integer | Border width.

border_y = 56 # Integer | Border height.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  format: 'png' # String | Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
}

begin
  #Process existing WMF image using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_modified_wmf(image_data, bk_color, page_width, page_height, border_x, border_y, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_modified_wmf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **bk_color** | **String**| Color of the background. | 
 **page_width** | **Integer**| Width of the page. | 
 **page_height** | **Integer**| Height of the page. | 
 **border_x** | **Integer**| Border width. | 
 **border_y** | **Integer**| Border height. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **format** | **String**| Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] [default to png]

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_object_bounds**
> DetectedObjectList create_object_bounds(image_data, opts)

Detects objects bounds. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  method: 'ssd', # String | Object detection method
  threshold: 50, # Integer | Object detection probability threshold in percents
  include_label: false, # BOOLEAN | Draw detected objects labels
  include_score: false, # BOOLEAN | Draw detected objects scores
  allowed_labels: '', # String | Comma-separated list of allowed labels
  blocked_labels: '', # String | Comma-separated list of blocked labels
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image)
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Detects objects bounds. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_object_bounds(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_object_bounds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **method** | **String**| Object detection method | [optional] [default to ssd]
 **threshold** | **Integer**| Object detection probability threshold in percents | [optional] [default to 50]
 **include_label** | **BOOLEAN**| Draw detected objects labels | [optional] [default to false]
 **include_score** | **BOOLEAN**| Draw detected objects scores | [optional] [default to false]
 **allowed_labels** | **String**| Comma-separated list of allowed labels | [optional] [default to ]
 **blocked_labels** | **String**| Comma-separated list of blocked labels | [optional] [default to ]
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image) | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

[**DetectedObjectList**](DetectedObjectList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_resized_image**
> File create_resized_image(image_data, new_width, new_height, opts)

Resize an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

new_width = 56 # Integer | New width.

new_height = 56 # Integer | New height.

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Resize an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_resized_image(image_data, new_width, new_height, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_resized_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **new_width** | **Integer**| New width. | 
 **new_height** | **Integer**| New height. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_rotate_flipped_image**
> File create_rotate_flipped_image(image_data, method, opts)

Rotate and/or flip an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

method = 'method_example' # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY).

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Rotate and/or flip an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_rotate_flipped_image(image_data, method, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_rotate_flipped_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_saved_image_as**
> File create_saved_image_as(image_data, format, opts)

Export existing image to another format. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.             

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

format = 'format_example' # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.

opts = { 
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Export existing image to another format. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.             
  result = api_instance.create_saved_image_as(image_data, format, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_saved_image_as: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_updated_image**
> File create_updated_image(image_data, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, opts)

Perform scaling, cropping and flipping of an image in a single request. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

new_width = 56 # Integer | New width of the scaled image.

new_height = 56 # Integer | New height of the scaled image.

x = 56 # Integer | X position of start point for cropping rectangle.

y = 56 # Integer | Y position of start point for cropping rectangle.

rect_width = 56 # Integer | Width of cropping rectangle.

rect_height = 56 # Integer | Height of cropping rectangle.

rotate_flip_method = 'rotate_flip_method_example' # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image).
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Perform scaling, cropping and flipping of an image in a single request. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.create_updated_image(image_data, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_updated_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **new_width** | **Integer**| New width of the scaled image. | 
 **new_height** | **Integer**| New height of the scaled image. | 
 **x** | **Integer**| X position of start point for cropping rectangle. | 
 **y** | **Integer**| Y position of start point for cropping rectangle. | 
 **rect_width** | **Integer**| Width of cropping rectangle. | 
 **rect_height** | **Integer**| Height of cropping rectangle. | 
 **rotate_flip_method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image). | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_visual_object_bounds**
> File create_visual_object_bounds(image_data, opts)

Detects objects bounds and draw them on the original image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

opts = { 
  method: 'ssd', # String | Object detection method
  threshold: 50, # Integer | Object detection probability threshold in percents
  include_label: false, # BOOLEAN | Draw detected objects classes
  include_score: false, # BOOLEAN | Draw detected objects scores
  allowed_labels: '', # String | Comma-separated list of allowed labels
  blocked_labels: '', # String | Comma-separated list of blocked labels
  color: 'color_example', # String | Bounds, labels, and scores text color
  out_path: 'out_path_example', # String | Path to updated file (if this is empty, response contains streamed image)
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Detects objects bounds and draw them on the original image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream
  result = api_instance.create_visual_object_bounds(image_data, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_visual_object_bounds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **method** | **String**| Object detection method | [optional] [default to ssd]
 **threshold** | **Integer**| Object detection probability threshold in percents | [optional] [default to 50]
 **include_label** | **BOOLEAN**| Draw detected objects classes | [optional] [default to false]
 **include_score** | **BOOLEAN**| Draw detected objects scores | [optional] [default to false]
 **allowed_labels** | **String**| Comma-separated list of allowed labels | [optional] [default to ]
 **blocked_labels** | **String**| Comma-separated list of blocked labels | [optional] [default to ]
 **color** | **String**| Bounds, labels, and scores text color | [optional] 
 **out_path** | **String**| Path to updated file (if this is empty, response contains streamed image) | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_web_site_image_features**
> create_web_site_image_features(search_context_id, images_source, opts)

Extract images features from web page and add them to search context

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

images_source = 'images_source_example' # String | Images source - a web page

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Extract images features from web page and add them to search context
  api_instance.create_web_site_image_features(search_context_id, images_source, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->create_web_site_image_features: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **images_source** | **String**| Images source - a web page | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crop_image**
> File crop_image(name, x, y, width, height, opts)

Crop an existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of an image.

x = 56 # Integer | X position of start point for cropping rectangle.

y = 56 # Integer | Y position of start point for cropping rectangle.

width = 56 # Integer | Width of cropping rectangle

height = 56 # Integer | Height of cropping rectangle.

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Crop an existing image.
  result = api_instance.crop_image(name, x, y, width, height, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->crop_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of an image. | 
 **x** | **Integer**| X position of start point for cropping rectangle. | 
 **y** | **Integer**| Y position of start point for cropping rectangle. | 
 **width** | **Integer**| Width of cropping rectangle | 
 **height** | **Integer**| Height of cropping rectangle. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_file**
> delete_file(path, opts)

Delete file

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID to delete
}

begin
  #Delete file
  api_instance.delete_file(path, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->delete_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(path, opts)

Delete folder

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | Folder path e.g. '/folder'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  recursive: false # BOOLEAN | Enable to delete folders, subfolders and files
}

begin
  #Delete folder
  api_instance.delete_folder(path, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_image_features**
> delete_image_features(search_context_id, image_id, opts)

Deletes image features from search context.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

image_id = 'image_id_example' # String | The image identifier.

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Deletes image features from search context.
  api_instance.delete_image_features(search_context_id, image_id, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->delete_image_features: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **image_id** | **String**| The image identifier. | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_image_search**
> delete_image_search(search_context_id, opts)

Deletes the search context.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Deletes the search context.
  api_instance.delete_image_search(search_context_id, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->delete_image_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_search_image**
> delete_search_image(search_context_id, image_id, opts)

Delete image and images features from search context

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | Search context identifier.

image_id = 'image_id_example' # String | Image identifier.

opts = { 
  folder: 'folder_example', # String | Folder.
  storage: 'storage_example' # String | Storage
}

begin
  #Delete image and images features from search context
  api_instance.delete_search_image(search_context_id, image_id, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->delete_search_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| Search context identifier. | 
 **image_id** | **String**| Image identifier. | 
 **folder** | **String**| Folder. | [optional] 
 **storage** | **String**| Storage | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deskew_image**
> File deskew_image(name, resize_proportionally, opts)

Deskew an existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Image file name.

resize_proportionally = true # BOOLEAN | Resize proportionally

opts = { 
  bk_color: 'bk_color_example', # String | Background color
  folder: 'folder_example', # String | Folder
  storage: 'storage_example' # String | Storage
}

begin
  #Deskew an existing image.
  result = api_instance.deskew_image(name, resize_proportionally, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->deskew_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Image file name. | 
 **resize_proportionally** | **BOOLEAN**| Resize proportionally | 
 **bk_color** | **String**| Background color | [optional] 
 **folder** | **String**| Folder | [optional] 
 **storage** | **String**| Storage | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_file**
> File download_file(path, opts)

Download file

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID to download
}

begin
  #Download file
  result = api_instance.download_file(path, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->download_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **extract_image_features**
> ImageFeatures extract_image_features(search_context_id, image_id, opts)

Extract features from image without adding to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

image_id = 'image_id_example' # String | The image identifier.

opts = { 
  image_data: File.new('/path/to/file.txt'), # File | Input image
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Extract features from image without adding to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.extract_image_features(search_context_id, image_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->extract_image_features: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **image_id** | **String**| The image identifier. | 
 **image_data** | **File**| Input image | [optional] 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**ImageFeatures**](ImageFeatures.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **extract_image_frame_properties**
> ImagingResponse extract_image_frame_properties(image_data, frame_id)

Get separate frame properties of existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image

frame_id = 56 # Integer | Number of a frame.


begin
  #Get separate frame properties of existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.extract_image_frame_properties(image_data, frame_id)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->extract_image_frame_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 
 **frame_id** | **Integer**| Number of a frame. | 

### Return type

[**ImagingResponse**](ImagingResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **extract_image_properties**
> ImagingResponse extract_image_properties(image_data)

Get properties of an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

image_data = File.new('/path/to/file.txt') # File | Input image


begin
  #Get properties of an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.extract_image_properties(image_data)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->extract_image_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image_data** | **File**| Input image | 

### Return type

[**ImagingResponse**](ImagingResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **filter_effect_image**
> File filter_effect_image(name, filter_type, filter_properties, opts)

Apply filtering effects to an existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of an image.

filter_type = 'filter_type_example' # String | Filter type (BigRectangular, SmallRectangular, Median, GaussWiener, MotionWiener, GaussianBlur, Sharpen, BilateralSmoothing).

filter_properties = AsposeImagingCloud::FilterPropertiesBase.new # FilterPropertiesBase | Filter properties.

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Apply filtering effects to an existing image.
  result = api_instance.filter_effect_image(name, filter_type, filter_properties, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->filter_effect_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of an image. | 
 **filter_type** | **String**| Filter type (BigRectangular, SmallRectangular, Median, GaussWiener, MotionWiener, GaussianBlur, Sharpen, BilateralSmoothing). | 
 **filter_properties** | [**FilterPropertiesBase**](FilterPropertiesBase.md)| Filter properties. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json



# **find_image_duplicates**
> ImageDuplicatesSet find_image_duplicates(search_context_id, similarity_threshold, opts)

Find images duplicates.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

similarity_threshold = 1.2 # Float | The similarity threshold.

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Find images duplicates.
  result = api_instance.find_image_duplicates(search_context_id, similarity_threshold, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->find_image_duplicates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **similarity_threshold** | **Float**| The similarity threshold. | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**ImageDuplicatesSet**](ImageDuplicatesSet.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_images_by_tags**
> SearchResultsSet find_images_by_tags(tags, search_context_id, similarity_threshold, max_count, opts)

Find images by tags. Tags JSON string is passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

tags = 'tags_example' # String | Tags array for searching

search_context_id = 'search_context_id_example' # String | The search context identifier.

similarity_threshold = 1.2 # Float | The similarity threshold.

max_count = 56 # Integer | The maximum count.

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Find images by tags. Tags JSON string is passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.find_images_by_tags(tags, search_context_id, similarity_threshold, max_count, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->find_images_by_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | **String**| Tags array for searching | 
 **search_context_id** | **String**| The search context identifier. | 
 **similarity_threshold** | **Float**| The similarity threshold. | 
 **max_count** | **Integer**| The maximum count. | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**SearchResultsSet**](SearchResultsSet.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **find_similar_images**
> SearchResultsSet find_similar_images(search_context_id, similarity_threshold, max_count, opts)

Find similar images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

similarity_threshold = 1.2 # Float | The similarity threshold.

max_count = 56 # Integer | The maximum count.

opts = { 
  image_data: File.new('/path/to/file.txt'), # File | Input image
  image_id: 'image_id_example', # String | The search image identifier.
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Find similar images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
  result = api_instance.find_similar_images(search_context_id, similarity_threshold, max_count, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->find_similar_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **similarity_threshold** | **Float**| The similarity threshold. | 
 **max_count** | **Integer**| The maximum count. | 
 **image_data** | **File**| Input image | [optional] 
 **image_id** | **String**| The search image identifier. | [optional] 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**SearchResultsSet**](SearchResultsSet.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **get_available_labels**
> AvailableLabelsList get_available_labels(method)

Detects objects bounds and draw them on the original image

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

method = 'method_example' # String | Object detection method


begin
  #Detects objects bounds and draw them on the original image
  result = api_instance.get_available_labels(method)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_available_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **method** | **String**| Object detection method | 

### Return type

[**AvailableLabelsList**](AvailableLabelsList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_disc_usage**
> DiscUsage get_disc_usage(opts)

Get disc usage

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get disc usage
  result = api_instance.get_disc_usage(opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_disc_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**DiscUsage**](DiscUsage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_file_versions**
> FileVersions get_file_versions(path, opts)

Get file versions

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | File path e.g. '/file.ext'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get file versions
  result = api_instance.get_file_versions(path, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_file_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FileVersions**](FileVersions.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_files_list**
> FilesList get_files_list(path, opts)

Get all files and folders within a folder

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | Folder path e.g. '/folder'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get all files and folders within a folder
  result = api_instance.get_files_list(path, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_files_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesList**](FilesList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_features**
> ImageFeatures get_image_features(search_context_id, image_id, opts)

Gets image features from search context.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

image_id = 'image_id_example' # String | The image identifier.

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Gets image features from search context.
  result = api_instance.get_image_features(search_context_id, image_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_image_features: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **image_id** | **String**| The image identifier. | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**ImageFeatures**](ImageFeatures.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_frame**
> File get_image_frame(name, frame_id, opts)

Get separate frame from existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

frame_id = 56 # Integer | Number of a frame.

opts = { 
  new_width: 56, # Integer | New width.
  new_height: 56, # Integer | New height.
  x: 56, # Integer | X position of start point for cropping rectangle.
  y: 56, # Integer | Y position of start point for cropping rectangle.
  rect_width: 56, # Integer | Width of cropping rectangle.
  rect_height: 56, # Integer | Height of cropping rectangle.
  rotate_flip_method: 'rotate_flip_method_example', # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.
  save_other_frames: false, # BOOLEAN | If result will include all other frames or just a specified frame.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Get separate frame from existing image.
  result = api_instance.get_image_frame(name, frame_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_image_frame: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **frame_id** | **Integer**| Number of a frame. | 
 **new_width** | **Integer**| New width. | [optional] 
 **new_height** | **Integer**| New height. | [optional] 
 **x** | **Integer**| X position of start point for cropping rectangle. | [optional] 
 **y** | **Integer**| Y position of start point for cropping rectangle. | [optional] 
 **rect_width** | **Integer**| Width of cropping rectangle. | [optional] 
 **rect_height** | **Integer**| Height of cropping rectangle. | [optional] 
 **rotate_flip_method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone. | [optional] 
 **save_other_frames** | **BOOLEAN**| If result will include all other frames or just a specified frame. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_frame_properties**
> ImagingResponse get_image_frame_properties(name, frame_id, opts)

Get separate frame properties of existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename with image.

frame_id = 56 # Integer | Number of a frame.

opts = { 
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Get separate frame properties of existing image.
  result = api_instance.get_image_frame_properties(name, frame_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_image_frame_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename with image. | 
 **frame_id** | **Integer**| Number of a frame. | 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

[**ImagingResponse**](ImagingResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_frame_range**
> File get_image_frame_range(name, start_frame_id, end_frame_id, opts)

Get frames range from existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

start_frame_id = 56 # Integer | Index of the first frame in range.

end_frame_id = 56 # Integer | Index of the last frame in range.

opts = { 
  new_width: 56, # Integer | New width.
  new_height: 56, # Integer | New height.
  x: 56, # Integer | X position of start point for cropping rectangle.
  y: 56, # Integer | Y position of start point for cropping rectangle.
  rect_width: 56, # Integer | Width of cropping rectangle.
  rect_height: 56, # Integer | Height of cropping rectangle.
  rotate_flip_method: 'rotate_flip_method_example', # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.
  save_other_frames: false, # BOOLEAN | If result will include all other frames or just a specified frame.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Get frames range from existing image.
  result = api_instance.get_image_frame_range(name, start_frame_id, end_frame_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_image_frame_range: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **start_frame_id** | **Integer**| Index of the first frame in range. | 
 **end_frame_id** | **Integer**| Index of the last frame in range. | 
 **new_width** | **Integer**| New width. | [optional] 
 **new_height** | **Integer**| New height. | [optional] 
 **x** | **Integer**| X position of start point for cropping rectangle. | [optional] 
 **y** | **Integer**| Y position of start point for cropping rectangle. | [optional] 
 **rect_width** | **Integer**| Width of cropping rectangle. | [optional] 
 **rect_height** | **Integer**| Height of cropping rectangle. | [optional] 
 **rotate_flip_method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone. | [optional] 
 **save_other_frames** | **BOOLEAN**| If result will include all other frames or just a specified frame. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_properties**
> ImagingResponse get_image_properties(name, opts)

Get properties of an image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of an image.

opts = { 
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Get properties of an image.
  result = api_instance.get_image_properties(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_image_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of an image. | 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

[**ImagingResponse**](ImagingResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_image_search_status**
> SearchContextStatus get_image_search_status(search_context_id, opts)

Gets the search context status.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

opts = { 
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Gets the search context status.
  result = api_instance.get_image_search_status(search_context_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_image_search_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

[**SearchContextStatus**](SearchContextStatus.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_object_bounds**
> DetectedObjectList get_object_bounds(name, opts)

Detects objects' bounds

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Image file name.

opts = { 
  method: 'ssd', # String | Object detection method
  threshold: 50, # Integer | Object detection probability threshold in percents
  include_label: false, # BOOLEAN | Return detected objects labels
  include_score: false, # BOOLEAN | Return detected objects score
  allowed_labels: '', # String | Comma-separated list of allowed labels
  blocked_labels: '', # String | Comma-separated list of blocked labels
  folder: 'folder_example', # String | Folder
  storage: 'storage_example' # String | Storage
}

begin
  #Detects objects' bounds
  result = api_instance.get_object_bounds(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_object_bounds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Image file name. | 
 **method** | **String**| Object detection method | [optional] [default to ssd]
 **threshold** | **Integer**| Object detection probability threshold in percents | [optional] [default to 50]
 **include_label** | **BOOLEAN**| Return detected objects labels | [optional] [default to false]
 **include_score** | **BOOLEAN**| Return detected objects score | [optional] [default to false]
 **allowed_labels** | **String**| Comma-separated list of allowed labels | [optional] [default to ]
 **blocked_labels** | **String**| Comma-separated list of blocked labels | [optional] [default to ]
 **folder** | **String**| Folder | [optional] 
 **storage** | **String**| Storage | [optional] 

### Return type

[**DetectedObjectList**](DetectedObjectList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_search_image**
> File get_search_image(search_context_id, image_id, opts)

Get image from search context

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | Search context identifier.

image_id = 'image_id_example' # String | Image identifier.

opts = { 
  folder: 'folder_example', # String | Folder.
  storage: 'storage_example' # String | Storage
}

begin
  #Get image from search context
  result = api_instance.get_search_image(search_context_id, image_id, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_search_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| Search context identifier. | 
 **image_id** | **String**| Image identifier. | 
 **folder** | **String**| Folder. | [optional] 
 **storage** | **String**| Storage | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_visual_object_bounds**
> File get_visual_object_bounds(name, opts)

Detects objects bounds and draw them on the original image

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | The image features detector.

opts = { 
  method: 'ssd', # String | Object detection method
  threshold: 50, # Integer | Object detection probability threshold in percents
  include_label: false, # BOOLEAN | Draw detected objects labels
  include_score: false, # BOOLEAN | Draw detected objects scores
  allowed_labels: '', # String | Comma-separated list of allowed labels
  blocked_labels: '', # String | Comma-separated list of blocked labels
  color: 'color_example', # String | Bounds, labels, and scores text color
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Detects objects bounds and draw them on the original image
  result = api_instance.get_visual_object_bounds(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->get_visual_object_bounds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The image features detector. | 
 **method** | **String**| Object detection method | [optional] [default to ssd]
 **threshold** | **Integer**| Object detection probability threshold in percents | [optional] [default to 50]
 **include_label** | **BOOLEAN**| Draw detected objects labels | [optional] [default to false]
 **include_score** | **BOOLEAN**| Draw detected objects scores | [optional] [default to false]
 **allowed_labels** | **String**| Comma-separated list of allowed labels | [optional] [default to ]
 **blocked_labels** | **String**| Comma-separated list of blocked labels | [optional] [default to ]
 **color** | **String**| Bounds, labels, and scores text color | [optional] 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **grayscale_image**
> File grayscale_image(name, opts)

Grayscale an existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Image file name.

opts = { 
  folder: 'folder_example', # String | Folder
  storage: 'storage_example' # String | Storage
}

begin
  #Grayscale an existing image.
  result = api_instance.grayscale_image(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->grayscale_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Image file name. | 
 **folder** | **String**| Folder | [optional] 
 **storage** | **String**| Storage | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_bmp**
> File modify_bmp(name, bits_per_pixel, horizontal_resolution, vertical_resolution, opts)

Update parameters of existing BMP image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

bits_per_pixel = 56 # Integer | Color depth.

horizontal_resolution = 56 # Integer | New horizontal resolution.

vertical_resolution = 56 # Integer | New vertical resolution.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of existing BMP image.
  result = api_instance.modify_bmp(name, bits_per_pixel, horizontal_resolution, vertical_resolution, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_bmp: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **bits_per_pixel** | **Integer**| Color depth. | 
 **horizontal_resolution** | **Integer**| New horizontal resolution. | 
 **vertical_resolution** | **Integer**| New vertical resolution. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_emf**
> File modify_emf(name, bk_color, page_width, page_height, border_x, border_y, opts)

Process existing EMF imaging using given parameters.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

bk_color = 'bk_color_example' # String | Color of the background.

page_width = 56 # Integer | Width of the page.

page_height = 56 # Integer | Height of the page.

border_x = 56 # Integer | Border width.

border_y = 56 # Integer | Border height.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  format: 'png' # String | Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
}

begin
  #Process existing EMF imaging using given parameters.
  result = api_instance.modify_emf(name, bk_color, page_width, page_height, border_x, border_y, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_emf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **bk_color** | **String**| Color of the background. | 
 **page_width** | **Integer**| Width of the page. | 
 **page_height** | **Integer**| Height of the page. | 
 **border_x** | **Integer**| Border width. | 
 **border_y** | **Integer**| Border height. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **format** | **String**| Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] [default to png]

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_gif**
> File modify_gif(name, opts)

Update parameters of existing GIF image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

opts = { 
  background_color_index: 32, # Integer | Index of the background color.
  color_resolution: 3, # Integer | Color resolution.
  has_trailer: true, # BOOLEAN | Specifies if image has trailer.
  interlaced: true, # BOOLEAN | Specifies if image is interlaced.
  is_palette_sorted: false, # BOOLEAN | Specifies if palette is sorted.
  pixel_aspect_ratio: 3, # Integer | Pixel aspect ratio.
  from_scratch: true, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of existing GIF image.
  result = api_instance.modify_gif(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **background_color_index** | **Integer**| Index of the background color. | [optional] [default to 32]
 **color_resolution** | **Integer**| Color resolution. | [optional] [default to 3]
 **has_trailer** | **BOOLEAN**| Specifies if image has trailer. | [optional] [default to true]
 **interlaced** | **BOOLEAN**| Specifies if image is interlaced. | [optional] [default to true]
 **is_palette_sorted** | **BOOLEAN**| Specifies if palette is sorted. | [optional] [default to false]
 **pixel_aspect_ratio** | **Integer**| Pixel aspect ratio. | [optional] [default to 3]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to true]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_jpeg**
> File modify_jpeg(name, opts)

Update parameters of existing JPEG image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

opts = { 
  quality: 75, # Integer | Quality of an image from 0 to 100. Default is 75.
  compression_type: 'baseline', # String | Compression type: baseline (default), progressive, lossless or jpegls.
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of existing JPEG image.
  result = api_instance.modify_jpeg(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_jpeg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **quality** | **Integer**| Quality of an image from 0 to 100. Default is 75. | [optional] [default to 75]
 **compression_type** | **String**| Compression type: baseline (default), progressive, lossless or jpegls. | [optional] [default to baseline]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_jpeg2000**
> File modify_jpeg2000(name, comment, opts)

Update parameters of existing JPEG2000 image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

comment = 'comment_example' # String | The comment (can be either single or comma-separated).

opts = { 
  codec: 'j2k', # String | The codec (j2k or jp2).
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of existing JPEG2000 image.
  result = api_instance.modify_jpeg2000(name, comment, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_jpeg2000: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **comment** | **String**| The comment (can be either single or comma-separated). | 
 **codec** | **String**| The codec (j2k or jp2). | [optional] [default to j2k]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_psd**
> File modify_psd(name, opts)

Update parameters of existing PSD image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

opts = { 
  channels_count: 4, # Integer | Count of color channels.
  compression_method: 'rle', # String | Compression method (for now, raw and RLE are supported).
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of existing PSD image.
  result = api_instance.modify_psd(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_psd: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **channels_count** | **Integer**| Count of color channels. | [optional] [default to 4]
 **compression_method** | **String**| Compression method (for now, raw and RLE are supported). | [optional] [default to rle]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_svg**
> File modify_svg(name, opts)

Update parameters of existing SVG image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

opts = { 
  color_type: 'Rgb', # String | Color type for SVG image. Only RGB is supported for now.
  text_as_shapes: false, # BOOLEAN | Whether text must be converted as shapes. true if all text is turned into SVG shapes in the convertion; otherwise, false
  scale_x: 0.0, # Float | Scale X.
  scale_y: 0.0, # Float | Scale Y.
  page_width: 56, # Integer | Width of the page.
  page_height: 56, # Integer | Height of the page.
  border_x: 56, # Integer | Border width. Only 0 is supported for now.
  border_y: 56, # Integer | Border height. Only 0 is supported for now.
  bk_color: 'white', # String | Background color (Default is white).
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  format: 'svg' # String | Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
}

begin
  #Update parameters of existing SVG image.
  result = api_instance.modify_svg(name, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_svg: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **color_type** | **String**| Color type for SVG image. Only RGB is supported for now. | [optional] [default to Rgb]
 **text_as_shapes** | **BOOLEAN**| Whether text must be converted as shapes. true if all text is turned into SVG shapes in the convertion; otherwise, false | [optional] [default to false]
 **scale_x** | **Float**| Scale X. | [optional] [default to 0.0]
 **scale_y** | **Float**| Scale Y. | [optional] [default to 0.0]
 **page_width** | **Integer**| Width of the page. | [optional] 
 **page_height** | **Integer**| Height of the page. | [optional] 
 **border_x** | **Integer**| Border width. Only 0 is supported for now. | [optional] 
 **border_y** | **Integer**| Border height. Only 0 is supported for now. | [optional] 
 **bk_color** | **String**| Background color (Default is white). | [optional] [default to white]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **format** | **String**| Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] [default to svg]

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_tiff**
> File modify_tiff(name, bit_depth, opts)

Update parameters of existing TIFF image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

bit_depth = 56 # Integer | Bit depth.

opts = { 
  compression: 'compression_example', # String | Compression (none is default). Please, refer to https://apireference.aspose.com/net/imaging/aspose.imaging.fileformats.tiff.enums/tiffcompressions for all possible values.
  resolution_unit: 'resolution_unit_example', # String | New resolution unit (none - the default one, inch or centimeter).
  horizontal_resolution: 0.0, # Float | New horizontal resolution.
  vertical_resolution: 0.0, # Float | New vertical resolution.
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of existing TIFF image.
  result = api_instance.modify_tiff(name, bit_depth, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_tiff: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **bit_depth** | **Integer**| Bit depth. | 
 **compression** | **String**| Compression (none is default). Please, refer to https://apireference.aspose.com/net/imaging/aspose.imaging.fileformats.tiff.enums/tiffcompressions for all possible values. | [optional] 
 **resolution_unit** | **String**| New resolution unit (none - the default one, inch or centimeter). | [optional] 
 **horizontal_resolution** | **Float**| New horizontal resolution. | [optional] [default to 0.0]
 **vertical_resolution** | **Float**| New vertical resolution. | [optional] [default to 0.0]
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_web_p**
> File modify_web_p(name, loss_less, quality, anim_loop_count, anim_background_color, opts)

Update parameters of existing WEBP image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

loss_less = true # BOOLEAN | If WEBP should be in lossless format.

quality = 56 # Integer | Quality (0-100).

anim_loop_count = 56 # Integer | The animation loop count.

anim_background_color = 'anim_background_color_example' # String | Color of the animation background.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Update parameters of existing WEBP image.
  result = api_instance.modify_web_p(name, loss_less, quality, anim_loop_count, anim_background_color, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_web_p: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **loss_less** | **BOOLEAN**| If WEBP should be in lossless format. | 
 **quality** | **Integer**| Quality (0-100). | 
 **anim_loop_count** | **Integer**| The animation loop count. | 
 **anim_background_color** | **String**| Color of the animation background. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_wmf**
> File modify_wmf(name, bk_color, page_width, page_height, border_x, border_y, opts)

Process existing WMF image using given parameters.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

bk_color = 'bk_color_example' # String | Color of the background.

page_width = 56 # Integer | Width of the page.

page_height = 56 # Integer | Height of the page.

border_x = 56 # Integer | Border width.

border_y = 56 # Integer | Border height.

opts = { 
  from_scratch: false, # BOOLEAN | Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example', # String | Your Aspose Cloud Storage name.
  format: 'png' # String | Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
}

begin
  #Process existing WMF image using given parameters.
  result = api_instance.modify_wmf(name, bk_color, page_width, page_height, border_x, border_y, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->modify_wmf: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **bk_color** | **String**| Color of the background. | 
 **page_width** | **Integer**| Width of the page. | 
 **page_height** | **Integer**| Height of the page. | 
 **border_x** | **Integer**| Border width. | 
 **border_y** | **Integer**| Border height. | 
 **from_scratch** | **BOOLEAN**| Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false. | [optional] [default to false]
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 
 **format** | **String**| Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] [default to png]

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_file**
> move_file(src_path, dest_path, opts)

Move file

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

src_path = 'src_path_example' # String | Source file path e.g. '/src.ext'

dest_path = 'dest_path_example' # String | Destination file path e.g. '/dest.ext'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example', # String | Destination storage name
  version_id: 'version_id_example' # String | File version ID to move
}

begin
  #Move file
  api_instance.move_file(src_path, dest_path, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->move_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_folder**
> move_folder(src_path, dest_path, opts)

Move folder

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

src_path = 'src_path_example' # String | Folder path to move e.g. '/folder'

dest_path = 'dest_path_example' # String | Destination folder path to move to e.g '/dst'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example' # String | Destination storage name
}

begin
  #Move folder
  api_instance.move_folder(src_path, dest_path, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->move_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **object_exists**
> ObjectExist object_exists(path, opts)

Check if file or folder exists

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | File or folder path e.g. '/file.ext' or '/folder'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID
}

begin
  #Check if file or folder exists
  result = api_instance.object_exists(path, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->object_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

### Return type

[**ObjectExist**](ObjectExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **resize_image**
> File resize_image(name, new_width, new_height, opts)

Resize an existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of an image.

new_width = 56 # Integer | New width.

new_height = 56 # Integer | New height.

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Resize an existing image.
  result = api_instance.resize_image(name, new_width, new_height, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->resize_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of an image. | 
 **new_width** | **Integer**| New width. | 
 **new_height** | **Integer**| New height. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **rotate_flip_image**
> File rotate_flip_image(name, method, opts)

Rotate and/or flip an existing image.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of an image.

method = 'method_example' # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY).

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Rotate and/or flip an existing image.
  result = api_instance.rotate_flip_image(name, method, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->rotate_flip_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of an image. | 
 **method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **save_image_as**
> File save_image_as(name, format, opts)

Export existing image to another format.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of image.

format = 'format_example' # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.

opts = { 
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Export existing image to another format.
  result = api_instance.save_image_as(name, format, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->save_image_as: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of image. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **storage_exists**
> StorageExist storage_exists(storage_name)

Check if storage exists

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

storage_name = 'storage_name_example' # String | Storage name


begin
  #Check if storage exists
  result = api_instance.storage_exists(storage_name)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->storage_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_image**
> File update_image(name, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, opts)

Perform scaling, cropping and flipping of an existing image in a single request.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

name = 'name_example' # String | Filename of an image.

new_width = 56 # Integer | New width of the scaled image.

new_height = 56 # Integer | New height of the scaled image.

x = 56 # Integer | X position of start point for cropping rectangle.

y = 56 # Integer | Y position of start point for cropping rectangle.

rect_width = 56 # Integer | Width of cropping rectangle.

rect_height = 56 # Integer | Height of cropping rectangle.

rotate_flip_method = 'rotate_flip_method_example' # String | RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.

opts = { 
  format: 'format_example', # String | Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
  folder: 'folder_example', # String | Folder with image to process.
  storage: 'storage_example' # String | Your Aspose Cloud Storage name.
}

begin
  #Perform scaling, cropping and flipping of an existing image in a single request.
  result = api_instance.update_image(name, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->update_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Filename of an image. | 
 **new_width** | **Integer**| New width of the scaled image. | 
 **new_height** | **Integer**| New height of the scaled image. | 
 **x** | **Integer**| X position of start point for cropping rectangle. | 
 **y** | **Integer**| Y position of start point for cropping rectangle. | 
 **rect_width** | **Integer**| Width of cropping rectangle. | 
 **rect_height** | **Integer**| Height of cropping rectangle. | 
 **rotate_flip_method** | **String**| RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone. | 
 **format** | **String**| Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases. | [optional] 
 **folder** | **String**| Folder with image to process. | [optional] 
 **storage** | **String**| Your Aspose Cloud Storage name. | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_image_features**
> update_image_features(search_context_id, image_id, opts)

Update images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

search_context_id = 'search_context_id_example' # String | The search context identifier.

image_id = 'image_id_example' # String | The image identifier.

opts = { 
  image_data: File.new('/path/to/file.txt'), # File | Input image
  folder: 'folder_example', # String | The folder.
  storage: 'storage_example' # String | The storage.
}

begin
  #Update images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
  api_instance.update_image_features(search_context_id, image_id, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->update_image_features: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| The search context identifier. | 
 **image_id** | **String**| The image identifier. | 
 **image_data** | **File**| Input image | [optional] 
 **folder** | **String**| The folder. | [optional] 
 **storage** | **String**| The storage. | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **update_search_image**
> update_search_image(search_context_id, image_id, opts)

Update image and images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
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
  #Update image and images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
  api_instance.update_search_image(search_context_id, image_id, opts)
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->update_search_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context_id** | **String**| Search context identifier. | 
 **image_id** | **String**| Image identifier. | 
 **image_data** | **File**| Input image | [optional] 
 **folder** | **String**| Folder. | [optional] 
 **storage** | **String**| Storage | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **upload_file**
> FilesUploadResult upload_file(path, file, opts)

Upload file

### Example
```ruby
# load the gem
require 'aspose-imaging-cloud'
# setup authorization
AsposeImagingCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeImagingCloud::ImagingApi.new

path = 'path_example' # String | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             

file = File.new('/path/to/file.txt') # File | File to upload

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Upload file
  result = api_instance.upload_file(path, file, opts)
  p result
rescue AsposeImagingCloud::ApiError => e
  puts "Exception when calling ImagingApi->upload_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json




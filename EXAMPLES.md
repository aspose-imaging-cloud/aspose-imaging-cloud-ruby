### Imaging - Save as: convert image from storage to another format
```ruby
# optional parameters are base URL, API version and debug mode
imaging_api = ImagingApi.new('yourAppKey', 'yourAppSid')

begin
  # upload local image to storage

  result = imaging_api.upload_file(AsposeImagingCloud::UploadFileRequest.new('ExampleFolderRuby/inputImage.png', File.new(File.join(local_test_folder, 'test.png'), "r"), test_storage))

  # inspect result.Errors list if there were any
  # inspect result.Uploaded list for uploaded file names

  # convert image from storage to JPEG
  converted_image = imaging_api.save_image_as(AsposeImagingCloud::SaveImageAsRequest.new('inputImage.png', 'jpg', 'ExampleFolderRuby', test_storage))
  # process resulting image
  # for example, save it to storage

  result = imaging_api.upload_file(AsposeImagingCloud::UploadFileRequest.new('ExampleFolderRuby/resultImage.jpg', converted_image, test_storage))

  # inspect result.Errors list if there were any
  # inspect result.Uploaded list for uploaded file names

ensure
  # remove files from storage
  imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new('ExampleFolderRuby/inputImage.png', test_storage))
  imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new('ExampleFolderRuby/resultImage.jpg',test_storage))
end
```

### Imaging - Save as: convert image from request stream to another format
```ruby
# optional parameters are base URL, API version and debug mode
imaging_api = ImagingApi.new('yourAppKey', 'yourAppSid')

begin
  # convert image from request stream to JPEG and save it to storage
  # please, use outPath parameter for saving the result to storage
  imaging_api.create_saved_image_as(AsposeImagingCloud::CreateSavedImageAsRequest.new(File.open(local_input_image), 'jpg', remote_result_image, test_storage))

  # download saved image from storage
  saved_file = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new(remote_result_image, test_storage))
  # process resulting image from storage

  # convert image from request stream to JPEG and read it from
  # resulting stream
  image_stream = imaging_api.create_saved_image_as(AsposeImagingCloud::CreateSavedImageAsRequest.new(File.open(local_input_image), 'jpg', nil, test_storage))
  # process resulting image from response stream
ensure
  imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(remote_result_image, test_storage))
end
```

### Imaging.AI - Compare two images
```ruby
# optional parameters are base URL, API version and debug mode
imaging_api = ImagingApi.new('yourAppKey', 'yourAppSid')

# create search context or use existing search context ID if search context was
# created earlier
api_response = imaging_api.create_image_search(CreateImageSearchRequest.new())
search_context_id = api_response.id

# specify images for comparing (image ID is a path to image in storage)
image_in_storage1 = 'WorkFolder\\Image1.jpg'
image_in_storage2 = 'WorkFolder\\Image2.jpg'

# compare images
response = imaging_api.compare_images(CompareImagesRequest.new(search_context_id, image_in_storage1, nil, image_in_storage2))
similarity = response.results[0].similarity
```

### Imaging.AI - Find similar images
```ruby
# optional parameters are base URL, API version and debug mode
imaging_api = ImagingApi.new('yourAppKey', 'yourAppSid')

# create search context or use existing search context ID if search context was
# created earlier
api_response = imaging_api.create_image_search(CreateImageSearchRequest.new())
search_context_id = api_response.id

# extract images features if it was not done before
imaging_api.create_image_features(CreateImageFeaturesRequest.new(
    search_context_id, nil, nil, 'WorkFolder'))

# wait 'till image features extraction is completed
while imaging_api.get_image_search_status(
        GetImageSearchStatusRequest.new(
            search_context_id)).search_status != 'Idle'
    sleep(10)
end 

image_from_storage = true

if image_from_storage
    # use search image from storage
    storage_image_id = 'searchImage.jpg'
    results = imaging_api.find_similar_images(
        FindSimilarImagesRequest.new(api_response.id, 90, 5, nil,
                                 storage_image_id))
else
    # load search image
    results = imaging_api.find_similar_images(
        FindSimilarImagesRequest.new(api_response.id, 90, 5,
                                 'localInputImage.jpg'))
end

results.results.each do |search_result|
    print("ImageName: #{search_result.image_id}, Similarity: #{search_result.similarity}")
end
```

### Imaging.AI - Find duplicate images
```ruby
# optional parameters are base URL, API version and debug mode
imaging_api = ImagingApi.new('yourAppKey', 'yourAppSid')

# create search context or use existing search context ID if search context was
# created earlier
api_response = imaging_api.create_image_search(CreateImageSearchRequest.new())
search_context_id = api_response.id

# extract images features if it was not done before
imaging_api.create_image_features(CreateImageFeaturesRequest.new(
    search_context_id, nil, nil, 'WorkFolder'))

# wait 'till image features extraction is completed
while imaging_api.get_image_search_status(
        GetImageSearchStatusRequest.new(
            search_context_id)).search_status != 'Idle'
    sleep(10)
end

# request finding duplicates
response = imaging_api.find_image_duplicates(
    FindImageDuplicatesRequest.new(search_context_id, 90))

# process duplicates search result
response.duplicates.each do |duplicates|
    print('Duplicates:')
    duplicates.duplicate_images.each do |duplicate|
        print("ImageName: #{duplicate.image_id}, Similarity: {duplicate.similarity}")
  end
end
```

### Imaging.AI - Search images by tags
```ruby
# optional parameters are base URL, API version and debug mode
imaging_api = ImagingApi.new('yourAppKey', 'yourAppSid')

# create search context or use existing search context ID if search context was
# created earlier
api_response = imaging_api.create_image_search(CreateImageSearchRequest.new())
search_context_id = api_response.id

# extract images features if it was not done before
imaging_api.create_image_features(CreateImageFeaturesRequest.new(
    search_context_id, nil, nil, images_folder='WorkFolder'))

# wait 'till image features extraction is completed
while imaging_api.get_image_search_status(
        GetImageSearchStatusRequest.new(
            search_context_id)).search_status != 'Idle'
    sleep(10)
end

tag = 'MyTag'
# load tag image
imaging_api.create_image_tag(
    CreateImageTagRequest.new('testImage.jpg', search_context_id, tag))

# search images by tags 
search_tags = JSON.dump([tag])
response = imaging_api.find_images_by_tags(
    FindImagesByTagsRequest.new(search_tags, search_context_id, 90, 10))

# process search results
response.results.each do |search_result|
    print("ImageName: #{search_result.image_id}, Similarity: {search_result.similarity}")
end
```

### Imaging.AI - Delete search context
```ruby
# search context is stored in the storage, and in case if search context is not
# needed anymore it should be removed
imaging_api.delete_image_search(DeleteImageSearchRequest.new(search_context_id))
```

### Exception handling and error codes
```ruby
begin
    imaging_api.delete_image_search(DeleteImageSearchRequest(search_context_id))
rescue StandardError => ex
    print(ex.code)
    print(ex.message)
    # inspect ex.error
 end 
```
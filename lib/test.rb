require "google/cloud/vision"
require 'dotenv'
#Dotenv.load

image_annotator = Google::Cloud::Vision::ImageAnnotator.new

response = image_annotator.text_detection(
  image: "spar.jpg",
  max_results: 1 # optional, defaults to 10
)


text_detected = [ ]
response.responses.each do |res|
  res.text_annotations.each do |text|
    text_detected << text.description
  end
end

puts text_detected[0]
require "image_processing/mini_magick"

class CoverUploader < Shrine
  Attacher.derivatives do |original|
    magick = ImageProcessing::MiniMagick.source(original)
    {
      thumbnail: magick.resize_to_limit!(300, 400)
    }
  end  
end

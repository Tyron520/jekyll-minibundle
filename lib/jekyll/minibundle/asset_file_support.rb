require 'fileutils'

module Jekyll::Minibundle
  module AssetFileSupport
    def static_file!(site)
      static_file_exists = site.static_files.find { |f| f.path == path }
      site.static_files << self unless static_file_exists
    end

    def write_destination(gensite_dir)
      destination_path = destination gensite_dir
      FileUtils.mkdir_p File.dirname(destination_path)
      FileUtils.cp path, destination_path
    end
  end
end

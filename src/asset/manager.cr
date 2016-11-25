require "../lib_android/asset_manager"
require "./dir"
require "./asset"

module Android
  class Asset
    alias Mode = LibAndroid::AssetMode

    class Manager
      protected def initialize(@asset_manager : LibAndroid::AssetManager*)
      end

      def open_dir(path)
        Dir.new(LibAndroid.assetManager_openDir(self, path))
      end

      def open(path, mode : Mode = Mode::UNKNOWN)
        Asset.new(LibAndroid.assetManager_open(self, path, mode))
      end

      def to_unsafe
        @asset_manager
      end
    end
  end
end

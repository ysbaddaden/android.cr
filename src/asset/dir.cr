require "../lib_android/asset_manager"

module Android
  class Asset
    class Dir
      protected def initialize(@asset_dir : LibAndroid::AssetDir*)
        @closed = false
      end

      def finalize
        close unless closed?
      end

      def next
        String.new(LibAndroid.assetDir_getNextFileName(self))
      end

      def rewind
        LibAndroid.assetDir_rewind(self)
      end

      def close
        LibAndroid.assetDir_close(self)
        @closed = true
      end

      def closed?
        @closed
      end

      def to_unsafe
        @asset_dir
      end
    end
  end
end

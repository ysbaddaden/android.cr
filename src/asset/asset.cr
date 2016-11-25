require "../lib_android/asset_manager"

module Android
  class Asset
    # TODO: include IO?
    # TODO: include IO::Buffered?

    protected def initialize(@asset : Asset)
      @closed = false
    end

    def finalize
      close unless closed?
    end

    def read(slice : Slice(UInt8))
      LibAndroid.asset_read(self, slice.to_unsafe.as(Void*), slice.size)
    end

    def seek(offset, whence : IO::Seek = IO::Seek::Set)
      LibAndroid.asset_seek(self, offset, whence)
    end

    def close
      LibAndroid.asset_close(self)
      @closed = true
    end

    def closed?
      @closed
    end

    def size
      LibAndroid.asset_getLength(self).to_i
    end

    def remaining
      LibAndroid.asset_getRemainingLength(self).to_i
    end

    #def to_io
    #  fd = LibAndroid.asset_openFileDescriptor(self, out start, out size)
    #  IO::FileDescriptor.new(fd) unless fd < 0
    #end

    def allocated?
      LibAndroid.asset_isAllocated(self) == 1
    end

    def to_unsafe
      @asset
    end
  end
end

lib LibAndroid
  alias OffT = LibC::OffT
  #alias Off64T = LibC::Off64T

  enum AssetMode
    UNKNOWN   = 0
    RANDOM    = 1
    STREAMING = 2
    BUFFER    = 3
  end

  type AssetManager = Void
  type AssetDir = Void
  type Asset = Void

  fun assetManager_openDir(mgr : AssetManager*, dirName : Char*) : AssetDir*
  fun assetManager_open(mgr : AssetManager*, filename : Char*, mode : AssetMode) : Asset*

  fun assetDir_getNextFileName(assetDir : AssetDir*) : Char*
  fun assetDir_rewind(assetDir : AssetDir*)
  fun assetDir_close(assetDir : AssetDir*)

  fun asset_read(asset : Asset*, buf : Void*, count : SizeT) : Int
  fun asset_seek(asset : Asset*, offset : OffT, whence : Int) : OffT
  #fun asset_seek64(asset : Asset*, offset : Off64T, whence : Int) : Off64T
  fun asset_close(asset : Asset*)
  fun asset_getBuffer(asset : Asset*) : Void*
  fun asset_getLength(asset : Asset*) : OffT
  #fun asset_getLength64(asset : Asset*) : Off64T
  fun asset_getRemainingLength(asset : Asset*) : OffT
  #fun asset_getRemainingLength64(asset : Asset*) : Off64T
  fun asset_openFileDescriptor(asset : Asset*, outStart : OffT*, outLength : OffT*) : Int
  #fun asset_openFileDescriptor64(asset : Asset*, outStart : Off64T*, outLength : Off64T*) : Int
  fun asset_isAllocated(asset : Asset*) : Int
end

{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Half where

import Foreign
import Foreign.C.Types
import Torch.Types.TH
import Data.Word
import Data.Int

-- | c_THC_nativeHalfInstructions :  state -> int
foreign import ccall "THCHalf.h THC_nativeHalfInstructions"
  c_THC_nativeHalfInstructions :: Ptr CTHCudaState -> IO CInt

-- | c_THC_fastHalfInstructions :  state -> int
foreign import ccall "THCHalf.h THC_fastHalfInstructions"
  c_THC_fastHalfInstructions :: Ptr CTHCudaState -> IO CInt

-- | p_THC_nativeHalfInstructions : Pointer to function : state -> int
foreign import ccall "THCHalf.h &THC_nativeHalfInstructions"
  p_THC_nativeHalfInstructions :: FunPtr (Ptr CTHCudaState -> IO CInt)

-- | p_THC_fastHalfInstructions : Pointer to function : state -> int
foreign import ccall "THCHalf.h &THC_fastHalfInstructions"
  p_THC_fastHalfInstructions :: FunPtr (Ptr CTHCudaState -> IO CInt)
{-# LANGUAGE ForeignFunctionInterface #-}
module THLongVector
  ( c_fill
  , c_cadd
  , c_adds
  , c_cmul
  , c_muls
  , c_cdiv
  , c_divs
  , c_copy
  , c_neg
  , c_normal_fill
  , c_abs
  , c_vectorDispatchInit
  , p_fill
  , p_cadd
  , p_adds
  , p_cmul
  , p_muls
  , p_cdiv
  , p_divs
  , p_copy
  , p_neg
  , p_normal_fill
  , p_abs
  , p_vectorDispatchInit
  ) where

import Foreign
import Foreign.C.Types
import THTypes
import Data.Word
import Data.Int

-- | c_fill :  x c n -> void
foreign import ccall "THVector.h THLongVector_fill"
  c_fill :: Ptr CLong -> CLong -> CPtrdiff -> IO ()

-- | c_cadd :  z x y c n -> void
foreign import ccall "THVector.h THLongVector_cadd"
  c_cadd :: Ptr CLong -> Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ()

-- | c_adds :  y x c n -> void
foreign import ccall "THVector.h THLongVector_adds"
  c_adds :: Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ()

-- | c_cmul :  z x y n -> void
foreign import ccall "THVector.h THLongVector_cmul"
  c_cmul :: Ptr CLong -> Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ()

-- | c_muls :  y x c n -> void
foreign import ccall "THVector.h THLongVector_muls"
  c_muls :: Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ()

-- | c_cdiv :  z x y n -> void
foreign import ccall "THVector.h THLongVector_cdiv"
  c_cdiv :: Ptr CLong -> Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ()

-- | c_divs :  y x c n -> void
foreign import ccall "THVector.h THLongVector_divs"
  c_divs :: Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ()

-- | c_copy :  y x n -> void
foreign import ccall "THVector.h THLongVector_copy"
  c_copy :: Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ()

-- | c_neg :  y x n -> void
foreign import ccall "THVector.h THLongVector_neg"
  c_neg :: Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ()

-- | c_normal_fill :  data size generator mean stddev -> void
foreign import ccall "THVector.h THLongVector_normal_fill"
  c_normal_fill :: Ptr CLong -> CLLong -> Ptr CTHGenerator -> CLong -> CLong -> IO ()

-- | c_abs :  y x n -> void
foreign import ccall "THVector.h THLongVector_abs"
  c_abs :: Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ()

-- | c_vectorDispatchInit :   -> void
foreign import ccall "THVector.h THLongVector_vectorDispatchInit"
  c_vectorDispatchInit :: IO ()

-- | p_fill : Pointer to function : x c n -> void
foreign import ccall "THVector.h &THLongVector_fill"
  p_fill :: FunPtr (Ptr CLong -> CLong -> CPtrdiff -> IO ())

-- | p_cadd : Pointer to function : z x y c n -> void
foreign import ccall "THVector.h &THLongVector_cadd"
  p_cadd :: FunPtr (Ptr CLong -> Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ())

-- | p_adds : Pointer to function : y x c n -> void
foreign import ccall "THVector.h &THLongVector_adds"
  p_adds :: FunPtr (Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ())

-- | p_cmul : Pointer to function : z x y n -> void
foreign import ccall "THVector.h &THLongVector_cmul"
  p_cmul :: FunPtr (Ptr CLong -> Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ())

-- | p_muls : Pointer to function : y x c n -> void
foreign import ccall "THVector.h &THLongVector_muls"
  p_muls :: FunPtr (Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ())

-- | p_cdiv : Pointer to function : z x y n -> void
foreign import ccall "THVector.h &THLongVector_cdiv"
  p_cdiv :: FunPtr (Ptr CLong -> Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ())

-- | p_divs : Pointer to function : y x c n -> void
foreign import ccall "THVector.h &THLongVector_divs"
  p_divs :: FunPtr (Ptr CLong -> Ptr CLong -> CLong -> CPtrdiff -> IO ())

-- | p_copy : Pointer to function : y x n -> void
foreign import ccall "THVector.h &THLongVector_copy"
  p_copy :: FunPtr (Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ())

-- | p_neg : Pointer to function : y x n -> void
foreign import ccall "THVector.h &THLongVector_neg"
  p_neg :: FunPtr (Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ())

-- | p_normal_fill : Pointer to function : data size generator mean stddev -> void
foreign import ccall "THVector.h &THLongVector_normal_fill"
  p_normal_fill :: FunPtr (Ptr CLong -> CLLong -> Ptr CTHGenerator -> CLong -> CLong -> IO ())

-- | p_abs : Pointer to function : y x n -> void
foreign import ccall "THVector.h &THLongVector_abs"
  p_abs :: FunPtr (Ptr CLong -> Ptr CLong -> CPtrdiff -> IO ())

-- | p_vectorDispatchInit : Pointer to function :  -> void
foreign import ccall "THVector.h &THLongVector_vectorDispatchInit"
  p_vectorDispatchInit :: FunPtr (IO ())
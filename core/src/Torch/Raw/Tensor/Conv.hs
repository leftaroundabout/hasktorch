module Torch.Raw.Tensor.Conv
  ( THTensorConv(..)
  , module X
  ) where

import Torch.Raw.Internal as X

-- CTHDoubleTensor CDouble
class THTensorConv t where
  -- c_validXCorr2Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_validConv2Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_fullXCorr2Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_fullConv2Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_validXCorr2DRevptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  c_conv2DRevger :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> IO ()
  c_conv2DRevgerm :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> IO ()
  c_conv2Dger :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  c_conv2Dmv :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  c_conv2Dmm :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  c_conv2Dmul :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  c_conv2Dcmul :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  -- c_validXCorr3Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_validConv3Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_fullXCorr3Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_fullConv3Dptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  -- c_validXCorr3DRevptr :: Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ()
  c_conv3DRevger :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> IO ()
  c_conv3Dger :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  c_conv3Dmv :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  c_conv3Dmul :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  c_conv3Dcmul :: Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ()
  -- p_validXCorr2Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_validConv2Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_fullXCorr2Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_fullConv2Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_validXCorr2DRevptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  p_conv2DRevger :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> IO ())
  p_conv2DRevgerm :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> IO ())
  p_conv2Dger :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  p_conv2Dmv :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  p_conv2Dmm :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  p_conv2Dmul :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  p_conv2Dcmul :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  -- p_validXCorr3Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_validConv3Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_fullXCorr3Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_fullConv3Dptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  -- p_validXCorr3DRevptr :: FunPtr (Ptr CDouble -> CDouble -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> Ptr CDouble -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO ())
  p_conv3DRevger :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> IO ())
  p_conv3Dger :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  p_conv3Dmv :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  p_conv3Dmul :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())
  p_conv3Dcmul :: FunPtr (Ptr t -> CDouble -> CDouble -> Ptr t -> Ptr t -> CLLong -> CLLong -> CLLong -> Ptr CChar -> Ptr CChar -> IO ())

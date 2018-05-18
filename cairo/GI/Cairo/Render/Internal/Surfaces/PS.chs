{-# LANGUAGE CPP #-}
-----------------------------------------------------------------------------
-- |
-- Module      :  GI.Cairo.Render.Internal.Surfaces.PS
-- Copyright   :  (c) Paolo Martini 2005
-- License     :  BSD-style (see doc/COPYRIGHT)
--
-- Maintainer  :  p.martini@neuralnoise.com
-- Stability   :  experimental
-- Portability :  portable
--
-- Rendering PS documents.
-----------------------------------------------------------------------------

#include "gi-cairo.h" 

module GI.Cairo.Render.Internal.Surfaces.PS where

{#import GI.Cairo.Render.Types#}

import Foreign
import Foreign.C

import Data.GI.Base (withManagedPtr)  

{#context lib="cairo" prefix="cairo"#}

#ifdef CAIRO_HAS_PS_SURFACE

{#fun ps_surface_create  as psSurfaceCreate { withCAString* `FilePath', `Double', `Double' } -> `Surface' mkSurface*#}

#if CAIRO_CHECK_VERSION(1,2,0)
{#fun cairo_ps_surface_set_size as psSurfaceSetSize { withManagedPtr* `Surface', `Double', `Double' } -> `()'#}
#endif

#endif

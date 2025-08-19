--- src/video/cocoa/SDL_cocoawindow.m.orig	2025-08-19 15:17:26
+++ src/video/cocoa/SDL_cocoawindow.m	2025-08-19 15:18:38
@@ -18,6 +18,7 @@
      misrepresented as being the original software.
   3. This notice may not be removed or altered from any source distribution.
 */
+#include <AvailabilityMacros.h>
 #include "../../SDL_internal.h"
 
 #ifdef SDL_VIDEO_DRIVER_COCOA

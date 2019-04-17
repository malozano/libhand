#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "tinyxml" for configuration ""
set_property(TARGET tinyxml APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(tinyxml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "/home/mvrlab/Documentos/libhand/dist/libtinyxml.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS tinyxml )
list(APPEND _IMPORT_CHECK_FILES_FOR_tinyxml "/home/mvrlab/Documentos/libhand/dist/libtinyxml.a" )

# Import target "dot_sceneloader" for configuration ""
set_property(TARGET dot_sceneloader APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(dot_sceneloader PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "tinyxml"
  IMPORTED_LOCATION_NOCONFIG "/home/mvrlab/Documentos/libhand/dist/libdot_sceneloader.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS dot_sceneloader )
list(APPEND _IMPORT_CHECK_FILES_FOR_dot_sceneloader "/home/mvrlab/Documentos/libhand/dist/libdot_sceneloader.a" )

# Import target "hand_hog" for configuration ""
set_property(TARGET hand_hog APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(hand_hog PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "hand_utils;opencv_calib3d;opencv_core;opencv_features2d;opencv_flann;opencv_highgui;opencv_imgcodecs;opencv_imgproc;opencv_ml;opencv_objdetect;opencv_photo;opencv_shape;opencv_stitching;opencv_superres;opencv_video;opencv_videoio;opencv_videostab;opencv_viz;opencv_aruco;opencv_bgsegm;opencv_bioinspired;opencv_ccalib;opencv_datasets;opencv_dpm;opencv_face;opencv_freetype;opencv_fuzzy;opencv_hdf;opencv_line_descriptor;opencv_optflow;opencv_phase_unwrapping;opencv_plot;opencv_reg;opencv_rgbd;opencv_saliency;opencv_stereo;opencv_structured_light;opencv_surface_matching;opencv_text;opencv_ximgproc;opencv_xobjdetect;opencv_xphoto;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libpthread.so"
  IMPORTED_LOCATION_NOCONFIG "/home/mvrlab/Documentos/libhand/dist/libhand_hog.so"
  IMPORTED_SONAME_NOCONFIG "libhand_hog.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS hand_hog )
list(APPEND _IMPORT_CHECK_FILES_FOR_hand_hog "/home/mvrlab/Documentos/libhand/dist/libhand_hog.so" )

# Import target "hand_renderer" for configuration ""
set_property(TARGET hand_renderer APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(hand_renderer PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "dot_sceneloader;hand_utils;opencv_calib3d;opencv_core;opencv_features2d;opencv_flann;opencv_highgui;opencv_imgcodecs;opencv_imgproc;opencv_ml;opencv_objdetect;opencv_photo;opencv_shape;opencv_stitching;opencv_superres;opencv_video;opencv_videoio;opencv_videostab;opencv_viz;opencv_aruco;opencv_bgsegm;opencv_bioinspired;opencv_ccalib;opencv_datasets;opencv_dpm;opencv_face;opencv_freetype;opencv_fuzzy;opencv_hdf;opencv_line_descriptor;opencv_optflow;opencv_phase_unwrapping;opencv_plot;opencv_reg;opencv_rgbd;opencv_saliency;opencv_stereo;opencv_structured_light;opencv_surface_matching;opencv_text;opencv_ximgproc;opencv_xobjdetect;opencv_xphoto;/usr/lib/x86_64-linux-gnu/libOgreMain.so;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libpthread.so;/usr/lib/x86_64-linux-gnu/libOgreMain.so"
  IMPORTED_LOCATION_NOCONFIG "/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so"
  IMPORTED_SONAME_NOCONFIG "libhand_renderer.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS hand_renderer )
list(APPEND _IMPORT_CHECK_FILES_FOR_hand_renderer "/home/mvrlab/Documentos/libhand/dist/libhand_renderer.so" )

# Import target "hand_utils" for configuration ""
set_property(TARGET hand_utils APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(hand_utils PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "opencv_calib3d;opencv_core;opencv_features2d;opencv_flann;opencv_highgui;opencv_imgcodecs;opencv_imgproc;opencv_ml;opencv_objdetect;opencv_photo;opencv_shape;opencv_stitching;opencv_superres;opencv_video;opencv_videoio;opencv_videostab;opencv_viz;opencv_aruco;opencv_bgsegm;opencv_bioinspired;opencv_ccalib;opencv_datasets;opencv_dpm;opencv_face;opencv_freetype;opencv_fuzzy;opencv_hdf;opencv_line_descriptor;opencv_optflow;opencv_phase_unwrapping;opencv_plot;opencv_reg;opencv_rgbd;opencv_saliency;opencv_stereo;opencv_structured_light;opencv_surface_matching;opencv_text;opencv_ximgproc;opencv_xobjdetect;opencv_xphoto;/usr/lib/x86_64-linux-gnu/libboost_thread.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libpthread.so;-ldl -lXt -lboost_filesystem -lboost_system"
  IMPORTED_LOCATION_NOCONFIG "/home/mvrlab/Documentos/libhand/dist/libhand_utils.so"
  IMPORTED_SONAME_NOCONFIG "libhand_utils.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS hand_utils )
list(APPEND _IMPORT_CHECK_FILES_FOR_hand_utils "/home/mvrlab/Documentos/libhand/dist/libhand_utils.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)

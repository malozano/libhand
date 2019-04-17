CMAKE_MINIMUM_REQUIRED (VERSION 2.8.6)

include("${CMAKE_CURRENT_LIST_DIR}/LibHand-export.cmake")

SET(LibHand_FOUND TRUE)
SET(LibHand_INCLUDE_DIRS /home/mvrlab/Documentos/libhand/hand_cpp/source;/usr/include;/usr/include;/usr/include/opencv;/usr/include/OGRE;/usr/include;/usr/include;/usr/include/OGRE/RenderSystems/GL;/usr/include/OGRE/Plugins/BSPSceneManager;/usr/include/OGRE/Plugins/OctreeSceneManager;/usr/include/OGRE/Plugins/PCZSceneManager;/usr/include/OGRE/Plugins/ParticleFX)
SET(LibHand_LIBRARIES -ldl -lXt -lboost_filesystem -lboost_system hand_hog hand_renderer hand_utils)

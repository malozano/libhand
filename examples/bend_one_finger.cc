// This example will show a hand in a default pose
// and then bend one joint and show the hand again
//
// This is a line-by-line code example

# include <string>

// We will use OpenCV, so include the standard OpenCV header
# include "opencv2/opencv.hpp"

// This is our little library for showing file dialogs
# include "file_dialog.h"

// We need the HandPose data structure
# include "hand_pose.h"

// ..the HandRenderer class which is used to render a hand
# include "hand_renderer.h"

# include "hand_camera_spec.h"

// ..and SceneSpec which tells us where the hand 3D scene data
// is located on disk, and how the hand 3D object relates to our
// model of joints.
# include "scene_spec.h"

// Don't forget to mention the libhand namespace
using namespace libhand;

using namespace std;

float libhand_to_radians(int value) {
    return M_PI*((float)value-360.0)/360;
}

int main(int argc, char **argv) {
  // Make sure to always catch exceptions around the LibHand code.
  // LibHand uses a "RAII" pattern to provide for a clean shutdown in
  // case of any errors.
  try {
    // Setup the hand renderer
    HandRenderer hand_renderer;
    hand_renderer.Setup();
    hand_renderer.SetRenderSize(224,224);

    // Process the scene spec file
    string file_name = "../../hand_model/scene_spec.yml"; //dialog.Open();
    SceneSpec scene_spec(file_name);

    // Tell the renderer to load the scene
    hand_renderer.LoadScene(scene_spec);

    // Configure camera
    HandCameraSpec camera(20, libhand_to_radians(440), libhand_to_radians(400), libhand_to_radians(500));
    hand_renderer.set_camera_spec(camera);

    // Now we render a hand using a default pose
    hand_renderer.RenderHand();

    // We can get an OpenCV matrix from the rendered hand image
    cv::Mat pic = hand_renderer.pixel_buffer_cv();

    // And tell OpenCV to show the rendered hand
    cv::imwrite("prueba1.png",pic);

    // Now we're going to change the hand pose and render again
    // The hand pose depends on the number of bones, which is specified
    // by the scene spec file.
    FullHandPose hand_pose(scene_spec.num_bones());

    // We will bend the first joint, joint 0, by PI/2 radians (90 degrees)
    hand_pose.bend(0) += 3.14159 / 2;
    hand_renderer.SetHandPose(hand_pose);

    // Then we will render the hand again and show it to the user.
    hand_renderer.RenderHand();
    cv::imwrite("prueba2.png",pic);
  } catch (const std::exception &e) {
    cerr << "Exception: " << e.what() << endl;
  }

  return 0;
}

/*
int main(int argc, char **argv) {
  // Make sure to always catch exceptions around the LibHand code.
  // LibHand uses a "RAII" pattern to provide for a clean shutdown in
  // case of any errors.
  try {
    // Setup the hand renderer
    HandRenderer hand_renderer;
    hand_renderer.Setup();

    // Ask the user to show the location of the scene spec file
    //FileDialog dialog;
    dialog.SetTitle("Please select a scene spec file");
    string file_name = dialog.Open();

    // Process the scene spec file
    SceneSpec scene_spec(file_name);

    // Tell the renderer to load the scene
    hand_renderer.LoadScene(scene_spec);

    // Now we render a hand using a default pose
    hand_renderer.RenderHand();

    // Open a window through OpenCV
    //string win_name = "Hand Pic";
    cv::namedWindow(win_name);

    // We can get an OpenCV matrix from the rendered hand image
    cv::Mat pic = hand_renderer.pixel_buffer_cv();

    // And tell OpenCV to show the rendered hand
    cv::imwrite("prueba1.png",pic);
    cv::imshow(win_name, pic);
    cv::waitKey();

    // Now we're going to change the hand pose and render again
    // The hand pose depends on the number of bones, which is specified
    // by the scene spec file.
    FullHandPose hand_pose(scene_spec.num_bones());

    // We will bend the first joint, joint 0, by PI/2 radians (90 degrees)
    hand_pose.bend(0) += 3.14159 / 2;
    hand_renderer.SetHandPose(hand_pose);

    // Then we will render the hand again and show it to the user.
    hand_renderer.RenderHand();
    cv::imwrite("prueba2.png",pic);
    cv::imshow(win_name, pic);
    cv::waitKey();
  } catch (const std::exception &e) {
    cerr << "Exception: " << e.what() << endl;
  }

  return 0;
}
*/

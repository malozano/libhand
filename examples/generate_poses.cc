// This example will show a hand in a default pose
// and then bend one joint and show the hand again
//
// This is a line-by-line code example

# include <string>
#include <fstream>
#include <iostream>

// We will use OpenCV, so include the standard OpenCV header
# include "opencv2/opencv.hpp"
# include "image_utils.h"
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

#define NUM_BONES   18

// Don't forget to mention the libhand namespace
using namespace libhand;

using namespace std;

float libhand_to_radians(int value) {
    return M_PI*((float)value-360.0)/360;
}

// Input params

std::string arg_input;
std::string arg_output_path = "./";
int arg_render_w = 1024;
int arg_render_h = 1024;
int arg_num_images = 5;
int arg_hand_class_id = 0;
int arg_point_class_id = 1;
bool arg_debug = false;
std::string arg_img_filename_template = "img%05d.png";

// Random generation params

float bend_avg[NUM_BONES];
float side_avg[NUM_BONES];
float twist_avg[NUM_BONES];
float bend_var[NUM_BONES];
float side_var[NUM_BONES];
float twist_var[NUM_BONES];

float generate_rand(float var) {
  float value = var * (2.0f * std::rand() / RAND_MAX - 1.0f) ;
  return value;
}

void configure_pose(FullHandPose &hand_pose) {
  for(int i=0;i<NUM_BONES;i++) {
    float bend = bend_avg[i] + generate_rand(bend_var[i]);
    float side = side_avg[i] + generate_rand(side_var[i]);
    float twist = twist_avg[i] + generate_rand(twist_var[i]);

    hand_pose.bend(i) = bend;
    hand_pose.side(i) = side;
    hand_pose.twist(i) = twist;
  }
}

char* getCmdOption(char ** begin, char ** end, const std::string & option)
{
    char ** itr = std::find(begin, end, option);
    if (itr != end && ++itr != end)
    {
        return *itr;
    }
    return 0;
}

bool cmdOptionExists(char** begin, char** end, const std::string& option)
{
    return std::find(begin, end, option) != end;
}

void parseArgs(char** begin, char** end) {
    char *arg_value;

    if((arg_value=getCmdOption(begin, end, "-i"))!=NULL) {
        arg_input = std::string(arg_value);
    } else {
        cout << "Error: No input file specified." << endl;
        exit(0);
    }

    if((arg_value=getCmdOption(begin, end, "-o"))!=NULL) {
        arg_output_path = std::string(arg_value);
    }

    if((arg_value=getCmdOption(begin, end, "-n"))!=NULL) {
        arg_num_images = std::stoi(arg_value);
    }

    if((arg_value=getCmdOption(begin, end, "-w"))!=NULL) {
        arg_render_w = std::stoi(arg_value);
    }

    if((arg_value=getCmdOption(begin, end, "-h"))!=NULL) {
        arg_render_h = std::stoi(arg_value);
    }

    if((arg_value=getCmdOption(begin, end, "-c"))!=NULL) {
        arg_hand_class_id = std::stoi(arg_value);
    }

    if((arg_value=getCmdOption(begin, end, "-p"))!=NULL) {
        arg_point_class_id = std::stoi(arg_value);
    }

    if(cmdOptionExists(begin, end, "-d")) {
        arg_debug = true;
    }

}

void printUsage() {
  cout << "Usage: generate_poses -i <input parameters file> [OPTIONS]" << endl;
  cout << "Where OPTIONS are:" << endl;
  cout << "\t-o\tOutput path (default: " << arg_output_path << ")" << endl;
  cout << "\t-n\tNumber of images to generate (default: " << arg_num_images << ")" << endl;
  cout << "\t-w\tImage width (default: " << arg_render_w << ")" << endl;
  cout << "\t-o\tImage height (default: " << arg_render_h << ")" << endl;
  cout << "\t-c\tHand class ID for annotations file (default: " << arg_hand_class_id << ", use -1 to ignore)" << endl;
  cout << "\t-p\tPoint class ID for annotations file (default: " << arg_point_class_id << ", use -1 to ignore)" << endl;
  cout << "\t-d\tShow debug logs" << endl;

}

float degreesToRadians(float degrees) {
  return degrees * 3.14159 / 180.0;
}

void readInputFile(std::string filename) {
    std::ifstream ifs(filename);
      
    std::string line;
    std::string item;
    while(std::getline(ifs, line)) {
        std::istringstream iss(line);
        std::getline(iss, item, '\t');
        int index = std::stoi(item); 
        std::getline(iss, item, '\t');
        bend_avg[index] = degreesToRadians(std::stof(item)); 
        std::getline(iss, item, '\t');
        side_avg[index] = degreesToRadians(std::stof(item)); 
        std::getline(iss, item, '\t');
        twist_avg[index] = degreesToRadians(std::stof(item)); 
        std::getline(iss, item, '\t');
        bend_var[index] = degreesToRadians(std::stof(item)); 
        std::getline(iss, item, '\t');
        side_var[index] = degreesToRadians(std::stof(item)); 
        std::getline(iss, item, '\t');
        twist_var[index] = degreesToRadians(std::stof(item)); 
    } 
}

int main(int argc, char **argv) {
  // Make sure to always catch exceptions around the LibHand code.
  // LibHand uses a "RAII" pattern to provide for a clean shutdown in
  // case of any errors.
  try {
    parseArgs(argv, argv + argc);

    // Setup the hand renderer
    HandRenderer hand_renderer;
    hand_renderer.Setup();
    hand_renderer.SetRenderSize(arg_render_w,arg_render_h);

    // Read parameters
    readInputFile(arg_input);

    // Process the scene spec file
    string file_name = "../../hand_model/scene_spec.yml"; //dialog.Open();
    SceneSpec scene_spec(file_name);

    // Tell the renderer to load the scene
    hand_renderer.LoadScene(scene_spec);

    // Configure camera (r - distance, theta - pitch, phi - yaw, tilt)
    HandCameraSpec camera(10, libhand_to_radians(440), libhand_to_radians(400), libhand_to_radians(500));
    hand_renderer.set_camera_spec(camera);

    // Now we render a hand using a default pose
    hand_renderer.RenderHand();
    //cv::Rect rect1 = hand_renderer.GetBonePosition(11);

    // We can get an OpenCV matrix from the rendered hand image
    cv::Mat pic = hand_renderer.pixel_buffer_cv();
    //cv::rectangle(pic, rect1, cv::Scalar(255, 0, 0, 255));
      
    // And tell OpenCV to show the rendered hand
    //cv::imwrite("prueba1.png",pic);

    // Now we're going to change the hand pose and render again
    // The hand pose depends on the number of bones, which is specified
    // by the scene spec file.
    FullHandPose hand_pose(scene_spec.num_bones());

    //configure_pose(hand_pose);

    // We will bend the first joint, joint 0, by PI/2 radians (90 degrees)
    //hand_pose.bend(9) += 3.14159 / 2;
    //hand_pose.bend(17) += 3.14159 / 4;
    //hand_renderer.SetHandPose(hand_pose);
      
    // Then we will render the hand again and show it to the user.
    //hand_renderer.RenderHand();
    //cv::Mat image_mask = ImageUtils::MaskFromNonZero(pic);
    //cv::Rect rect2 = ImageUtils::FindBoundingBox(image_mask);
    //cv::rectangle(pic, rect2, cv::Scalar(255, 0, 0, 255));
      
    //cv::imwrite("prueba2.png",pic);

    std::ofstream annotations(arg_output_path + "/annotations.txt");

    for(int img_index=0; img_index<arg_num_images; img_index++) {
      configure_pose(hand_pose);
      hand_renderer.SetHandPose(hand_pose);
      hand_renderer.RenderHand();

      cv::Mat image_mask = ImageUtils::MaskFromNonZero(pic);
      cv::Rect rect_point = hand_renderer.GetBonePosition(11);
      cv::Rect rect_hand = ImageUtils::FindBoundingBox(image_mask);

      if(arg_debug) {
        cv::rectangle(pic, rect_point, cv::Scalar(0, 0, 255, 255));
        cv::rectangle(pic, rect_hand, cv::Scalar(255, 0, 0, 255));
      }

      std::string image_filename = arg_output_path + "/" + cv::format(arg_img_filename_template.c_str(), img_index);
      cv::imwrite(image_filename, pic);

      annotations << image_filename;
      if(arg_hand_class_id >= 0) {
        annotations << " " << rect_hand.x << "," << rect_hand.y;
        annotations << "," << (rect_hand.x+rect_hand.width) << "," << (rect_hand.y+rect_hand.height);
        annotations << "," << arg_hand_class_id;
      }
      if(arg_point_class_id >= 0) {
        annotations << " " << rect_point.x << "," << rect_point.y;
        annotations << "," << (rect_point.x+rect_point.width) << "," << (rect_point.y+rect_point.height);
        annotations << "," << arg_point_class_id;
      }
      annotations << endl;

    }

    annotations.close();

  } catch (const std::exception &e) {
    cerr << "Exception: " << e.what() << endl;
  }
  
  return 0;
}


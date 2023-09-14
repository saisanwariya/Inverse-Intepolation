# Table Lookup Approximation of arcsin(x)

## Overview

This MATLAB program implements a table lookup approximation of the function arcsin(x) for x in the range [0, π/4]. The approximation is achieved using inverse interpolation with cubic splines followed by Newton's method for correction. The process involves four main steps:

1. Set up Inverse Interpolation: Compute a set of y values within the range [0, √2/2] and then calculate the corresponding x values using y = sin(yvals).

2. Perform Inverse Interpolation: Set up a spline interpolation using the computed x and y values, ensuring proper endpoint conditions.

3. Inverse Sine Function: Create the arcsin function for computing arcsin(x) using Newton's method with initial guesses provided by the spline interpolation.

4. Test the Inverse Sine Function: Evaluate the accuracy of the approximation by comparing the computed values with the built-in MATLAB function asin(x).

## Program Functionality

The MATLAB program consists of the following components:

- `setup_inverse_interpolation.m`: This script sets up the inverse interpolation by computing y values and then generating the spline interpolation. It saves the spline in a .mat file.

- `arcsin.m`: This function calculates the arcsin(x) using Newton's method with initial guesses provided by the spline interpolation.

- `main.m`: This script tests the arcsin function by comparing its results with the built-in MATLAB function asin(x).

## Software Setup

Before running the program, you need to have MATLAB installed on your system.

### MATLAB Setup

1. Ensure you have MATLAB installed on your system.

2. Navigate to the project directory:

   ```bash
   cd inverse-Intepolation
   ```

## Running the Program

1. Open MATLAB.

2. Run the following command in the MATLAB or Octave console to set up the inverse interpolation:

   ```matlab
   setup_inverse_interpolation
   ```

   This will generate a .mat file containing the spline.

3. After setting up the interpolation, you can use the `arcsin` function to compute arcsin(x) for any value of x within the specified range.

   Example:

   ```matlab
   x = 0.2; % Replace with your desired value of x
   [result, y0] = arcsin(x);
   fprintf('arcsin(%f) = %f\n', x, result);
   ```

4. To test the accuracy of the approximation, run the following command:

   ```matlab
   test_arcsin_approximation
   ```

   This will generate three plots showing the approximation, error, and error with the built-in `asin` function.

## Notes

- Ensure that you have MATLAB installed and properly configured on your system.

- The program assumes MATLAB is capable of spline interpolation.

- The code provided is for educational purposes and to demonstrate the implementation of the arcsin(x) approximation. You are encouraged to explore and modify it as needed.

- Please refer to the Academic Integrity Statement at the beginning of this README file and ensure compliance with academic integrity policies when using this code as a reference or resource.

# Academic Integrity Statement

Please note that all work included in this project is the original work of the author, and any external sources or references have been properly cited and credited. It is strictly prohibited to copy, reproduce, or use any part of this work without permission from the author.

If you choose to use any part of this work as a reference or resource, you are responsible for ensuring that you do not plagiarize or violate any academic integrity policies or guidelines. The author of this work cannot be held liable for any legal or academic consequences resulting from the misuse or misappropriation of this work.

Any unauthorized copying or use of this work may result in serious consequences, including but not limited to academic penalties, legal action, and damage to personal and professional reputation. Therefore, please use this work only as a reference and always ensure that you properly cite and attribute any sources or references used.

---
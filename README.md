# README for Change Desktop Background Script

## Overview

This script is designed to change the desktop background of a macOS computer to a specific image file. It searches for an image file by a given name within a specified directory and changes the desktop background to this image if found. The script supports images in jpg, jpeg, and png formats.

## Requirements

- macOS operating system (due to the use of `osascript`)
- Bash shell

## Usage

1. **Open Terminal:** Open the Terminal application on your macOS.

2. **Navigate to Script:** Use the `cd` command to navigate to the directory containing the script.

3. **Make Script Executable:** If the script is not already executable, make it so by running `chmod +x <script_name>`, where `<script_name>` is the name of your script file.

4. **Edit Script (Optional):** Before running the script, you may need to edit the `basePath="your Path to the folder/$backgroundName"` line to specify the correct path to the folder where your background images are stored. Replace `"your Path to the folder"` with the actual path to your images.

5. **Run Script:** Execute the script by typing `./<script_name>` in the Terminal.

6. **Enter Image Name:** When prompted, enter the name of the background picture (without the file extension) that you want to set as your desktop background. Make sure the image exists in the specified folder and is in one of the supported formats (jpg, jpeg, png).

## Automating with Shortcuts App

You can automate this script with a single click using the Shortcuts app on macOS:

1. **Open the Shortcuts App:** Find and open the Shortcuts app on your macOS.

2. **Create a New Shortcut:** Click on the "+" button to create a new shortcut.

3. **Add a 'Run Shell Script' Action:** Search for the "Run Shell Script" action and add it to your shortcut.

4. **Configure the Script:** In the "Run Shell Script" action, input the full path to your script. If necessary, specify the working directory and ensure that "Pass input" is set to "as arguments" or "to stdin" based on your script's needs.

5. **Save and Name Your Shortcut:** Give your shortcut a meaningful name.

6. **Run Your Shortcut:** You can now run your script by clicking on your shortcut in the Shortcuts app, enabling you to change the desktop background with a single click.

## Troubleshooting

- **File Not Found:** If the script outputs "file not found," ensure the image file exists in the specified directory and the name is entered correctly without any typos.
- **Permission Denied:** If you encounter a "Permission Denied" error, ensure the script is executable as mentioned in step 3.
- **Script Does Not Change Background:** Ensure the `osascript` command is correctly formatted and the specified path to the image is correct. Also, check that the image is in one of the supported formats.

## Notes

- This script is specifically designed for use on macOS due to its reliance on `osascript` for changing the desktop background.
- The script stops executing once it successfully changes the desktop background to an image file with a supported format. If multiple formats are present, it prioritizes the first found based on the order specified in the `formats` array.

## License

This script is provided "as is", without warranty of any kind. Feel free to use and modify it for your personal use.

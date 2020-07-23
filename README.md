# ServerLinker
Networking part of App.


##Steps to add librrary

1. The first thing is that we need to add the compiled library’s files to the new project. To reach that, right-click on your project name in the project navigator and select Show in Finder.
2. In the opened Finder’s window, create a new folder in the project’s root folder and name it lib(yourProject/lib).
3. Go back to the library project in Xcode, find the file libNetworking.a in the project navigator, right-click on it, and select Show in Finder.
4. You will find the libNetworking.a file and Networking.swiftmodule folder there. Copy and paste them both to the yourProject/lib folder.
5. Move back to Xcode and right-click on the project’s name again, select Add files to "yourProject".
6. In the window that appears, make sure that the Create Groups radio button is selected, select lib folder, and press Add.
7. Now you have the library for your new project and Xcode even did some integration for you. Now your task is to check if it did it correctly and perform some additional steps.
8. Select the project’s name in project navigator, then select General, and select your’s application target.
The section Linked Frameworks and Libraries has to contain a line with libNetworking.a. If it does not, press the + button and select it manually. Make sure that the Required status is selected.
9. After that, go to the Build Phases tab, expand Link Binary with Libraries, and make sure that it contains a line with libNetworking.a. If it does not, again, add it manually and set it to required.
10. Finally, we’ve reached the last, and maybe the most sensitive integration step — setting paths. It’s a step where it’s very easy to make a mistake, so be neat and careful.
In the Build Settings (1) tab, select your target (2), select All (3), and Combined (4).
In the search field (5) in the top-right corner, type Search Paths. Copy the path from Library Search Path (6) and paste it to Import Paths (7).
If there is no value in Library Search Path, add a new one, $(PROJECT_DIR)/lib. Do the same for Import Paths.

11. Dont forget to import library before use.

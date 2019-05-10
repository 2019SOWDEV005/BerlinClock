# BerlinClock

About this Kata

The Berlin Clock (Mengenlehreclock or Berlin Uhr) is a clock that tells the time using a series of illuminated coloured blocks

The top lamp blinks to show seconds- it is illuminated on even seconds and off on odd seconds.

The next two rows represent hours. The upper row represents 5 hour blocks and is made up of 4 red lamps. The lower row represents 1 hour blocks and is also made up of 4 red lamps.

The final two rows represent the minutes. The upper row represents 5 minute blocks, and is made up of 11 lamps- every third lamp is red, the rest are yellow. The bottom row represents 1 minute blocks, and is made up of 4 yellow lamps.

This kata contains Two Feature

Feature 1 - Converting Digital Time to Berlin Time
              -> Implementation completed
              
Feature 2 - Converting Berlin Time to Digital Time
              ->with in the time it is very dificult to do feature 2 This can be definitely completed if given some more time.

# Development Environment

IDE - XCode 10.1
Language - Swift 4.2
Deployment Target - 12.1

# About the Project

1. The project is been designed with MVP pattern.
2. Presenter and Model is been unit tested and View controller is been UI tested

# Folder Structure
1. ViewController
2. Presenter
3. Model
4. Helpers
5. Constants

# How to run 

1. The app can be run with Xcode in simulator. (preferrably iphone 10 simulator)
2. The user need to tap the textBox to provide Digital input . Once the user selects the textBox the User have an option to 
select the date in the picker View
3.The user can selects time and click on done button on the left side of the pickerview.

4. Finally Click on Show BerlinTime option the BerlinClock Will be displayed with corresponding colored lights

# Screenshot

<p align="center">
<img src="https://github.com/2019SOWDEV005/BerlinClock/blob/master/Screenshot/BerlinClock.png"/>
</p>

note:
 In the textField the User can to enter  N number of digits and character if they are running in the simulator and typing with keyboard. 
There is no validation for this case because This is not valid scenario if we are running in the device. the user does not have any keyboard option to enter invalid data.

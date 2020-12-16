# AutolayoutStartingPoint
A starting point for introducing auto layout

This is useful when teaching Unit 2, Lesson 10 of Develop in Swift Fundamentals, Autolayout and Stack Views. You can follow the script below to show a (relatively) straight forward example of using autolayout to make sure your view handles device and layout changes well.

## Autolayout Demo
**Do**
* Start with a copy of AutoLayoutStartingPoint.
* Build and run the app.
* Show portrait mode on iPhone 4s. The positions look reasonable, but who chose those colors?
* Show landscape mode on iPhone 4s. The Add button is gone, and the table view is spilling off the page.
* Run on iPhone 7 Plus or iPad. It’s not good even in portrait mode.
* Start with the First Name label and use the pin menu to pin the left, top, and width. 
* Run. You see no change.
* Show that some of the constraints are on the First Name label and some are on the superview.
* Mention that UIView has a "constraints" property.
* Show the blue lines.
* Show the constraint inspector and explain the top layout guide.
* Name the text field. 

**Say** 
* We could also pin the top to the superview, but a better choice would be to pin it to the First Name label. 

**Do**
* Control-drag from the text field to the First Name label, Shift-select the baseline and horizontal spacing, and press Return.
* Show the warning. There's enough info for x and y, but the default text field width isn't what we want. Pin the right to the superview with the standard value. 
* Run—The text field goes full width in landscape.
* Then the greet button—tap the align button and "horizontally in container."
* Error—Needs y position. Control-drag to the name text field and choose vertical spacing.
* Warning—The button canvas position is wider than actual. Show and tap the "update frames" button. Note that buttons and labels wrap their width and height to their contents unless you specify otherwise.
* Then select the button pin and  leading, trailing and top. Update frames for the height.

**Say**
* We made the text field grow and shrink to the right side of the superview. We want the Add button to hug the bottom and the table view to fill the space between the Add and Save buttons. I often work in from the edges. Let's do the Add button next.

**Do**
* Use the pin menu to pin the bottom, width, and height of the Add button.
* Show the error: "Add button needs x position."
* Control-drag to the superview and choose center horizontally in container. Run—the button is good.
* In landscape, show view debugging to show that the table view is in front of the Add button.
* Then show that the outline view is the view hierarchy, and move the add button below the table view. Run again to show it in front.
* Use the pin menu to pin the four edges of the table view. Done!

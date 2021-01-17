//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 800
let preferredHeight = 800
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Replace this comment with your first comment – what is the goal of the code you're about to write?

canvas.drawAxes(withScale: true, by: 50)

canvas.drawShapesWithBorders = true

//Bright green
canvas.fillColor = Color(hue: 0, saturation: 200, brightness: 50, alpha: 100)

//Draw square
canvas.drawRectangle(at: Point(x: 50, y: 50), width: 500, height: 500, anchoredBy: .bottomLeft, borderWidth: 15)

canvas.borderColor = Color.black

canvas.defaultBorderWidth = 20

//Draw Rectangle (eyes)
canvas.drawRectangle(at: Point(x:100, y: 350), width: 150, height: 150)

//Draw Rectangle (eyes)
canvas.drawRectangle(at: Point(x: 350, y: 350), width: 150, height: 150)

canvas.drawRectangle(at: Point(x: 100, y: 150), width: 100, height: 100)

canvas.drawRectangle(at: Point(x: 200, y: 150), width: 100, height: 100)

canvas.drawRectangle(at: Point(x: 300, y: 150), width: 100, height: 100)

canvas.drawRectangle(at: Point(x: 400, y: 150), width: 100, height: 100)

canvas.drawRectangle(at: Point(x: 295, y: 560), width: 10, height: 150)

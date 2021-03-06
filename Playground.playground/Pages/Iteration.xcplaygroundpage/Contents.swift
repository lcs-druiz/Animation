//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 300
let preferredHeight = 300
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
for y in stride(from:0,
                to: 300,
                by: 50) {

    for x in stride(from: 0,
                    to: 300,
                    by: 50) {

        //draw black circle
        canvas.fillColor = Color.black
        canvas.drawEllipse(at: Point(x: x + 25, y: y + 25), width: 50, height: 50)
        
        //Creat a random size
        let size = Int.random(in: 10...40)
        
        //Draw white circle
        canvas.fillColor = Color.white
        canvas.drawEllipse(at: Point(x: x + 25, y: y + 25), width: size, height: size)
        
        
    }
}
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

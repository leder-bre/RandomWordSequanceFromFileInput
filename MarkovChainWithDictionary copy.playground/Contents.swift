import Cocoa

var randomValue = Int(arc4random_uniform(100000))

var letterSequence = ""

var i = 0

var q = 0

var done = false

var upperValue = 0

let alphabet:[String] = ["A","B","C","E","D","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

let letterPercentage:[Int] = [8167, 1492, 2782, 4253, 12702, 2228, 2015, 6094, 6966, 153, 772, 4025, 2406, 6749, 7507, 1929, 95, 5987, 6327, 9056, 2758, 978, 2361, 150, 1974, 74]

while i < 20{
    
    for q in 0 ... 25 {
        if (done==false) {
            upperValue += letterPercentage[q]
            if(randomValue < upperValue) {
                letterSequence+=alphabet[q]
                randomValue = Int(arc4random_uniform(100000))
                i++
                done = true
                upperValue = 0
            }
        }
        done = false
    }
}

print(letterSequence)



let file = NSBundle.mainBundle().URLForResource("fagkr", withExtension: "txt")

let content = try String(contentsOfURL: file!, encoding:
    NSUTF8StringEncoding)

let delimiters = NSCharacterSet(charactersInString: ", \n")

let words = content.componentsSeparatedByCharactersInSet(delimiters)

var outputShlong = ""

words

var ui = 0;
for ui in 1...20 {
var dejuan = Int(arc4random_uniform(UInt32(words.count)))
    outputShlong+=words[dejuan] + " "
}

outputShlong

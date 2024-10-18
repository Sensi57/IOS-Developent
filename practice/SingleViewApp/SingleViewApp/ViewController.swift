import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    @IBOutlet weak var rollDice: UIButton!
    
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollDice(UIButton()) // Call rollDice when shaken
        }
    }

    @IBAction func rollDice(_ sender: UIButton) {
        let leftDiceIndex = Int(arc4random_uniform(6)) // Random index for left dice
        var rightDiceIndex: Int
        
        repeat {
            rightDiceIndex = Int(arc4random_uniform(6)) // Random index for right dice
        } while rightDiceIndex == leftDiceIndex // Ensure dice do not match
        
        leftDiceImageView.image = UIImage(named: diceImages[leftDiceIndex])
        rightDiceImageView.image = UIImage(named: diceImages[rightDiceIndex])
    }
}

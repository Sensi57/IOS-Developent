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
            rollDice(rollDice)
        }
    }

    @IBAction func rollDice(_ sender: UIButton) {
        let leftDiceIndex = Int.random(in: 0...5)  //
        var rightDiceIndex: Int

        repeat {
            rightDiceIndex = Int.random(in: 0...5)
        } while rightDiceIndex == leftDiceIndex  //

        leftDiceImageView.image = UIImage(named: diceImages[leftDiceIndex])
        rightDiceImageView.image = UIImage(named: diceImages[rightDiceIndex])
    }
}

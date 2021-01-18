import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeCar: UIView!
    @IBOutlet weak var greenCar: UIView!
    @IBOutlet weak var purpleCar: UIView!
    @IBOutlet weak var roadView: UIView!
    
    @IBOutlet weak var orangeCarConstraint: NSLayoutConstraint!
    @IBOutlet weak var greenCarConstraint: NSLayoutConstraint!
    @IBOutlet weak var purpleCarConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func runButtonTapped(_ sender: UIButton) {
        let distanceToMove = roadView.frame.height - orangeCar.frame.height - 80
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 3, delay: 0.5, options: .curveEaseIn) {
            self.orangeCarConstraint.constant = distanceToMove
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 3, delay: 0.5, options: .curveLinear) {
            self.greenCarConstraint.constant = distanceToMove
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 3, delay: 0.5, options: .curveEaseOut) {
            self.purpleCarConstraint.constant = distanceToMove
            self.view.layoutIfNeeded()
        }
    }
    
}

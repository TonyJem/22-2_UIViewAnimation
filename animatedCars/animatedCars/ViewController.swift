import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeCar: UIView!
    @IBOutlet weak var greenCar: UIView!
    @IBOutlet weak var purpleCar: UIView!
    
    @IBOutlet weak var orangeCarConstraint: NSLayoutConstraint!
    @IBOutlet weak var greenCarConstraint: NSLayoutConstraint!
    @IBOutlet weak var purpleCarConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func runButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 3, delay: 0.5, options: .curveEaseIn) {
            self.orangeCarConstraint.constant = self.view.bounds.maxY - self.orangeCar.frame.size.height * 1.7
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 3, delay: 0.5, options: .curveLinear) {
            self.greenCarConstraint.constant = self.view.bounds.maxY - self.greenCar.frame.size.height * 1.7
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 3, delay: 0.5, options: .curveEaseOut) {
            self.purpleCarConstraint.constant = self.view.bounds.maxY - self.purpleCar.frame.size.height * 1.7
            self.view.layoutIfNeeded()
        }
    }
    
}

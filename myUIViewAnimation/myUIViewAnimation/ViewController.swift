import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var someView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateButtonTapped(_ sender: UIButton) {

    }
    
    func changeBackgroundColorAnimated(to newColor: UIColor) {
        UIView.animate(withDuration: 1) {
            self.someView.backgroundColor = .blue
        }
    }
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var someView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateButtonTapped(_ sender: UIButton) {
        moveSomeViewUpAndDownAnimated()
    }
    
    func changeBackgroundColorAnimated(to newColor: UIColor) {
        UIView.animate(withDuration: 1) {
            self.someView.backgroundColor = .blue
        }
    }
    
    func moveSomeViewUpAndDownAnimated() {
        
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: .calculationModeCubic) {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.someView.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.minY + self.someView.frame.size.height / 2)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
                self.someView.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY - self.someView.frame.size.height / 2)
            }
        }
        
    }
}

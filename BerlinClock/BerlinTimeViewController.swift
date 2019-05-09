import UIKit

class BerlinTimeViewController: UIViewController {

    @IBOutlet weak var txtDigitalTime: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTimePicker()
    }
    
   private func createTimePicker() {
        let timePicker = UIPickerView()
        timePicker.delegate = self as? UIPickerViewDelegate
        txtDigitalTime.inputView = timePicker
     }
}


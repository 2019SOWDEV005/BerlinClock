import UIKit

class BerlinTimeViewController: UIViewController {
    
    @IBOutlet weak var txtDigitalTime: UITextField!
    
    private var berlinTimePresenter:BerlinTimePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTimePicker()
        berlinTimePresenter = BerlinTimePresenter()
    }
    
    private func createTimePicker() {
        let timePicker = UIPickerView()
        timePicker.delegate = self
        txtDigitalTime.inputView = timePicker
    }
}

extension BerlinTimeViewController:UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 6
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nil
    }
}

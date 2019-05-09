import UIKit

class BerlinTimeViewController: UIViewController {
    
    @IBOutlet weak var txtDigitalTime: UITextField!
    
    private var berlinTimePresenter:BerlinTimePresenter!
 
    @IBOutlet var fiveHoursLights: [UIImageView]!
    @IBOutlet var secondsLight: [UIImageView]!
    @IBOutlet var singleHoursLights: [UIImageView]!
    @IBOutlet var fiveMinutesLights: [UIImageView]!
    @IBOutlet var singleMinutesLights: [UIImageView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        berlinTimePresenter = BerlinTimePresenter()
        createTimePicker()
    }
    
    @IBAction func showBerlinTimeClicked(_ sender: Any) {
    }
    
    private func createTimePicker() {
        let timePicker = UIPickerView()
        timePicker.delegate = self
        txtDigitalTime.inputView = timePicker
    }
}

extension BerlinTimeViewController:UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 6
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return berlinTimePresenter.numberOfRowsInPickerView(component)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
     }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return berlinTimePresenter.titleForRowPickerView(component, row)
    }
}


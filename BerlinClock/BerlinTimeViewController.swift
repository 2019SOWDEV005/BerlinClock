import UIKit

class BerlinTimeViewController: UIViewController {
    
    @IBOutlet weak var txtDigitalTime: UITextField!
    
    @IBOutlet var fiveHoursLights: [UIImageView]!
    @IBOutlet var secondsLight: [UIImageView]!
    @IBOutlet var singleHoursLights: [UIImageView]!
    @IBOutlet var fiveMinutesLights: [UIImageView]!
    @IBOutlet var singleMinutesLights: [UIImageView]!
    
    private var digitalTime:DigitalTime?
    
    private var berlinTimePresenter:BerlinTimePresenter!
    
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
        let selectedTimeValue = pickerView.selectedRow(inComponent: 0)
        let selectedMinutesValue = pickerView.selectedRow(inComponent: 2)
        let selectedSecondsValue = pickerView.selectedRow(inComponent: 4)
        
        digitalTime = DigitalTime.init(hours:selectedTimeValue , minutes: selectedMinutesValue,
                                       seconds: selectedSecondsValue)
        
     }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return berlinTimePresenter.titleForRowPickerView(component, row)
    }
}


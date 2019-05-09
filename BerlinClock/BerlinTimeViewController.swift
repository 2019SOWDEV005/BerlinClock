import UIKit

class BerlinTimeViewController: UIViewController, BerlinTimeView {
    
    @IBOutlet weak var txtDigitalTime: UITextField!
    
    @IBOutlet var fiveHoursLights: [UIImageView]!
    @IBOutlet var secondsLight: [UIImageView]!
    @IBOutlet var singleHoursLights: [UIImageView]!
    @IBOutlet var fiveMinutesLights: [UIImageView]!
    @IBOutlet var singleMinutesLights: [UIImageView]!
    
    private var digitalTime:DigitalTime?
    
    private var berlinTimePresenter:BerlinTimePresenter!
    private let redLightIndicator:Character = "R"
    private let yellowLightIndicator:Character = "Y"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        berlinTimePresenter = BerlinTimePresenter(self)
        createTimePicker()
        addToolBarForTimePickerView()
    }
    
    @IBAction func showBerlinTimeClicked(_ sender: Any) {
        berlinTimePresenter.constructBerlinDigits(digitalTime: digitalTime)
    }
    
    func showDigitalTime(digitalTime: String) {
        txtDigitalTime.text = digitalTime
    }
    
    func showInvalidInputError() {
        let InvalidInputError = UIAlertController(title: "Error", message: "Please provide valid input", preferredStyle: UIAlertController.Style.alert)
        
        InvalidInputError.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(InvalidInputError, animated: true, completion: nil)
    }
    
     func showBerlinTime(berlinTime: BerlinTime) {
        updateBerlinClockLights(imageCollection: singleMinutesLights, lightIndication: berlinTime.singleMinuteRowValue)
        updateBerlinClockLights(imageCollection: fiveMinutesLights, lightIndication: berlinTime.fiveMinuteRowValue)
        
        updateBerlinClockLights(imageCollection: singleHoursLights, lightIndication: berlinTime.singleHoursRowValue)
        updateBerlinClockLights(imageCollection: fiveHoursLights, lightIndication: berlinTime.fiveHoursRowValue)
        updateBerlinClockLights(imageCollection: secondsLight, lightIndication: berlinTime.secondsRowValue)
    }
    
    func updateBerlinClockLights(imageCollection:[UIImageView], lightIndication:String )  {
        let characters = Array(lightIndication)
        for i in (0...imageCollection.count - 1) {
            
            if characters[i] == redLightIndicator {
                BlinkRedLight(imageCollection, i)
            }
                
            else if characters[i] == yellowLightIndicator {
                BlinkYellowLight(imageCollection, i)
            }
                
            else {
                lightOffState(imageCollection, i)
            }
        }
    }
    
    private func BlinkRedLight(_ imageCollection: [UIImageView], _ i: Int) {
        imageCollection[i].backgroundColor = UIColor.red
        
        setBlackBorderForImageView(imageCollection, i)
    }
    
    private func BlinkYellowLight(_ imageCollection: [UIImageView], _ i: Int) {
        imageCollection[i].backgroundColor = UIColor.yellow
        
        setBlackBorderForImageView(imageCollection, i)
    }

    private func lightOffState(_ imageCollection: [UIImageView], _ i: Int) {
        imageCollection[i].backgroundColor = UIColor.gray
        
        setBlackBorderForImageView(imageCollection, i)
    }
    
    private func setBlackBorderForImageView(_ imageCollection: [UIImageView], _ i: Int) {
        imageCollection[i].layer.borderWidth = 2
        
        imageCollection[i].layer.borderColor = UIColor.black.cgColor
    }
    
    private func createTimePicker() {
        let timePicker = UIPickerView()
        timePicker.delegate = self
        txtDigitalTime.inputView = timePicker
    }
    
    private func addToolBarForTimePickerView() {
        let toolbar = UIToolbar(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        toolbar.items = [
            UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneButtonSelected))]
        txtDigitalTime.inputAccessoryView = toolbar
    }
    
    @objc func doneButtonSelected() {
        txtDigitalTime.resignFirstResponder()
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
        
        berlinTimePresenter.constructDigitalTime(digitalTime!)
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return berlinTimePresenter.titleForRowPickerView(component, row)
    }
}


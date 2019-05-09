class BerlinTimePresenter {
    
    func numberOfRowsInPickerView(_ component: Int) -> Int {
        switch (component) {
        case 1,3,5:
            return 1
        case 0:
            return  25
        case 2,4:
            return 60
        default:
            return 0
        }
    }
    
    func titleForRowPickerView(_ component: Int, _ row: Int) -> String? {
        if component == 0 {
            return String(format: "%02d", row)
        }
        else if component == 1 {
            return "HR"
        }
        else if component == 2 {
            return String(format: "%02d", row)
        }
        return nil
    }
}

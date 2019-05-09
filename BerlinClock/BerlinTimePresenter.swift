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
}

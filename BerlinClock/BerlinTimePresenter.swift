class BerlinTimePresenter {
    func numberOfRowsInPickerView(_ component: Int) -> Int {
        if component == 0 {
            return 25
        }
        else if component == 1 {
            return 1
        }
        else if component == 2 {
            return 60
        }
        else if component == 3 {
            return 1
        }
        return 0
    }

}

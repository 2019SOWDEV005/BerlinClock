class BerlinTimePresenter {
    func numberOfRowsInPickerView(_ component: Int) -> Int {
        if component == 0 {
            return 25
        }
        return 0
    }

}

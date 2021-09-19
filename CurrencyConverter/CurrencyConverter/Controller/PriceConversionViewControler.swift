//
//  PriceConversionViewControler.swift
//  CurrencyConverter
//
//  Created by basit ch on 9/19/21.
//

import UIKit

class PriceConversionViewControler: UIViewController {
    
    @IBOutlet weak var currencyTextField: UITextField!

    var datRecieved:[DataModel]?
    var showAlert = Alert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkCall()
    }
    
    @IBAction func covertButton(_ sender: Any) {
        if let data = datRecieved{
            for x in 0...data.count-1{
                if currencyTextField.text == data[x].currency{
                    showAlert.showAlert(vc: self, title: data[x].currency, message: data[x].rate)
                }
            }
        }
    }
}


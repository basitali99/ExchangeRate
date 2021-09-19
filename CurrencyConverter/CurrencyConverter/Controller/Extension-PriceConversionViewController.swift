//
//  Extension-PriceConversionViewController.swift
//  CurrencyConverter
//
//  Created by basit ch on 9/19/21.
//

import UIKit

extension PriceConversionViewControler{
    
    func networkCall(){
        CurrencyConverterViewModel.shared.getAudConversionRate(url: Api.Url.rawValue) { dataRecieved in
            self.datRecieved = dataRecieved
        }
    }
    
    struct Alert {
        func showAlert(vc: UIViewController, title: String, message: String) {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            vc.present(alertController, animated: true, completion: nil)
        }
    }
}


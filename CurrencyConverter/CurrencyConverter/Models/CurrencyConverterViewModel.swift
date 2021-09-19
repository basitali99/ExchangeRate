//
//  CurrencyConverterViewModel.swift
//  CurrencyConverter
//
//  Created by basit ch on 9/19/21.
//

import Foundation

struct CurrencyConverterViewModel{
    
    static var shared = CurrencyConverterViewModel()
    
    func getAudConversionRate(url:String, completion: @escaping ([DataModel]?)->()){
        guard let Url = URL(string: url) else {return}
        var request = URLRequest(url: Url)
        request.httpMethod = Methods.GET.rawValue
        NetworkManager.shared.serviceCall(url: request) { dataRecieved, response , error in
            if error == nil{
                decodeData(dataToDecode: dataRecieved) { decodedData in
                    completion(decodedData)
                }
            }else{
                
            }
        }
    }
}

func decodeData(dataToDecode:Any?, completion: @escaping ([DataModel]?)->()){
    do{
        let decodedData = try JSONDecoder().decode([DataModel].self, from: dataToDecode as! Data)
        completion(decodedData)
    }catch{
        print(String(describing: error))
    }
}

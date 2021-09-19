//
//  NetworkManager.swift
//  CurrencyConverter
//
//  Created by basit ch on 9/19/21.
//

import Foundation

struct NetworkManager{
    
    static var shared = NetworkManager()
    
    func serviceCall(url:URLRequest,completion: @escaping (Any?,HTTPURLResponse,Error?)->()){
        URLSession.shared.dataTask(with: url){data,response,error in
            let Response = response as! HTTPURLResponse
            if error == nil{
                completion(data,Response,nil)
            }else{
                print(String(describing: error))
            }
        }.resume()
    }
}

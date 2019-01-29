//
//  NetworkingService.swift
//  MVCtry
//
//  Created by Harinarayanan Janardhanan on 10/8/18.
//  Copyright © 2018 Harinarayanan Janardhanan. All rights reserved.
//

import Foundation

class NetworkingService {
    
    private init () {}
    static let shared = NetworkingService()
    
    
    func getData(fromURL url : URL, completion: @escaping (Any)->Void){
        let session = URLSession.shared
        //guard let url = URL(string: fromURL) else{return}
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let data = data else{
                return
            }
            do{
                let json = try? JSONSerialization.jsonObject(with: data, options: [] )
                DispatchQueue.main.async {
                    completion(json)
                }
                
            }catch{}
        }
        task.resume()
    }
    
}

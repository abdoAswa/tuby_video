//
//  Model.swift
//  tuby_video
//
//  Created by abdelrahman aswa ahmed  on 16/05/2021.
//  Copyright © 2021 abdelrahman aswa ahmed . All rights reserved.
//

import Foundation

class Model {
    
    
    func gitVideo()
    {
        
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{return}
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, responnse, error) in
          
            //check if there were any errors
            if (error != nil || data == nil)
            {
                return
            }
            //parcing data into video object
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                          
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch{
                print("error")
            }
            
        }
        
        //kick of the data task
        dataTask.resume()
        
    }
    
}


//
//  Response .swift
//  tuby_video
//
//  Created by abdelrahman aswa ahmed  on 18/05/2021.
//  Copyright © 2021 abdelrahman aswa ahmed . All rights reserved.
//

import Foundation

struct Response: Decodable {
    var items: [Video]?
    
    enum CodinKeys: String,CodingKey {
        case items
        
    }
    
    
    
    
    init( from decoder: Decoder)throws  {
        let container = try
            decoder.container(keyedBy: CodinKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
    }
    
}

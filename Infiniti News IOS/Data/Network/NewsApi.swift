//
//  
//
//  Created by Hassaan Raza on 21/11/2023.
//

import Foundation

class NewsApi {
    
    let baseUrl = "https://newsapi.org/v2/"
    
    func call(endPoint:String) async throws -> NewsResponse  {
        
        let url = URL(string: baseUrl+endPoint)
        
        var request = URLRequest(url: url!)
        request.setValue("5b72f90ce8b34fb7a31d80e0791ca49c", forHTTPHeaderField: "X-Api-Key")
            
        let (data, _) = try await URLSession.shared.data(for: request)

        return try JSONDecoder().decode(NewsResponse.self, from: data)
            
    }
    
}

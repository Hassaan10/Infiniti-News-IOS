//
//  
//
//  Created by Hassaan Raza on 21/11/2023.
//

import Foundation

class NewsApi {
    
    let baseUrl = BASE_URL
    
    func call(endPoint:String) async throws -> NewsResponse  {
        
        let url = URL(string: baseUrl+endPoint)
        
        var request = URLRequest(url: url!)
        request.setValue(API_KEY, forHTTPHeaderField: API_KEY_HEADER)
            
        let (data, _) = try await URLSession.shared.data(for: request)

        return try JSONDecoder().decode(NewsResponse.self, from: data)
            
    }
    
}

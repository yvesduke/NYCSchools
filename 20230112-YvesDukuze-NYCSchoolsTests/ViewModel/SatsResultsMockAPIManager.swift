//
//  SatsResultsMockAPIManager.swift
//  20230112-YvesDukuze-NYCSchoolsTests
//
//  Created by apple on 20/03/2023.
//

import Foundation
@testable import _0230112_YvesDukuze_NYCSchools

class SatsResultsMockAPIManager: APIManager {
    
    var isApiSuccessFull = true
    
    func call<T>(url: URL?, decoding: T.Type, completion: @escaping (Result<T, RequestErrors>) -> ()) where T : Decodable, T : Encodable {
        
        if isApiSuccessFull {
            completion(.success(NYCSchoolSats.mockedsatsResultsResponse as! T))
        }else {
            completion(.failure(RequestErrors.badData))

        }
    }
    
}



extension NYCSchoolSats {
    
    static var mockedsatsResultsResponse = [NYCSchoolSats(school_name: "LIBERATION DIPLOMA PLUS", num_of_sat_test_takers: "10", sat_critical_reading_avg_score: "411", sat_math_avg_score: "369", sat_writing_avg_score: "373")]
}

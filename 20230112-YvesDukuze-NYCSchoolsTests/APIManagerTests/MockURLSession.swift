//
//  MockURLSession.swift
//  20230112-YvesDukuze-NYCSchoolsTests
//
//  Created by apple on 20/03/2023.
//

import Foundation
@testable import _0230112_YvesDukuze_NYCSchools

class MockURLSession: URLSession {
    
    let mockDataTask =  MockURLSessionDataTask()
    
    
    override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        
        mockDataTask.completionHandler = completionHandler
        return mockDataTask
    }
  
    func enqueueResponse(urlResponse: HTTPURLResponse, error: RequestErrors?) {
        mockDataTask.urlResponse = urlResponse
        mockDataTask.serviceError = error
    }
}

class MockURLSessionDataTask: URLSessionDataTask {
    
    var completionHandler: ((Data?, URLResponse?, Error?) -> Void)?
    
    var  urlResponse: HTTPURLResponse!
    var  serviceError: RequestErrors!
    override func resume() {
        completionHandler!("success".data(using:.utf8), urlResponse, serviceError)
    }
}



//
//  SatsResultsViewModelTests.swift
//  20230112-YvesDukuze-NYCSchoolsTests
//
//  Created by apple on 20/03/2023.
//

import XCTest
@testable import _0230112_YvesDukuze_NYCSchools

class SatsResultsViewModelTests: XCTestCase {

    var viewModel: NYCSchoolSatsResultViewModel!
    var apiManager: SatsResultsMockAPIManager!
    var vc = SchoolTableViewController()
    
    override func setUpWithError() throws {
        apiManager = SatsResultsMockAPIManager()
        viewModel = NYCSchoolSatsResultViewModel(apiManager: apiManager)
    }

    override func tearDownWithError() throws {
  
    }
    
    
    func testGetSchoolsSatsResultsSuccess() {
        
        viewModel.fetchSatsResults(dbn: "21K728")
                
        XCTAssertEqual(viewModel.satsCount, 1)
        
       let satsResults =  viewModel.getSats(index: 0)
        XCTAssertEqual(satsResults.sat_math_avg_score, "369")
        XCTAssertEqual(satsResults.sat_writing_avg_score,  "373")
    }
    
    func testGetSchoolsFailure() {
        
        apiManager.isApiSuccessFull = false
        
        viewModel.fetchSatsResults(dbn: "21K728")
        
        XCTAssertEqual(viewModel.satsCount, 0)
    
    }
    
   
}

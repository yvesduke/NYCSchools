//
//  NYCSchoolViewModelSpecs.swift
//  20230112-YvesDukuze-NYCSchoolsTests
//
//  Created by apple on 20/03/2023.
//

import Foundation
import Quick
import Nimble
@testable import _0230112_YvesDukuze_NYCSchools

class NYCSchoolViewModelSpecs: QuickSpec {
    
    var vc = SchoolTableViewController()
    
    override func spec() {
        var viewModel: NYCSchoolViewModel!
        
        describe("NYCSchool ViewModel") {
            context("Create NYSCshool data from a local valid json") {
                beforeEach {
                    let mockNetworkManager = SchoolsMockAPIManager()
                    viewModel = NYCSchoolViewModel(apiManager: mockNetworkManager, actionDelegate: self.vc)
                }
                afterEach {
                    viewModel = nil
                }
                it("NYCSchool model should be populated with data retrieved from a hard coded object when I call fetchSchools() function on the viewModel") {
                    viewModel.fetchSchools()
                    print(viewModel.schoolsCount)

                    DispatchQueue.main.asyncAfter(deadline: .now() + 6){
                        print(viewModel.schoolsCount)
                        var count = viewModel.schoolsCount
                        expect(count).to(equal(3))
                        expect(viewModel.getSchool(index: 0).school_name).to(equal("Clinton School Writers & Artists, M.S. 260"))
                    }
                }
            }
        }
    }
    
}


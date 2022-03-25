//
//  MastermindTests.swift
//  MastermindTests
//
//  Created by Alumne on 25/3/22.
//

import XCTest
@testable import Mastermind

class MastermindTests: XCTestCase {

    func testNoCombB4StartUP(){
        let mastermind = MastermindViewModel()
        
        XCTAssertEqual(0, mastermind.board.count)
    }
    func testCheck(){
        let combination: [Color] = [.red, .red, .red, .red,]
        let mastermind = MastermindViewModel()
        let res = mastermind.check(combination)
        let comb = Combination (comb: combination, results: [])
        XCTAssertEqual( comb.comb, res.comb)
    }
    func testOneExists(){
        let mastermind = MastermindViewModel([.blue, .yellow, .blue, .yellow,])
        let combination: [Color] = [.blue, .yellow, .blue, .yellow,]
        let res = mastermind.check(combination)
        XCTAssertEqual([.rightPlace, .rightPlace, .rightPlace, .rightPlace], res.results)
        
    }
}

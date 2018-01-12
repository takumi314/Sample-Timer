//
//  Sample_TimerTests.swift
//  Sample-TimerTests
//
//  Created by NishiokaKohei on 2018/01/09.
//  Copyright © 2018年 Kohey.Nishioka. All rights reserved.
//

import XCTest
@testable import Sample_Timer

class Sample_TimerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testCountObject_value() -> Void {
        let count = CountValue(newValue: 10)
        XCTAssert(count.value == 10)
    }

    func testCountObject_plus() -> Void {
        var count = CountValue(newValue: 10)

        let count_plus_one = count.plusOne()

        XCTAssert(count_plus_one.value == 11)
    }

    func testCountObject_minus() -> Void {
        var count = CountValue(newValue: 10)

        let count_minus_one = count.minusOne()

        XCTAssert(count_minus_one.value == 9)
    }

    func testCountObject_isMore() -> Void {
        var count = CountValue(newValue: 10)

        let newCount = count.plusOne()

        XCTAssert(newCount.isMore)
    }

    func testCountObject_isLess() -> Void {
        var count = CountValue(newValue: 10)

        let newCount = count.minusOne()

        XCTAssert(newCount.isLess)
    }

    func testCountObject_set() -> Void {
        var count = CountValue(newValue: 10)

        count = count.set(new: 11)

        XCTAssert(count.value == 11)
        XCTAssert(count.isMore)

        count = count.set(new: 9)
        XCTAssert(count.value == 9)
        XCTAssert(count.isLess)
    }

}

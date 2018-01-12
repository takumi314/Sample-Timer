//
//  CountValue.swift
//  Sample-Timer
//
//  Created by NishiokaKohei on 2018/01/12.
//  Copyright © 2018年 Kohey.Nishioka. All rights reserved.
//

import Foundation

struct CountValue {

    // MRAK: - Public stored properties

    var value: Int {
        willSet {
            self.oldValue = value
        }
    }

    // MARK: - Public computed properties

    var isMore: Bool {
        get {
            return value > oldValue
        }
    }

    var isLess: Bool {
        get {
            return value < oldValue
        }
    }

    // MARK: - Private properties

    private var oldValue: Int

    // MARK: - Initializer

    init(newValue: Int = 10, oldValue: Int) {
        self.value      = newValue
        self.oldValue   = oldValue
    }

    init(newValue: Int = 10) {
        self.init(newValue: newValue, oldValue: newValue)
    }

    // MARK: - Creation

    func set(new newValue: Int) -> CountValue {
        return  CountValue(newValue: newValue, oldValue: value)
    }

    // MARK: - Operation

    mutating func plusOne() -> CountValue {
        return CountValue(newValue: value + 1, oldValue: value)
    }

    mutating func minusOne() -> CountValue {
        return CountValue(newValue: value - 1, oldValue: value)
    }

}

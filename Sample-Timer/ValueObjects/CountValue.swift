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

    mutating func set(new newValue: Int) {
        value = newValue
    }

    // MARK: - Operation

    mutating func plusOne() {
        value = value + 1
    }

    mutating func minusOne() {
        value = value - 1
    }

}

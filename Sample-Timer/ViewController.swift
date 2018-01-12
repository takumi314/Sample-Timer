//
//  ViewController.swift
//  Sample-Timer
//
//  Created by NishiokaKohei on 2018/01/09.
//  Copyright © 2018年 Kohey.Nishioka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var countStepper: UIStepper!
    
    // MARK: - Public properties

    var counter: CountValue = CountValue(newValue: 10) {
        didSet {
            self.countStepper.value = Double(counter.value)
        }
    }

    var timer: Timer?

    // MARK: - Private properties

    private var interval: TimeInterval = 1.0

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        displayLabel.text = String(Int(counter.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Actions

    @IBAction func stepperOnTapped(_ sender: UIStepper) {
        print(sender.value)
        counter = counter.set(new: Int(sender.value))
        if counter.isMore {
            displayLabel.text = String(counter.value)
        } else if counter.isLess {
            displayLabel.text = String(counter.value)
        }
    }

    @IBAction func onStarted(_ sender: UIButton) {
        setTimer()
    }

    @IBAction func onStopped(_ sender: UIButton) {
        stopTimer()
    }

}

extension ViewController {

    // MARK: - Private methods

    private func setTimer() {
        if let _ = timer {
            stopTimer()
        }
        timer = Timer.scheduledTimer(timeInterval: interval,
                                     target: self,
                                     selector: #selector(onTimer),
                                     userInfo: nil,
                                     repeats: true)
        displayLabel.text = String(counter.value)
    }

    @objc private func onTimer() {
        if counter.value > 0 {
            countDown()
        } else {
            stopTimer()
        }
        displayLabel.text = String(counter.value)
    }

    ///
    /// call this method when it is necessery to stop the timer immidately.
    ///
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    private func setCount(count: Int) {
        counter = counter.set(new: count)
    }

    private func countUp() {
        counter = counter.plusOne()
    }

    private func countDown() {
        if counter.value < 1 {
            return
        }
        counter = counter.minusOne()
    }
}

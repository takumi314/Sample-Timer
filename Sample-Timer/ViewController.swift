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

    // MARK: - Public properties

    var timer: Timer?
    var count = 10

    // MARK: - Private properties

    private var interval: TimeInterval = 2.0

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Actions

    @IBAction func stepperOnTapped(_ sender: UIStepper) {
    }

    @IBAction func onStarted(_ sender: UIButton) {
    }

    @IBAction func onStopped(_ sender: UIButton) {
    }

}

extension ViewController {

    // MARK: - Private properties
    

    // MARK: - Private methods

    private func setTimer() {
        timer = Timer.scheduledTimer(timeInterval: interval,
                                     target: self,
                                     selector: #selector(onTimer),
                                     userInfo: nil,
                                     repeats: true)
        displayLabel.text = String(count)
    }

    @objc private func onTimer() {
        if count > 1 {
            countDown()
            displayLabel.text = String(count)
        } else {
            stopTimer()
        }
    }

    ///
    /// call this method when it is necessery to stop the timer immidately.
    ///
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    private func setCount(count: Int) {
        self.count = count
    }

    private func countUp() {
        count += 1
    }

    private func countDown() {
        if count < 1 {
            return
        }
        count -= 1
    }
}

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

    var count = 10

    // MARK: - Initilizer


    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = String(0.0)
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

    private func setCount(count: Int) {
        self.count = count
    }

    private func countUp() {
        count += 1
    }
}

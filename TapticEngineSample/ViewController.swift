//
//  ViewController.swift
//  TapticEngineSample
//
//  Created by Du on 28/01/2017.
//  Copyright © 2017 Snow Wolf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let selectionGenerator = UISelectionFeedbackGenerator()
    let notificationGenerator = UINotificationFeedbackGenerator()

    override func viewDidLoad() {
        super.viewDidLoad()
        selectionGenerator.prepare()
        notificationGenerator.prepare()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func sectionFeedback(_ sender: Any) {
        selectionGenerator.selectionChanged()
    }
    
    @IBAction func heavyImpactTapped(_ sender: Any) {
        UIImpactFeedbackGenerator.init(style: UIImpactFeedbackStyle.heavy).impactOccurred()
    }

    @IBAction func mediumImpactTapped(_ sender: Any) {
        UIImpactFeedbackGenerator.init(style: UIImpactFeedbackStyle.medium).impactOccurred()
    }
    
    @IBAction func lightImpactTapped(_ sender: Any) {
        UIImpactFeedbackGenerator.init(style: UIImpactFeedbackStyle.light).impactOccurred()
    }
    
    @IBAction func notificationSuccessTapped(_ sender: Any) {
        notificationGenerator.notificationOccurred(UINotificationFeedbackType.success)
    }
    
    @IBAction func notificationFailureTapped(_ sender: Any) {
        notificationGenerator.notificationOccurred(UINotificationFeedbackType.error)
    }
    
    @IBAction func notificationWarningTapped(_ sender: Any) {
        notificationGenerator.notificationOccurred(UINotificationFeedbackType.warning)
    }
}


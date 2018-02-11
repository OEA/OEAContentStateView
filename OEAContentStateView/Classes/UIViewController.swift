//
//  UIViewController.swift
//  OEAContentStateView
//
//  Created by Omer Emre Aslan on 11.02.2018.
//  Copyright © 2018 Omer Emre Aslan. All rights reserved.
//

public extension UIViewController {
    func setContent(stateView: OEAContentStateView, in view: UIView) {
        stateView.setContainer(view: view)
    }
}

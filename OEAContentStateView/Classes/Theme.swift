//
//  Theme.swift
//  OEAContentStateView
//
//  Created by Omer Emre Aslan on 11.02.2018.
//  Copyright © 2018 Omer Emre Aslan. All rights reserved.
//

public protocol Theme {
    var backgroundColor: UIColor? { get }
    var textColor: UIColor? { get }
}

class DefaultTheme : Theme {
    var backgroundColor: UIColor? = .clear
    var textColor: UIColor? = .black
}

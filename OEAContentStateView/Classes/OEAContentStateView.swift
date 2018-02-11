//
//  OEAContentStateView.swift
//  OEAContentStateView
//
//  Created by Omer Emre Aslan on 11.02.2018.
//  Copyright © 2018 Omer Emre Aslan. All rights reserved.
//

public protocol OEAContentStateViewDelegate {
}

public class OEAContentStateView : UIView {
    private var containerView: UIView? {
        didSet {
            updateLayout()
        }
    }
    
    public var contentState: OEAContentState = .none {
        didSet {
            updateLayout()
        }
    }
    
    public var theme: Theme = DefaultTheme() {
        didSet {
            updateTheme()
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        updateLayout()
    }
    
    public func setContainer(view containerView: UIView) {
        self.containerView = containerView
    }
}


extension OEAContentStateView {
    private func updateLayout() {
        guard let containerView = self.containerView else {
            return
        }
        prepareForReuse()
        updateTheme()
        
        containerView.addSubview(self)
        topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
    }
    
    private func prepareForReuse() {
        containerView?.removeConstraints(constraints)
        removeFromSuperview()
        backgroundColor = .clear
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func updateTheme() {
        backgroundColor = theme.backgroundColor
    }
}

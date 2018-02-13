//
//  OEAContentStateView.swift
//  OEAContentStateView
//
//  Created by Omer Emre Aslan on 14.02.2018.
//  Copyright © 2018 Omer Emre Aslan. All rights reserved.
//

class OEALoadingStateView: UIView {
    
    private lazy var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.activityIndicatorViewStyle = .gray
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }()
    
    private lazy var textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.numberOfLines = 0
        textLabel.font = UIFont.systemFont(ofSize: 16)
        textLabel.textColor = .gray
        textLabel.textAlignment = .center
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OEALoadingStateView {
    func setText(_ text: String) {
        textLabel.text = text
    }
}

private extension OEALoadingStateView {
    func setupLayout() {
        addActivityIndicator()
        addTextLabel()
    }
    
    func addActivityIndicator() {
        addSubview(activityIndicator)
        activityIndicator
            .centerYAnchor
            .constraint(equalTo: self.centerYAnchor,
                        constant: -10)
            .isActive = true
        activityIndicator
            .centerXAnchor
            .constraint(equalTo: self.centerXAnchor)
            .isActive = true
        
        activityIndicator.startAnimating()
    }
    
    func addTextLabel() {
        addSubview(textLabel)
        textLabel
            .topAnchor
            .constraint(equalTo: activityIndicator.bottomAnchor,
                        constant: 5.0)
            .isActive = true
        textLabel
            .leadingAnchor
            .constraint(equalTo: self.leadingAnchor, constant: 15.0)
            .isActive = true
        textLabel
            .trailingAnchor
            .constraint(equalTo: self.trailingAnchor, constant: -15.0)
            .isActive = true
    }
}

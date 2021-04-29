//
//  FrendsController.swift
//  VKApp
//
//  Created by KKK on 13.04.2021.
//

import UIKit

class FrendsController: UIControl {
 
    
enum Letters: String, CaseIterable {
        case A, B, C, D, E, F, M, Л, М
    }
    
    var selectedLike: Letters? = nil {
        didSet {
            updateSelectedLike()
            sendActions(for: .valueChanged)
        }
    }
    
    
    private var buttons: [UIButton] = []
    private var labels: [UILabel] = []
    
    private var stackView: UIStackView!
    
    
    private func setupControl() {
        Letters.allCases.forEach { Letters in
            
            let button = UIButton(type: .custom)
            button.setTitle(Letters.rawValue, for: .normal)

//            button.setTitleColor(.lightGray, for: .normal)
//            button.setTitleColor(.yellow, for: .selected)
//            button.addTarget(self, action: #selector(selectLike(_:)), for: .touchUpInside)

            buttons.append(button)
            
            let label = UILabel()
            label.text = Letters.rawValue
            labels.append(label)
        
        }
        stackView = UIStackView(arrangedSubviews: buttons)

//        stackView.spacing = 10
        stackView.axis = .vertical
        stackView.alignment = .trailing
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = bounds
    }

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupControl()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupControl()
    }
    
  
    
    private func updateSelectedLike() {
        buttons.forEach { button in
            button.isSelected = button.title(for: []) == selectedLike?.rawValue
        }        
    }
    
    
    @objc private func selectLike(_ sender: UIButton) {
        guard let day = Letters(rawValue: sender.title(for: [])!) else { return }
        self.selectedLike = day

    }
    
}

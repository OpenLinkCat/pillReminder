//
//  DosageMedicationDetailView.swift
//  PR-App
//
//  Created by Jakub Homik on 01/06/2020.
//  Copyright © 2020 Jakub Homik. All rights reserved.
//

import UIKit

final class DosageMedicationDetailView: UIView {
    
    private lazy var dosageView = CustomInformationView(
        title: NSAttributedString(string: "Dose", attributes: self.titleAttributes),
        input: NSAttributedString(string: "2 times a days | Morning, Evening", attributes: self.inputAttributes))
    
    private lazy var doseProgramView = CustomInformationView(
        title: NSAttributedString(string: "Program", attributes: self.titleAttributes),
        input: NSAttributedString(string: "Everyday", attributes: self.inputAttributes))
    
    private lazy var capacityPillsLeft = CustomInformationView(
        title: NSAttributedString(string: "Capacity", attributes: self.titleAttributes),
        input: NSAttributedString(string: "50 pills left", attributes: self.inputAttributes))
    
    private lazy var titleAttributes: [NSAttributedString.Key: Any] = {
        return [.font: UIFont.systemFont(ofSize: 24, weight: .bold), .foregroundColor: UIColor.label]
    }()
    
    private lazy var inputAttributes: [NSAttributedString.Key: Any] = {
        return [.font: UIFont.systemFont(ofSize: 12), .foregroundColor: UIColor.secondaryLabel]
    }()
    
    private let dosageMedicationStackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureDosageMedicationView()
        configureDosageMedicationStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureDosageMedicationView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureDosageMedicationStackView() {
        dosageMedicationStackView.axis = .vertical
        dosageMedicationStackView.distribution = .equalSpacing
    
        addSubview(dosageMedicationStackView)
        dosageMedicationStackView.addArrangedSubview(dosageView)
        dosageMedicationStackView.addArrangedSubview(doseProgramView)
        dosageMedicationStackView.addArrangedSubview(capacityPillsLeft)
        dosageMedicationStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dosageMedicationStackView.topAnchor.constraint(equalTo: self.topAnchor),
            dosageMedicationStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            dosageMedicationStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            dosageMedicationStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}

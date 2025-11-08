//
//  InformationViewController.swift
//  AccentColor
//
//  Created by Hector Quiroz on 18/10/25.
//

import UIKit

class InformationViewController: UIViewController {
    
    private lazy var informationTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false //no queremos que asuma constraints
        textView.font = .systemFont(ofSize: 20)
        return textView
    }()
    
//    @IBOutlet weak var informationTextView: UITextView!
    var informationText: String = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque laoreet vestibulum libero, at dictum dui auctor eget. Integer erat ipsum, posuere in odio ac, volutpat eleifend tellus. Fusce sit amet erat magna. Mauris aliquam quam velit, in eleifend dolor imperdiet nec. Ut placerat orci quis turpis volutpat, mattis vehicula justo lacinia. Proin sollicitudin malesuada mauris ut porta. Phasellus a dolor finibus, vulputate nunc eu, consectetur mauris. Cras ac vulputate elit. Ut nisi tellus, pharetra sed iaculis id, commodo et purus.
    """ //tres comillas es para textos largos

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        informationTextView.text = informationText
        setTextViewConstraints()
        // Do any additional setup after loading the view.
    }
    
    private func setTextViewConstraints() {
        view.addSubview(informationTextView)
//        CONSTRAINTS:
        NSLayoutConstraint.activate([
            informationTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
//          view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: infromationTextView.topAnchor, constant: -24)   //forma invertida
            
            informationTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24),
            informationTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            informationTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24)
        ])
       
    }

}


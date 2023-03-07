//
//  FruitDetailViewController.swift
//  CoolFruits
//
//  Created by Luis Alejandro Zapata Gonzalez on 19-07-22.
//

import Foundation
import UIKit

public class FruitDetailViewController: UIViewController {
    @IBOutlet weak var familyLabel: UILabel!
    @IBOutlet weak var genusLabel: UILabel!
    @IBOutlet weak var nutritionLabel: UILabel!
    
	override public func viewDidLoad() {
		super.viewDidLoad()
		familyLabel.text = NSLocalizedString("family", comment: "") + ": \(SelectedFruit.fruit!.family!)"
		genusLabel.text = NSLocalizedString("genus", comment: "") + ": \(SelectedFruit.fruit!.genus!)"
		nutritionLabel.text = getNutritionText(selectedFruit: SelectedFruit.fruit!)
	}
	
	
	func getNutritionText(selectedFruit: FruitModel) -> String {
		var text = String()
		text += NSLocalizedString("sugar", comment: "") + String(selectedFruit.nutritions?.sugar ?? 0) + "\n"
		text += NSLocalizedString("calories", comment: "") +  String(selectedFruit.nutritions?.calories ?? 0) + "\n"
		text += NSLocalizedString("fat", comment: "") +  String(selectedFruit.nutritions?.fat ?? 0)
		return text
	}
}

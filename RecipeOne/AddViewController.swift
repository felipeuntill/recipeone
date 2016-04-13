//
//  AddViewController.swift
//  RecipeOne
//
//  Created by Felipe Assunção on 4/13/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var recipeTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleTextField.backgroundColor = UIColor.whiteColor()
        .colorWithAlphaComponent(0.7)
        recipeTextView.backgroundColor = UIColor.whiteColor()
            .colorWithAlphaComponent(0.7)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

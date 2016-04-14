//
//  Recipe.swift
//  RecipeOne
//
//  Created by Felipe Assunção on 4/13/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class Recipe: NSObject {

    var title  : String?
    var recipe : String?
    
    override init() {
        super.init()
    }
    
    init(title: String, recipe: String)
    {
        self.title = title
        self.recipe = recipe
    }
    
    
}

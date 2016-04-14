//
//  RecipeManager.swift
//  RecipeOne
//
//  Created by Felipe Assunção on 4/13/16.
//  Copyright © 2016 Felipe Assunção. All rights reserved.
//

import UIKit

class RecipeManager: NSObject {

    static var recipes : [Recipe] = [Recipe]()
    
    class func AddRecipe(recipe : Recipe)
    {
        recipes.append(recipe)
    }
    
    class func DeleteRecipe(id: Int)
    {
        recipes.removeAtIndex(id)
    }
    
    class func LoadRecipe(id:  Int) -> Recipe
    {
        if(recipes.count >= id)
        {
            return recipes[id]
        }
        return Recipe()
    }
    
}

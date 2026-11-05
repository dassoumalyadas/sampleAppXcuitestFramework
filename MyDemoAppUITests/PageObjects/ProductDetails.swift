//
//  ProductDetails.swift
//  My Demo App
//
//  Created by Soumalya Das on 06/11/26.
//
import XCTest

public class ProductDetailsElems{
     
    
    let app = XCUIApplication()
    
    // Segregated the elements related to product details.
    // Product Details
    lazy var productDetailsScreen = app.otherElements["ProductDetails-screen"]
    lazy var addToCartButton = productDetailsScreen.buttons["Add To Cart"]
    lazy var infoTitle = productDetailsScreen.staticTexts["Product Highlights"]
    lazy var substractAmountButton = productDetailsScreen.buttons["SubtractMinus Icons"]
    lazy var addAmountButton = productDetailsScreen.buttons["AddPlus Icons"]
    lazy var rateValue = productDetailsScreen.buttons["StarSelected Icons"]
    lazy var averageRateButton = productDetailsScreen.children(matching: .other).element(boundBy: 1)
    
    func productAmount(amount: String)-> XCUIElement {
        return productDetailsScreen.staticTexts[amount]
    }
    func detailsPageOf(productName: String)-> XCUIElement {
        return productDetailsScreen.staticTexts[productName]
    }
    func getPrice (price: String) -> XCUIElement {
        return productDetailsScreen.staticTexts[price]
    }
    func getColor (color: String) -> XCUIElement {
        return productDetailsScreen.buttons[color + "ColorUnSelected Icons"]
    }
    
}

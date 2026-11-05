
import XCTest

public class PageObject {
    let app = XCUIApplication()
    
    //Here lazy var is used because It will initiate the object when its called in the subsequesnt methods , var initializes the object immidietly.
    // Tab bar items
    lazy var catalogButton = app.buttons["Catalog-tab-item"]
    lazy var cartButton = app.buttons["Cart-tab-item"]
    lazy var moreButton = app.buttons["More-tab-item"]
    
    // Menu items
    lazy var webviewButton = app.buttons["Webview-menu-item"]
    lazy var qrCodeScannerButton = app.buttons["QrCodeScanner-menu-item"]
    lazy var geoLocationButton = app.buttons["GeoLocation-menu-item"]
    lazy var drawingButton = app.buttons["Drawing-menu-item"]
    lazy var aboutButton = app.buttons["About-menu-item"]
    lazy var resetAppStateButton = app.buttons["ResetAppState-menu-item"]
    lazy var biometricsButton = app.buttons["Biometrics-menu-item"]
    lazy var logOutButton = app.buttons["LogOut-menu-item"]
    
    // Screens
    lazy var webviewScreen = app.otherElements["Webview-screen"]
    lazy var qrCodeScannerScreen = app.otherElements["QrCodeScanner-screen"]
    lazy var geoLocaltionScreen = app.otherElements["GeoLocation-screen"]
    lazy var drawingScreen = app.otherElements["Drawing-screen"]
    lazy var aboutScreen = app.otherElements["About-screen"]
    lazy var resetAppScreen = app.otherElements["ResetAppState-screen"]
    lazy var biometricsScreen = app.otherElements["Biometrics-screen"]
    lazy var logOutScreen = app.otherElements["LogOut-screen"]
    
    
    // Cart
    lazy var cartScreen = app.otherElements["Cart-screen"]
    lazy var cartEmpty = cartScreen.staticTexts["No Items"]
    lazy var goShoppingButton = cartScreen.buttons["GoShopping"]
    func cartDetailsPageOf(productName: String)-> XCUIElement {
        return cartScreen.staticTexts[productName]
    }

    // Catalog
    lazy var catalogScreen = app.otherElements["Catalog-screen"]
    func selectItemByNumber(itemNumber: Int) -> XCUIElement {
        return app.otherElements.matching(identifier: "ProductItem").element(boundBy: itemNumber)
    }
    func selectItemByName(itemName: String) -> XCUIElement {
        return app.staticTexts[itemName]
    }


    
    
}

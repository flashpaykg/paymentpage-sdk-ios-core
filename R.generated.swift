//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 11 storyboards.
  struct storyboard {
    /// Storyboard `ApplePay`.
    static let applePay = _R.storyboard.applePay()
    /// Storyboard `Aps`.
    static let aps = _R.storyboard.aps()
    /// Storyboard `CardSale`.
    static let cardSale = _R.storyboard.cardSale()
    /// Storyboard `ClarificationFields`.
    static let clarificationFields = _R.storyboard.clarificationFields()
    /// Storyboard `CustomerFields`.
    static let customerFields = _R.storyboard.customerFields()
    /// Storyboard `Final`.
    static let final = _R.storyboard.final()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `RemoveSavedCardViewController`.
    static let removeSavedCardViewController = _R.storyboard.removeSavedCardViewController()
    /// Storyboard `RestorePayment`.
    static let restorePayment = _R.storyboard.restorePayment()
    /// Storyboard `ThreeDSecure`.
    static let threeDSecure = _R.storyboard.threeDSecure()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "ApplePay", bundle: ...)`
    static func applePay(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.applePay)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Aps", bundle: ...)`
    static func aps(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.aps)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "CardSale", bundle: ...)`
    static func cardSale(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.cardSale)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "ClarificationFields", bundle: ...)`
    static func clarificationFields(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.clarificationFields)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "CustomerFields", bundle: ...)`
    static func customerFields(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.customerFields)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Final", bundle: ...)`
    static func final(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.final)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "RemoveSavedCardViewController", bundle: ...)`
    static func removeSavedCardViewController(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.removeSavedCardViewController)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "RestorePayment", bundle: ...)`
    static func restorePayment(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.restorePayment)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "ThreeDSecure", bundle: ...)`
    static func threeDSecure(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.threeDSecure)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.entitlements` struct is generated, and contains static references to 1 properties.
  struct entitlements {
    struct comAppleDeveloperInAppPayments {
      static let merchantFlashpayDemoSdk = infoPlistString(path: ["com.apple.developer.in-app-payments"], key: "merchant.flashpayDemo.sdk") ?? "merchant.flashpayDemo.sdk"

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  /// This `R.reuseIdentifier` struct is generated, and contains static references to 2 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `clarificationField`.
    static let clarificationField: Rswift.ReuseIdentifier<ClarificationFieldTableViewCell> = Rswift.ReuseIdentifier(identifier: "clarificationField")
    /// Reuse identifier `customerField`.
    static let customerField: Rswift.ReuseIdentifier<CustomerFieldTableViewCell> = Rswift.ReuseIdentifier(identifier: "customerField")

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try applePay.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try aps.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try cardSale.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try clarificationFields.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try customerFields.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try final.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try main.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try removeSavedCardViewController.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try restorePayment.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try threeDSecure.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct applePay: Rswift.StoryboardResourceType, Rswift.Validatable {
      let applePaySaleViewController = StoryboardViewControllerResource<ApplePaySaleViewController>(identifier: "ApplePaySaleViewController")
      let bundle = R.hostingBundle
      let name = "ApplePay"

      func applePaySaleViewController(_: Void = ()) -> ApplePaySaleViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: applePaySaleViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.applePay().applePaySaleViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'applePaySaleViewController' could not be loaded from storyboard 'ApplePay' as 'ApplePaySaleViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct aps: Rswift.StoryboardResourceType, Rswift.Validatable {
      let apsViewController = StoryboardViewControllerResource<ApsViewController>(identifier: "ApsViewController")
      let bundle = R.hostingBundle
      let name = "Aps"

      func apsViewController(_: Void = ()) -> ApsViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: apsViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.aps().apsViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'apsViewController' could not be loaded from storyboard 'Aps' as 'ApsViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct cardSale: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let cardPayoutViewController = StoryboardViewControllerResource<CardPayoutViewController>(identifier: "CardPayoutViewController")
      let cardSaleViewController = StoryboardViewControllerResource<CardSaleViewController>(identifier: "CardSaleViewController")
      let name = "CardSale"
      let savedCardSaleViewController = StoryboardViewControllerResource<SavedCardSaleViewController>(identifier: "SavedCardSaleViewController")

      func cardPayoutViewController(_: Void = ()) -> CardPayoutViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: cardPayoutViewController)
      }

      func cardSaleViewController(_: Void = ()) -> CardSaleViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: cardSaleViewController)
      }

      func savedCardSaleViewController(_: Void = ()) -> SavedCardSaleViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: savedCardSaleViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.cardSale().cardPayoutViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'cardPayoutViewController' could not be loaded from storyboard 'CardSale' as 'CardPayoutViewController'.") }
        if _R.storyboard.cardSale().cardSaleViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'cardSaleViewController' could not be loaded from storyboard 'CardSale' as 'CardSaleViewController'.") }
        if _R.storyboard.cardSale().savedCardSaleViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'savedCardSaleViewController' could not be loaded from storyboard 'CardSale' as 'SavedCardSaleViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct clarificationFields: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let clarificationFieldsTableViewController = StoryboardViewControllerResource<ClarificationFieldsTableViewController>(identifier: "ClarificationFieldsTableViewController")
      let name = "ClarificationFields"

      func clarificationFieldsTableViewController(_: Void = ()) -> ClarificationFieldsTableViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: clarificationFieldsTableViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.clarificationFields().clarificationFieldsTableViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'clarificationFieldsTableViewController' could not be loaded from storyboard 'ClarificationFields' as 'ClarificationFieldsTableViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct customerFields: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let customerFieldsTableViewController = StoryboardViewControllerResource<CustomerFieldsTableViewController>(identifier: "CustomerFieldsTableViewController")
      let name = "CustomerFields"

      func customerFieldsTableViewController(_: Void = ()) -> CustomerFieldsTableViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: customerFieldsTableViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.customerFields().customerFieldsTableViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'customerFieldsTableViewController' could not be loaded from storyboard 'CustomerFields' as 'CustomerFieldsTableViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct final: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let finalViewController = StoryboardViewControllerResource<FinalViewController>(identifier: "FinalViewController")
      let name = "Final"

      func finalViewController(_: Void = ()) -> FinalViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: finalViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.final().finalViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'finalViewController' could not be loaded from storyboard 'Final' as 'FinalViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct main: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let mainViewController = StoryboardViewControllerResource<MainViewController>(identifier: "MainViewController")
      let name = "Main"

      func mainViewController(_: Void = ()) -> MainViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: mainViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.main().mainViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'mainViewController' could not be loaded from storyboard 'Main' as 'MainViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct removeSavedCardViewController: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "RemoveSavedCardViewController"
      let removeSavedCardViewController = StoryboardViewControllerResource<RemoveSavedCardViewController>(identifier: "RemoveSavedCardViewController")

      func removeSavedCardViewController(_: Void = ()) -> RemoveSavedCardViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: removeSavedCardViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.removeSavedCardViewController().removeSavedCardViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'removeSavedCardViewController' could not be loaded from storyboard 'RemoveSavedCardViewController' as 'RemoveSavedCardViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct restorePayment: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "RestorePayment"
      let restorePaymentViewController = StoryboardViewControllerResource<RestorePaymentViewController>(identifier: "RestorePaymentViewController")

      func restorePaymentViewController(_: Void = ()) -> RestorePaymentViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: restorePaymentViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.restorePayment().restorePaymentViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'restorePaymentViewController' could not be loaded from storyboard 'RestorePayment' as 'RestorePaymentViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct threeDSecure: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "ThreeDSecure"
      let threeDSecureViewController = StoryboardViewControllerResource<ThreeDSecureViewController>(identifier: "ThreeDSecureViewController")

      func threeDSecureViewController(_: Void = ()) -> ThreeDSecureViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: threeDSecureViewController)
      }

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
        if _R.storyboard.threeDSecure().threeDSecureViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'threeDSecureViewController' could not be loaded from storyboard 'ThreeDSecure' as 'ThreeDSecureViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}

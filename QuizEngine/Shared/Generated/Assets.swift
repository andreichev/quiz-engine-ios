// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Assets {
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal static let background1 = ColorAsset(name: "Background1")
  internal static let background3 = ColorAsset(name: "Background3")
  internal static let baseTint1 = ColorAsset(name: "BaseTint1")
  internal static let correct = ColorAsset(name: "Correct")
  internal static let divider = ColorAsset(name: "Divider")
  internal static let error = ColorAsset(name: "Error")
  internal static let gray = ColorAsset(name: "Gray")
  internal static let incorrect = ColorAsset(name: "Incorrect")
  internal static let shadow = ColorAsset(name: "Shadow")
  internal static let subtitle = ColorAsset(name: "Subtitle")
  internal static let text = ColorAsset(name: "Text")
  internal static let addIcon = ImageAsset(name: "AddIcon")
  internal static let buttonUserLocation = ImageAsset(name: "ButtonUserLocation")
  internal static let checkmark = ImageAsset(name: "Checkmark")
  internal static let logo = ImageAsset(name: "Logo")
  internal static let noPhoto = ImageAsset(name: "NoPhoto")
  internal static let radiobuttonOff = ImageAsset(name: "RadiobuttonOff")
  internal static let radiobuttonOn = ImageAsset(name: "RadiobuttonOn")
  internal static let tabBarIconAdd = ImageAsset(name: "TabBarIconAdd")
  internal static let tabBarIconHistory = ImageAsset(name: "TabBarIconHistory")
  internal static let tabBarIconHome = ImageAsset(name: "TabBarIconHome")
  internal static let tabBarIconProfile = ImageAsset(name: "TabBarIconProfile")
  internal static let tabBarIconQuizList = ImageAsset(name: "TabBarIconQuizList")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = resourcesBundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = resourcesBundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: resourcesBundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

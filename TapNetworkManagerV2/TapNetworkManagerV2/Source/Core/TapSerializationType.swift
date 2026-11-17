//
//  TapSerializationType.swift
//  TapNetworkManager/Core
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
/// Serialization type.
///
/// - json: JSON
/// - propertyList: Property list / XML
/// - url: URL
public enum TapSerializationType {

    case json
    case propertyList
    case url
}

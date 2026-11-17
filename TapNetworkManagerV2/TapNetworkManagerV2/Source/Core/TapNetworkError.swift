//
//  TapNetworkError.swift
//  TapNetworkManager/Core
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
/// Network error.
///
/// - internalError: Internal network manager error.
/// - serializationError: Serialization error.
/// - wrongURL: Wrong URL error.
public enum TapNetworkError: Error {

    case internalError
    case serializationError(TapSerializationError)
    case wrongURL(String)
}

/// Serialization error.
///
/// - wrongData: Wrong serialization data.
public enum TapSerializationError {

    case wrongData
}

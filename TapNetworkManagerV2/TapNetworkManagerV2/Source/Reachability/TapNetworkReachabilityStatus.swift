//
//  TapNetworkReachabilityStatus.swift
//  TapNetworkManager/Reachability
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
public enum TapNetworkReachabilityStatus {

    case unknown
    case unreachable
    case reachable(TapNetworkConnectionType)
}

public enum TapNetworkConnectionType {

    case cellular
    case wifi
}

extension TapNetworkReachabilityStatus: Equatable {

    public static func == (lhs: TapNetworkReachabilityStatus, rhs: TapNetworkReachabilityStatus) -> Bool {

        switch (lhs, rhs) {

        case (.unknown, .unknown):

            return true

        case (.unreachable, .unreachable):

            return true

        case let (.reachable(lhsConnectionType), .reachable(rhsConnectionType)):

            return lhsConnectionType == rhsConnectionType

        default:

            return false
        }
    }
}

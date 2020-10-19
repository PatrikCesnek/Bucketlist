//
//  MKPointAnnotation-ObservableObject.swift
//  BucketList
//
//  Created by Patrik Cesnek on 13/10/2020.
//

import MapKit

extension MKPointAnnotation: ObservableObject {
    public var wrappedTitle: String {
        get {
            self.title ?? "Unknown value"
        } set {
            title = newValue
        }
    }
    public var wrappedSubtitle: String {
        get {
            self.subtitle ?? "Unknown value"
        } set {
            subtitle = newValue
        }
    }

}

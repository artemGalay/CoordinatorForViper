//
//  View.swift
//  CoordinatorForViper
//
//  Created by Артем Галай on 24.12.22.
//

import Foundation

protocol View: AnyObject {

    associatedtype PresenterType
    var presenter: PresenterType { get set }
}

//
//  Interactor.swift
//  CoordinatorForViper
//
//  Created by Артем Галай on 24.12.22.
//

import Foundation

protocol Interactor: AnyObject {

    associatedtype Delegate
    var delegate: Delegate? { get set }
}

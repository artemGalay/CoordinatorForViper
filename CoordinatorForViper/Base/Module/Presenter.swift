//
//  Presenter.swift
//  CoordinatorForViper
//
//  Created by Артем Галай on 24.12.22.
//

import Foundation

class Presenter<V: View, I: Interactor> {

    weak var view: V?

    var interactor: I

    init(view: V, interactor: I) {
        self.view = view
        self.interactor = interactor

        if let presenter = self as? V.PresenterType {
            view.presenter = presenter
        } else {
            fatalError()
        }

        if let presenter = self as? I.Delegate {
            interactor.delegate = presenter
        } else {
            fatalError("Type of presenter or interactor is wrong")
        }
    }
}

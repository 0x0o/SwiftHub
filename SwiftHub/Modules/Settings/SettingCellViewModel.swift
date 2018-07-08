//
//  SettingCellViewModel.swift
//  SwiftHub
//
//  Created by Sygnoos9 on 7/8/18.
//  Copyright © 2018 Khoren Markosyan. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class SettingCellViewModel {

    let type: SettingType
    let title: Driver<String>
    let imageName: Driver<String>
    let showDisclosure: Driver<Bool>

    let settingModel: SettingModel
    let destinationViewModel: Any?

    init(with settingModel: SettingModel, destinationViewModel: Any?) {
        self.destinationViewModel = destinationViewModel
        self.settingModel = settingModel
        type = settingModel.type
        title = Driver.just("\(settingModel.title ?? "")")
        imageName = Driver.just("\(settingModel.leftImage ?? "")")
        showDisclosure = Driver.just(settingModel.showDisclosure)
    }
}

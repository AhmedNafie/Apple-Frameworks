//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Ahmed Nafie on 20/11/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject  {
    var selectedFrameWork: Framework? {
        didSet {
            isShowingFrameworkDetailview = true
        }
    }
    @Published var isShowingFrameworkDetailview = false
}

//
//  FrameworkDetailViewModel.swift
//  Apple Frameworks
//
//  Created by Ahmed Nafie on 18/01/2025.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject  {
    let framework: Framework
    var isShowingFrameworkDetailview: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingFrameworkDetailview: Binding<Bool>) {
        self.framework = framework
        self.isShowingFrameworkDetailview = isShowingFrameworkDetailview
    }
}

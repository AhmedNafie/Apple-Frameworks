//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Ahmed Nafie on 19/11/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFrameWork = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingFrameworkDetailview) {
                    FrameworkDetailview(framework: viewModel.selectedFrameWork ?? MockData.sampleFramework, isShowingFrameworkDetailview: $viewModel.isShowingFrameworkDetailview)
                }
            }
        }
    }
}



#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

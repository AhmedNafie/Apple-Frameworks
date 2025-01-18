//
//  FrameworkDetailview.swift
//  Apple Frameworks
//
//  Created by Ahmed Nafie on 20/11/2024.
//

import SwiftUI

struct FrameworkDetailview: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    viewModel.isShowingFrameworkDetailview.wrappedValue = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }
            .padding()
            Spacer()
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                viewModel.isShowingSafariView = true
            } label: {
                FrameworkButton(title: "Learn More")
            }
            
        }
        .sheet(isPresented: $viewModel.isShowingSafariView, content: {
            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailview(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingFrameworkDetailview: .constant(false)))
}

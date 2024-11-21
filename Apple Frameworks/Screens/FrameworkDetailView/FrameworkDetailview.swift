//
//  FrameworkDetailview.swift
//  Apple Frameworks
//
//  Created by Ahmed Nafie on 20/11/2024.
//

import SwiftUI

struct FrameworkDetailview: View {
    let framework: Framework
    @Binding var isShowingFrameworkDetailview: Bool
    @State private var isShowingSafariView = false

    var body: some View {

        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingFrameworkDetailview = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }
            .padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                FrameworkButton(title: "Learn More")
            }
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailview(framework: MockData.sampleFramework, isShowingFrameworkDetailview: .constant(false))
        .preferredColorScheme(.dark)
}

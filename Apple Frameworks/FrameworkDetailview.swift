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
                
            } label: {
                FrameworkButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailview(framework: MockData.sampleFramework, isShowingFrameworkDetailview: .constant(false))
        .preferredColorScheme(.dark)
}

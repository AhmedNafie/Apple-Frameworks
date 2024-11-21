//
//  FrameworkButton.swift
//  Apple Frameworks
//
//  Created by Ahmed Nafie on 20/11/2024.
//

import SwiftUI

struct FrameworkButton: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200,height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .cornerRadius(10)    }
}

#Preview {
    FrameworkButton(title: "Learn More")
}

//
//  SectionItemView.swift
//  JumpLinksSwiftUI
//
//  Created by Farrukh on 23/04/2025.
//
import SwiftUI

public struct SectionItemView: View {
    public var value: String
    public var body: some View {
        Rectangle()
            .fill(Color.red)
            .overlay {
                Text("\(value)")
            }
            .frame(height: 300)
    }
}

public struct SectionItemView2: View {
    public var value: String
    public var body: some View {
        Rectangle()
            .fill(.pink)
            .overlay {
                Text("\(value)")
            }
            .frame(height: 300)
    }
}

public struct SectionItemView3: View {
    public var value: String
    public var body: some View {
        Rectangle()
            .fill(.yellow)
            .overlay {
                Text("\(value)")
            }
            .frame(height: 300)
    }
}

public struct SectionItemView4: View {
    public var value: String
    public var body: some View {
        Rectangle()
            .fill(.gray)
            .overlay {
                Text("\(value)")
            }
            .frame(height: 400)
    }
}

public struct SectionItemView5: View {
    public var value: String
    public var body: some View {
        Rectangle()
            .fill(.orange)
            .overlay {
                Text("\(value)")
            }
            .frame(height: 300)
    }
}

public struct SectionItemView6: View {
    public var value: String
    public var body: some View {
        Rectangle()
            .fill(.blue)
            .overlay {
                Text("\(value)")
            }
            .frame(height: 300)
    }
}


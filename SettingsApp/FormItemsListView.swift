//
//  FormItemsListView.swift
//  SettingsApp
//
//  Created by Adriano Valumin on 13/01/24.
//

import SwiftUI

struct FormItemsListView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct IcloudProfileItem: View {
    var userName: String
    var profilePic: String
    var navigationLinkContent: (any View)?

    var body: some View {
        HStack {
            NavigationLink {
                if let navigationLinkContent = navigationLinkContent {
                    AnyView(navigationLinkContent)
                } else {
                    Text("Screen to be developed.")
                }
            } label: {
                Image(profilePic)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48)
                    .clipShape(Circle())

                VStack {
                    HStack {
                        Text("\(userName)")
                            .font(.title2)
                        Spacer()
                    }

                    HStack {
                        Text("ID Apple, iCloud+, Mídia e Compras")
                            .font(.caption)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ItemNavigationLinkPickerIcon: View {
    @State var selectedItem: String = "DefaultValue"
    var icon: String
    var name: String
    var backgroundColor: Color
    var foregroundColor: Color = .white
    var itemsList: [String]

    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 5)
                .padding(.vertical, 4)
                .frame(width: 30, height: 30)
                .foregroundStyle(foregroundColor)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 7))

            Picker(name, selection: $selectedItem) {
                ForEach(itemsList, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.navigationLink)
        }
    }
}

struct ItemNavigationLink: View {
    @State var selectedItem: String = "DefaultValue"
    var name: String
    var itemsList: [String]

    var body: some View {
        HStack {
            Picker(name, selection: $selectedItem) {
                ForEach(itemsList, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.navigationLink)
        }
    }
}

struct ItemNavigationLinkIcon: View {
    var icon: String
    var name: String
    var backgroundColor: Color
    var foregroundColor: Color = .white
    var itemsList: [String]?
    var lightFont: Bool = false
    var border: Bool = false

    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
//                .frame(width: 18, height: 18)
                .scaledToFit()
                .padding(.horizontal, 5)
                .padding(.vertical, 4)
                .frame(width: 30, height: 30)
                .foregroundStyle(foregroundColor)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 7))
                .overlay(border ? RoundedRectangle(cornerRadius: 10).stroke(Color.secondary, lineWidth: 1).opacity(0.3) : nil)

            NavigationLink {
                Form {
                    if let itemsList = itemsList {
                        ForEach(itemsList, id: \.self) {
                            Text($0)
                        }
                        .navigationTitle(name)
                        .toolbarTitleDisplayMode(.inline)
                    } else { }
                }
            } label: {
                Text(name)
            }
            .fontWeight(lightFont ? .light : .regular)
        }
    }
}

struct ItemToggle: View {
    @State var toggle = true
    var icon: String
    var name: String
    var backgroundColor: Color = .orange
    var foregroundColor: Color = .white

    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 18, height: 18)
                .scaledToFit()
                .padding(.horizontal, 5)
                .padding(.vertical, 4)
                .frame(width: 30, height: 30)
                .foregroundStyle(foregroundColor)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 6, height: 5)))
            Toggle(name, isOn: $toggle)
        }
    }
}

#Preview {
//    FormItemsListView()
    IcloudProfileItem(userName: "Adriano", profilePic: "adriano")
}

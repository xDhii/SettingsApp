//
//  WiFiView.swift
//  SettingsApp
//
//  Created by Adriano Valumin on 14/01/24.
//

import SwiftUI

struct WiFiView: View {
    @State private var isWifiOn = true
    private var askForAccessItemsList = ["Desativado", "Notificar", "Perguntar"]
    private var accesLinkItemsList = ["Nunca", "Solicitar", "Automática"]

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Toggle("Wi-Fi", isOn: $isWifiOn)
                }
                .navigationTitle("Wi-Fi")
                .navigationBarTitleDisplayMode(.inline)

                if isWifiOn {
                    Section("Minhas Redes") {
                        ForEach(0 ..< 2) { number in
                            Text("Minha rede \(number)")
                        }
                    }

                    Section("Outras Redes") {
                        ForEach(0 ..< 2) { number in
                            Text("Outra rede \(number)")
                        }
                    }

                    Section {
                        ItemNavigationLink(selectedItem: askForAccessItemsList[0],
                                           name: "Solicitar Conexão",
                                           itemsList: askForAccessItemsList)
                    } footer: {
                        Text("A conexão a redes conhecidas será automática. Se não houver redes conhecidas, será perguntado se você deseja receber notificações sobre redes disponíveis.")
                    }

                    Section {
                        ItemNavigationLink(selectedItem: accesLinkItemsList[0],
                                           name: "Conexão a Acesso Pessoal",
                                           itemsList: accesLinkItemsList)
                    } footer: {
                        Text("Permitir que este dispositivo descubra automaticamente um acesso pessoal por perto quando não houver uma rede Wi-Fi disponível.")
                    }
                }
            }
        }
    }
}

#Preview {
    WiFiView()
}

//
//  ContentView.swift
//  SettingsApp
//
//  Created by Adriano Valumin on 11/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var search: String = ""
    @State var connectedWifi = "Valumin"
    let wifiList = ["Valumin", "Valumin_5G"]
    let bluetoothList = ["Adriano's AirPods Pro", "Adriano's AirPods Max"]
    let enabledDisabled = ["Ativado", "Desativado"]

    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(.secondary)

                            TextField("Buscar", text: $search)
                                .font(.callout)

                            Image(systemName: "mic.fill")
                                .foregroundStyle(.secondary)
                        }
                    }

                    Section {
                        IcloudProfileItem(userName: "Adriano Valumin",
                                          profilePic: "adriano")
                    }

                    Section {
                        ItemNavigationLink(icon: "airpodsmax",
                                           name: "Adriano's AirPods Max",
                                           backgroundColor: .orange,
                                           lightFont: true)
                    }

                    Section {
                        ItemToggle(toggle: false,
                                   icon: "airplane",
                                   name: "Modo Avião",
                                   backgroundColor: .orange)

                        ItemNavigationLinkPicker(selectedItem: wifiList[0],
                                                 icon: "wifi",
                                                 name: "Wi-Fi",
                                                 backgroundColor: .blue,
                                                 itemsList: wifiList)

                        ItemNavigationLinkPicker(selectedItem: bluetoothList[0],
                                                 icon: "questionmark",
                                                 name: "Bluetooth",
                                                 backgroundColor: .blue,
                                                 itemsList: bluetoothList)

                        ItemNavigationLink(icon: "antenna.radiowaves.left.and.right",
                                           name: "Celular",
                                           backgroundColor: .green)

                        ItemNavigationLinkPicker(selectedItem: enabledDisabled[0],
                                                 icon: "personalhotspot",
                                                 name: "Acesso Pessoal",
                                                 backgroundColor: .green,
                                                 itemsList: enabledDisabled)
                    }

                    Section {
                        ItemNavigationLink(icon: "bell.badge.fill",
                                           name: "Notificações",
                                           backgroundColor: Color(red: 0.992,
                                                                  green: 0.267,
                                                                  blue: 0.222))

                        ItemNavigationLink(icon: "speaker.wave.3.fill",
                                           name: "Som e Tato",
                                           backgroundColor: Color(red: 1.0,
                                                                  green: 0.21,
                                                                  blue: 0.369))

                        ItemNavigationLink(icon: "moon.fill",
                                           name: "Foco",
                                           backgroundColor: Color(red: 0.365,
                                                                  green: 0.357,
                                                                  blue: 0.902))

                        ItemNavigationLink(icon: "questionmark",
                                           name: "Tempo de Uso",
                                           backgroundColor: Color(red: 0.365,
                                                                  green: 0.357,
                                                                  blue: 0.902))
                    }

                    Section {
                        ItemNavigationLink(icon: "gear",
                                           name: "Geral",
                                           backgroundColor: .gray)

                        ItemNavigationLink(icon: "questionmark",
                                           name: "Central de Controle",
                                           backgroundColor: .gray)

                        ItemNavigationLink(icon: "sun.max.fill",
                                           name: "Tela e Brilho",
                                           backgroundColor: .blue)

                        ItemNavigationLink(icon: "questionmark",
                                           name: "Tela de Início e Biblioteca de Apps",
                                           backgroundColor: Color(red: 0.366,
                                                                  green: 0.357,
                                                                  blue: 0.902))

                        ItemNavigationLink(icon: "accessibility",
                                           name: "Acessibilidade",
                                           backgroundColor: Color(red: -0.003,
                                                                  green: 0.478,
                                                                  blue: 0.999))

                        ItemNavigationLink(icon: "questionmark",
                                           name: "Imagem de Fundo",
                                           backgroundColor: Color(red: 0.184,
                                                                  green: 0.68,
                                                                  blue: 0.899))

                        ItemNavigationLink(icon: "questionmark",
                                           name: "Em Espera",
                                           backgroundColor: .black)

                        ItemNavigationLink(icon: "questionmark",
                                           name: "Siri e Busca",
                                           backgroundColor: .blue)

                        ItemNavigationLink(icon: "faceid",
                                           name: "Face ID e Código",
                                           backgroundColor: Color(red: 0.18,
                                                                  green: 0.82,
                                                                  blue: 0.345))

                        ItemNavigationLink(icon: "sos",
                                           name: "SOS de Emergência",
                                           backgroundColor: Color(red: 0.995,
                                                                  green: 0.267,
                                                                  blue: 0.222))

                        ItemNavigationLink(icon: "sun.min.fill",
                                           name: "Notificações de Exposição",
                                           backgroundColor: .white,
                                           foregroundColor: .red,
                                           border: true)

                        ItemNavigationLink(icon: "battery.100percent",
                                           name: "Bateria",
                                           backgroundColor: Color(red: 0.18,
                                                                  green: 0.82,
                                                                  blue: 0.345))

                        ItemNavigationLink(icon: "hand.raised.fill",
                                           name: "Privacidade e Segurança",
                                           backgroundColor: Color(red: 0.043,
                                                                  green: 0.518,
                                                                  blue: 1.001))
                    }

                    Section("Tests") { }
                }
                .navigationTitle("Ajustes")
            }
        }
    }
}

#Preview {
    ContentView()
}

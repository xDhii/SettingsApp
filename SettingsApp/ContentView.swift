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
                        ItemNavigationLinkIcon(icon: "airpodsmax",
                                               name: "Adriano's AirPods Max",
                                               backgroundColor: .orange,
                                               lightFont: true)
                    }

                    Section {
                        ItemToggle(toggle: false,
                                   icon: "airplane",
                                   name: "Modo Avião",
                                   backgroundColor: .orange)

                        ItemNavigationLinkPickerIcon(selectedItem: wifiList[0],
                                                     icon: "wifi",
                                                     name: "Wi-Fi",
                                                     backgroundColor: .blue,
                                                     itemsList: wifiList)

                        ItemNavigationLinkPickerIcon(selectedItem: bluetoothList[0],
                                                     icon: "questionmark",
                                                     name: "Bluetooth",
                                                     backgroundColor: .blue,
                                                     itemsList: bluetoothList)

                        ItemNavigationLinkIcon(icon: "antenna.radiowaves.left.and.right",
                                               name: "Celular",
                                               backgroundColor: .green)

                        ItemNavigationLinkPickerIcon(selectedItem: enabledDisabled[0],
                                                     icon: "personalhotspot",
                                                     name: "Acesso Pessoal",
                                                     backgroundColor: .green,
                                                     itemsList: enabledDisabled)
                    }

                    Section {
                        ItemNavigationLinkIcon(icon: "bell.badge.fill",
                                               name: "Notificações",
                                               backgroundColor: Color(red: 0.992,
                                                                      green: 0.267,
                                                                      blue: 0.222))

                        ItemNavigationLinkIcon(icon: "speaker.wave.3.fill",
                                               name: "Som e Tato",
                                               backgroundColor: Color(red: 1.0,
                                                                      green: 0.21,
                                                                      blue: 0.369))

                        ItemNavigationLinkIcon(icon: "moon.fill",
                                               name: "Foco",
                                               backgroundColor: Color(red: 0.365,
                                                                      green: 0.357,
                                                                      blue: 0.902))

                        ItemNavigationLinkIcon(icon: "questionmark",
                                               name: "Tempo de Uso",
                                               backgroundColor: Color(red: 0.365,
                                                                      green: 0.357,
                                                                      blue: 0.902))
                    }

                    Section {
                        ItemNavigationLinkIcon(icon: "gear",
                                               name: "Geral",
                                               backgroundColor: .gray)

                        ItemNavigationLinkIcon(icon: "questionmark",
                                               name: "Central de Controle",
                                               backgroundColor: .gray)

                        ItemNavigationLinkIcon(icon: "sun.max.fill",
                                               name: "Tela e Brilho",
                                               backgroundColor: .blue)

                        ItemNavigationLinkIcon(icon: "questionmark",
                                               name: "Tela de Início e Biblioteca de Apps",
                                               backgroundColor: Color(red: 0.366,
                                                                      green: 0.357,
                                                                      blue: 0.902))

                        ItemNavigationLinkIcon(icon: "accessibility",
                                               name: "Acessibilidade",
                                               backgroundColor: Color(red: -0.003,
                                                                      green: 0.478,
                                                                      blue: 0.999))

                        ItemNavigationLinkIcon(icon: "questionmark",
                                               name: "Imagem de Fundo",
                                               backgroundColor: Color(red: 0.184,
                                                                      green: 0.68,
                                                                      blue: 0.899))

                        ItemNavigationLinkIcon(icon: "questionmark",
                                               name: "Em Espera",
                                               backgroundColor: .black)

                        ItemNavigationLinkIcon(icon: "questionmark",
                                               name: "Siri e Busca",
                                               backgroundColor: .blue)

                        ItemNavigationLinkIcon(icon: "faceid",
                                               name: "Face ID e Código",
                                               backgroundColor: Color(red: 0.18,
                                                                      green: 0.82,
                                                                      blue: 0.345))

                        ItemNavigationLinkIcon(icon: "sos",
                                               name: "SOS de Emergência",
                                               backgroundColor: Color(red: 0.995,
                                                                      green: 0.267,
                                                                      blue: 0.222))

                        ItemNavigationLinkIcon(icon: "sun.min.fill",
                                               name: "Notificações de Exposição",
                                               backgroundColor: .white,
                                               foregroundColor: .red,
                                               border: true)

                        ItemNavigationLinkIcon(icon: "battery.100percent",
                                               name: "Bateria",
                                               backgroundColor: Color(red: 0.18,
                                                                      green: 0.82,
                                                                      blue: 0.345))

                        ItemNavigationLinkIcon(icon: "hand.raised.fill",
                                               name: "Privacidade e Segurança",
                                               backgroundColor: Color(red: 0.043,
                                                                      green: 0.518,
                                                                      blue: 1.001))
                    }

                    Section("Tests") {
                        // Test Components
                        NavigationLink {
                            WiFiView()
                        } label: {
                            HStack {
                                Image(systemName: "wifi")
                                    .resizable()
                                    .frame(width: 18, height: 18)
                                    .scaledToFit()
                                    .padding(.horizontal, 5)
                                    .padding(.vertical, 4)
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(.white)
                                    .background(.blue)
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 6, height: 5)))
                                
                                Text("Wi-Fi View Test")
                            }
                        }
                    }
                }
                .navigationTitle("Ajustes")
            }
        }
    }
}

#Preview {
    ContentView()
}

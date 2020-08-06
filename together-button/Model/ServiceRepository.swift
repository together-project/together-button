//
//  ServiceRepository.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import Foundation

public class ServiceRepository {
    public static let instance: ServiceRepository = ServiceRepository()
    
    private let repository: [Service]
    
    private init() {
        repository = [
            Service(
                name: "Casa da mulher Brasileira",
                address: "Av. Paraná, 870, Cabral, Curitiba.",
                number: PhoneNumber(display: "(41) 3221-2710", raw: "4132212710")
            ),
            Service(
                name: "Delegacia da Mulher e do Adolescente",
                address: "R. Júlio Meneguetti, 195 - Jardim Novo Horizonte, Maringá.",
                number: PhoneNumber(display: "(44) 3220-2500", raw: "4432202500")
            ),
            Service(
                name: "Departamento de Defesa da Mulher",
                address: "R. da Fonte, Matinhos.",
                number: PhoneNumber(display: "(41) 3971-6270", raw: "4139716270")
            ),
            Service(
                name: "CRAM Centro Referência em Atendimento à Mulher em Situação de Violência",
                address: "R. Padre Bernardo Plate, 1250 - Jardim Polo Centro, Foz do Iguaçu.",
                number: PhoneNumber(display: "0800 643 8111", raw: "08006438111")
            ),
            Service(
                name: "Secretaria da Mulher e assuntos da família",
                address: "R. Castro Alves, 335 - Jardim Ponta Grossa, Apucarana.",
                number: PhoneNumber(display: "(43) 3422-4479", raw: "4334224479")
            ),
            Service(
                name: "Delegacia da Mulher e do Adolescente de São José dos Pinhais",
                address: "Av. Sen. Souza Naves, 484 - Centro, São José dos Pinhais. ",
                number: PhoneNumber(display: "(41) 3753-2050", raw: "4137532050")
            ),
            Service(
                name: "Delegacia Da Mulher",
                address: "R. Abolição, 538 - Zona 1, Cianorte.",
                number: PhoneNumber(display: "(44) 3631-2169", raw: "4436312169")
            ),
            Service(
                name: "Delegacia da Mulhe",
                address: "R. XV de Novembro, 909 - Centro, Ponta Grossa.",
                number: PhoneNumber(display: "(42) 3309-1300", raw: "4233091300")
            ),

        ]
    }
    
    public func retrieve() -> [Service] {
        return self.repository
    }
}

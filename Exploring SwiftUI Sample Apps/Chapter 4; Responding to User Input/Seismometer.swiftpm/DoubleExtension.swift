//
//  DoubleExtension.swift
//  Seismometer
//
//  Created by Lorenzo Lins Mazzarotto on 01/06/22.
//

import Foundation

extension Double {
    func describeAsFixedLengthString(integerDigits: Int = 2, fractionDigits: Int = 2) -> String {
        self.formatted(
            .number
                .sign(strategy: .always())
                .precision(
                    .integerAndFractionLength(integer: integerDigits, fraction: fractionDigits)
                )
        )
    }
}

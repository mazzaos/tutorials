//
//  EventRow.swift
//  Date Planner
//
//  Created by Lorenzo Lins Mazzarotto on 28/05/22.
//

import SwiftUI

struct EventRow: View {
    let event: Event

    var body: some View {
        HStack {
            Image(systemName: event.symbol)
                .sfSymbolStyling()
                .foregroundStyle(event.color)

            VStack(alignment: .leading, spacing: 5) {
                Text(event.title)
                    .fontWeight(.bold)

                Text(event.date.formatted(date: .abbreviated, time: .shortened))
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }

            if event.isComplete {
                Spacer()
                Image(systemName: "checkmark")
                    .foregroundStyle(.secondary)
            }

        }
        .badge(event.remainingTaskCount)
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(event: Event.example)
    }
}

//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Chris Eadie on 28/07/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import CoreData
import SwiftUI

struct ContentView: View {
  @Environment(\.managedObjectContext) var moc
  @State private var lastNameFilter = ""
  
  var body: some View {
    VStack {
      if lastNameFilter != "" {
        FilteredListView(filter: lastNameFilter)
      }
      Button("Add Examples", action: {
        let taylor = Singer(context: self.moc)
        taylor.firstName = "Taylor"
        taylor.lastName = "Swift"
        
        let ed = Singer(context: self.moc)
        ed.firstName = "Ed"
        ed.lastName = "Sheeran"
        
        let adele = Singer(context: self.moc)
        adele.firstName = "Adele"
        adele.lastName = "Adkins"
        
        try? self.moc.save()
      })
      Button("Show A", action: {
        self.lastNameFilter = "A"
      })
      Button("Show S", action: {
        self.lastNameFilter = "S"
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

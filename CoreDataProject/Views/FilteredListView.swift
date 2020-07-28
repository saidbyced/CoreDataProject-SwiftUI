//
//  FilteredListView.swift
//  CoreDataProject
//
//  Created by Chris Eadie on 28/07/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import SwiftUI

struct FilteredListView: View {
  var fetchRequest: FetchRequest<Singer>
  
  init(filter: String) {
    fetchRequest = FetchRequest<Singer>(entity: Singer.entity(), sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
  }
  
  var body: some View {
    List(fetchRequest.wrappedValue, id: \.self) { singer in
      Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
    }
  }
}

struct FilteredListView_Previews: PreviewProvider {
  static var previews: some View {
    FilteredListView(filter: "A")
  }
}

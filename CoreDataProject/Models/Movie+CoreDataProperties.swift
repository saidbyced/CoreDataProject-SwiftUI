//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Chris Eadie on 28/07/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//
//

import Foundation
import CoreData


extension Movie {
  
  @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
    return NSFetchRequest<Movie>(entityName: "Movie")
  }
  
  @NSManaged public var title: String?
  @NSManaged public var director: String?
  @NSManaged public var year: Int16
  
  public var wrappedTitle: String {
    title ?? "Unknown Title"
  }
}

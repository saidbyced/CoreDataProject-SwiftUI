//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Chris Eadie on 28/07/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
  
  var wrappedFirstName : String {
    firstName ?? "Unknown"
  }
  
  var wrappedLastName: String {
    lastName ?? "Unknown"
  }

}

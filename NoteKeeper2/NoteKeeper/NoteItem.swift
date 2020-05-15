import Foundation
import CoreData

public class NoteItem:NSManagedObject, Identifiable {
    @NSManaged public var createdAt:Date?
    @NSManaged public var title:String?
    @NSManaged public var note:String?
}

extension NoteItem {
    static func getAllNoteItems() -> NSFetchRequest<NoteItem> {
        let request:NSFetchRequest<NoteItem> = NoteItem.fetchRequest() as! NSFetchRequest<NoteItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}

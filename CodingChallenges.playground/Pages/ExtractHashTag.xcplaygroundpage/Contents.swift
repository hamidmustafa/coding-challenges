
import Foundation

func hasTags(stringData: String) -> [String] {
    let wordsFromCollection = stringData.description.components(separatedBy: .whitespacesAndNewlines)
    
    return wordsFromCollection.filter{ $0.starts(with: "#")}
}

let tags: [String] = hasTags(stringData: "#SwiftVlog by hamid")
print(tags)

var loweredCase: [String] = [String]()
loweredCase = tags.map{ $0.lowercased()}
print(loweredCase)



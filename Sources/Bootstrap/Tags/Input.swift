import Leaf
import Sugar
import TemplateKit

public final class InputTag: TagRenderer {
    enum Keys: String {
        case text
        case email
        case password
        case hidden
    }

    public func render(tag: TagContext) throws -> Future<TemplateData> {
        var inputType = Keys.text.rawValue
        var classes = ""
        var attributes = ""

        try tag.requireNoBody()

        for index in 0...2 {
            if
                let param = tag.parameters[safe: index]?.string,
                !param.isEmpty
            {
                switch index {
                case 0: inputType = param
                case 1: classes = param
                case 2: attributes = param
                default: break
                }
            }
        }

        guard let parsedType = Keys(rawValue: inputType) else {
            throw tag.error(reason: "Wrong argument given: \(inputType)")
        }

        let c = "form-control \(classes)"
        let button = "<input type='\(parsedType)' class='\(c)' \(attributes)>"
        return tag.future(.string(button))
    }
}

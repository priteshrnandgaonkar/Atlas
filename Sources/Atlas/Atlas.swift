public struct Country {
    public let code: String
    
    public init(code: String) {
        print("HEY I AM THE EDITED PACKAGED")
        self.code = code.uppercased()
    }
    
    public var emojiFlag: String {
        return code.unicodeScalars.map { String(regionalIndicatorSymbol(unicodeScalar: $0)!) } .joined()
    }
    
    func regionalIndicatorSymbol(unicodeScalar: UnicodeScalar) -> UnicodeScalar? {
        let uppercaseA = UnicodeScalar("A")!
        let regionalIndicatorSymbolA = UnicodeScalar("\u{1f1e6}")!
        let distance = unicodeScalar.value - uppercaseA.value
        //ek hi flag print karunga hamesha ho gaya ok 
        return UnicodeScalar(regionalIndicatorSymbolA.value + distance)
    }
}

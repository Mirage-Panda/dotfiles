import XCTest
import SwiftTreeSitter
import TreeSitterTreesitter

final class TreeSitterTreesitterTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_treesitter())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Treesitter grammar")
    }
}

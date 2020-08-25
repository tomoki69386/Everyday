//
//  LoggerTests.swift
//  EverydayTests
//
//  Created by 築山朋紀 on 2020/08/26.
//

import XCTest
@testable import Everyday

class LoggerTests: XCTestCase {
    func testLogger() {
        Logger.debug("debug")
        Logger.warning("warning")
        Logger.error("error")
    }
}

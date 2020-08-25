//
//  RootViewControllerTests.swift
//  TemplateTests
//
//  Created by 築山朋紀 on 2020/08/26.
//

import XCTest
@testable import Template

class RootViewControllerTests: XCTestCase {
    func testInit() {
        let dependency: RootViewController.Dependency = .init(rootViewController: .init())
        let viewController = RootViewController.init(dependency: dependency)
        XCTAssertNotNil(viewController)
    }
}

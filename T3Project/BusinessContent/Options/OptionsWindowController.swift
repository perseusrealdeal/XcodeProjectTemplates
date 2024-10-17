//
//  OptionsWindowController.swift, OptionsWindowController.storyboard
//  T3Project
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world in the Star temple
//  according to a Slavic calendar. September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import Cocoa

class OptionsWindowController: NSWindowController, NSWindowDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()

        // window?.appearance = NSAppearance(named: NSAppearance.Name.vibrantDark)
        if #available(macOS 10.14, *) {
            self.window?.title = "Settings..."
        } else {
            self.window?.title = "Preferences..."
        }
    }

    func windowShouldClose(_ sender: NSWindow) -> Bool {
        self.window?.orderOut(sender)
        return false
    }
}
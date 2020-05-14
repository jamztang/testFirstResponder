# testFirstResponder
---

![](images/screenshot1.png)

This project demonstrated an unexpected behaviour on Catalyst that the first responder will be set to nil after dismissing Popovers, which was suppose to retain. This can be cross checked on iPad OS that doesn't happen.

1. Download this sample project [git@github.com](mailto:git@github.com):jamztang/testFirstResponder.git
2. Build and Run
3. Click "Show" > "Push Until Completion"
4. No push operation is done because firstResponder becomes nil


Expected:

firstResponder to be retained while dismissing and after completion

Actual:

firstResponder becomes nil immediately when UIViewController.dismiss was called


Xcode 11.4
MacOS 10.15.3 
iPadOS 13.4

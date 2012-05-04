class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    # A standard line in Objectice C
    # UIWindow *window = [[UIWindow alloc] initWithFrame:frame];
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.backgroundColor = UIColor.yellowColor
    @window.makeKeyAndVisible
    true
  end
end

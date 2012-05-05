class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    # A standard line in Objectice C
    # UIWindow *window = [[UIWindow alloc] initWithFrame:frame];
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = Magic8BallViewController.alloc.init
    @window.makeKeyAndVisible
    true
  end
  
  def RGBAColor(red, green, blue, alpha)
    return UIColor.colorWithRed(red/255.0, green:green/255.0, blue:blue/255.0, alpha:alpha)
  end
end
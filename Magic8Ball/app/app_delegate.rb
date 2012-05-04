class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    # A standard line in Objectice C
    # UIWindow *window = [[UIWindow alloc] initWithFrame:frame];
    @window = UIWindow.alloc.initWithFrame(frame)
    true
  end
end

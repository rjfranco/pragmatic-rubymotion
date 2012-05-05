class Magic8BallViewController < UIViewController
  def loadView
    self.view = UIImageView.alloc.init
  end

  def viewDidLoad
    view.image = UIImage.imageNamed('background.png')
    @label = makeLabel
    view.addSubview(@label)
    
    
    view.userInteractionEnabled = true
    # This is how this action is done in Objective-C
    # UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showAnswer)];
    recognizer = UITapGestureRecognizer.alloc.initWithTarget(self, action:'showAnswer')
    view.addGestureRecognizer(recognizer)
  end
  
  def showAnswer
    list_of_answers = [
      'Probably',
      'Fo shizzle',
      'No doubt',
      'Yup',
      'You would think',
      'Sure',
      'Most likely',
      'I think so',
      'Yes',
      'Seems that way',
      'Who knows really',
      'Ask again later',
      'Too early to tell',
      'I don\'t know',
      'Drink; Ask again',
      'Nope',
      'No',
      'Reddit says no',
      'Probably not',
      'I don\'t think so'
    ]
    
    @label.text = list_of_answers.sample
  end
  
  def makeLabel
    # This is essentially what is happening. A CGRectMake object is being created, with the paramters passed as arrays for [x, y]
    # and [width, height]. This is short hand provided by RubyMotion
    # labelFrame = CGRectMake(10, 60, 300, 80)
    label = UILabel.alloc.initWithFrame([[10,30], [300,80]])
    label.backgroundColor = RGBAColor(255,255,255,0)
    label.font = UIFont.boldSystemFontOfSize(34)
    label.textColor = UIColor.whiteColor
    label.textAlignment = UITextAlignmentCenter
    label.text = "Ask Then Tap"
    label
  end
  
  def RGBAColor(red, green, blue, alpha)
    return UIColor.colorWithRed(red/255.0, green:green/255.0, blue:blue/255.0, alpha:alpha)
  end
end
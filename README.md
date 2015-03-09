# RGLAlertView

A nicely alternative way to present alert views, add colors, text, customize them with images, and everything as easy as including a string.

## Featuring

- As easy as entering a string.
- For all devices, calculated sizes dinamically.
- With multiple animations to present the alert.
- Know which button is tapped.
- Add up to 3 buttons in an alert.
- Add images to customize it more.

## Usage

Import the main file into your Xcode project and import it in the view controller you want the view to appear:

```objc
#import "RGLAlertView.h"
```

In the view you want, instantiate the view, and present it.

#### Create a simple alert

```objc
RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is an alert view with a title" andDismissButtonText:@"Dismiss"];
[view setTitle:@"Alert with title"];
[view presentAlertViewWithAnimation:0];
```

#### Add more stuff into the alert

```objc
RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is an alert view with a title" andDismissButtonText:@"Dismiss"];
[view setTitle:@"Alert with title"];
[view setBody:@"This is some random text, funny thing about it is that, based in my size, the alert is going to get bigger and bigger!"];
[view addButtonWithTitle:@"Touch"];
[view addImageInTop:[UIImage imageNamed:@"firstImage"]];
[view presentAlertViewWithAnimation:0];
```

#### Use the delegate

With the delegate you're going to be able to know which button is getting tapped. Is that easy:

```objc
view.delegate = self;
```

And then call the methods

```objc
- (void)buttonDidPressedWithTitle:(NSString *)string
{
    NSLog(@"%@", string);
}
```

```objc
- (void)buttonDismissDidPressed
{

}
```

## Example

![RGLAlertView](https://github.com/RamonGilabert/RGLAlertView/blob/master/Resources/App.gif = 400px)

## Upcoming features

- TextField support, you're going to be able to listen to some methods once you are typing.
- Adding custom fonts into the alert view.
- More customization (ideas?).

## Contributing

1. Fork it.
2. Create your branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Added this feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create new pull request.

## Done by

[Ramon Gilabert](http://ramongilabert.com) with love! :)

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/buttons/buttons.dart';
import 'package:getlinks_ui_kit/buttons/gradient_button.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Contained Button',
                style: Theme.of(context).textTheme.headline),
            SizedBox(height: 10),
            Text('Small', style: Theme.of(context).textTheme.title),
            SizedBox(height: 10),
            GLButton(
              'Small Button',
              expand: false,
              size: ButtonSize.small,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLButton(
              'Small Button',
              expand: false,
              icon: Icon(Icons.add),
              size: ButtonSize.small,
              loading: true,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLButton(
              'Small Button',
              size: ButtonSize.small,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLButton(
              'Small Button',
              size: ButtonSize.small,
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLButton(
              'Small Button',
              size: ButtonSize.small,
              onPressed: null,
            ),
            SizedBox(height: 40),
            Text('Medium', style: Theme.of(context).textTheme.title),
            SizedBox(height: 10),
            GLButton(
              'Button',
              expand: false,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLButton(
              'Button',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLButton(
              'Button',
              loading: true,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLButton(
              'Button',
              loading: false,
              onPressed: null,
            ),
            SizedBox(height: 40),
            Text('Outline Button', style: Theme.of(context).textTheme.headline),
            SizedBox(height: 10),
            Text('Small', style: Theme.of(context).textTheme.title),
            SizedBox(height: 10),
            GLOutlineButton(
              'Button',
              size: ButtonSize.small,
              expand: false,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLOutlineButton(
              'Button',
              size: ButtonSize.small,
              expand: false,
              loading: true,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLOutlineButton(
              'Button',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLOutlineButton(
              'Button',
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLOutlineButton(
              'Button',
              loading: true,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLOutlineButton(
              'Button',
              icon: Icon(Icons.add),
              onPressed: null,
            ),
            SizedBox(height: 40),
            Text('Super Button', style: Theme.of(context).textTheme.headline),
            SizedBox(height: 10),
            GLSuperButton(
              'Button',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLSuperButton(
              'Button',
              showLoading: true,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLSuperButton(
              'Button',
              onPressed: null,
            ),
            SizedBox(height: 40),
            Text('Gradient Button',
                style: Theme.of(context).textTheme.headline),
            SizedBox(height: 10),
            GLGradientButton(
              'Button',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GLGradientButton(
              'Button',
              showLoading: true,
              onPressed: () {
                print('click');
              },
            ),
            SizedBox(height: 10),
            GLGradientButton(
              'Button',
              onPressed: null,
            ),
            SizedBox(height: 40),
            Text('Social Button', style: Theme.of(context).textTheme.headline),
            SizedBox(height: 10),
            FbButton(
              loading: true,
              label: 'Login with Facebook',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            GoogleButton(
              loading: true,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            LinkedInButton(
              loading: false,
              onPressed: () {},
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

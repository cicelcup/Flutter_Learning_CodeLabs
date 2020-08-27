import 'package:flutter/material.dart';

class AnimatedIndicator extends StatefulWidget {
  final double value;

  const AnimatedIndicator({Key key, this.value}) : super(key: key);

  @override
  _AnimatedIndicatorState createState() => _AnimatedIndicatorState();
}

class _AnimatedIndicatorState extends State<AnimatedIndicator>
    with SingleTickerProviderStateMixin {
  //Controller
  AnimationController _controller;
  //Animations
  Animation<double> _animation;
  Animation<Color> _colorAnimation;

  @override
  void initState() {
    super.initState();

    //initialization of the controller
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    var colorTween = TweenSequence([
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.red, end: Colors.orange),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.orange, end: Colors.yellow),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.yellow, end: Colors.green),
        weight: 1,
      ),
    ]);

    _colorAnimation = colorTween.animate(_controller);

    _animation = CurveTween(curve: Curves.easeIn).animate(_controller);
  }

  @override
  void didUpdateWidget(AnimatedIndicator oldWidget) {
    _controller.animateTo(widget.value);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return LinearProgressIndicator(
            value: _animation.value,
            valueColor: _colorAnimation,
            backgroundColor: _colorAnimation.value.withOpacity(0.4),
          );
        });
  }
}

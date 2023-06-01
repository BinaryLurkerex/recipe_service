part of '../sign_in_page.dart';

class _GradientButton extends StatelessWidget {
  final Function()? onPressed;
  final Gradient gradient;
  final Widget child;

  const _GradientButton({
    this.onPressed,
    required this.gradient,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(32.0),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary,
            offset: const Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(32.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.transparent,
            padding: const EdgeInsets.all(6.0),
            child: child,
          ),
        ),
      ),
    );
  }
}

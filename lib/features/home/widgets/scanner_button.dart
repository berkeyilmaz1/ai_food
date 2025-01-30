part of '../view/home_view.dart';

final class ScannerButton extends StatelessWidget {
  const ScannerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<QrView>(builder: (_) => const QrView()),
        );
      },
      icon: IconConstants.scanner.toIcon,
      iconSize: context.width5,
    );
  }
}

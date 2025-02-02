part of '../view/home_view.dart';

final class ScannerButton extends StatelessWidget {
  ScannerButton({
    super.key,
  });
  final scannerCubit = locator<ScannerCubit>();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: IconButton(
        onPressed: () => navigateToScanner(context),
        icon: IconConstants.scanner.toIcon,
        iconSize: context.width5,
      ),
    );
  }

  void navigateToScanner(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<QrView>(builder: (_) => const QrView()),
    );
  }
}

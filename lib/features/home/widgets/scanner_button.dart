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
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<QrView>(builder: (_) => const QrView()),
          );
        },
        icon: IconConstants.scanner.toIcon,
        iconSize: context.width5,
      ),
    );
  }
}

import 'dart:io';

void main() {
  stdout.write("Enter your current balance: ");
  double currentBalance = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the amount you wish to withdraw: ");
  double withdrawAmount = double.parse(stdin.readLineSync()!);

  if (withdrawAmount > currentBalance) {
    print(
        "Error: Insufficient funds! Your current balance is $currentBalance.");
  } else {
    double remainingBalance = currentBalance - withdrawAmount;
    print(
        "Withdrawal successful! Your remaining balance is $remainingBalance.");
  }
}

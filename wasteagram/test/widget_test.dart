import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import "../lib/widgets/add_post_button.dart";
import "../lib/widgets/number_input_field.dart";
import "../lib/widgets/upload_post_button.dart";

void main() {
  testWidgets('AddPostButton displays the correct button',
      (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: AddPostButton(routeName: "screens/post_creation_screen.dart"),
    ));

    // Verify that the button is displayed correctly
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}

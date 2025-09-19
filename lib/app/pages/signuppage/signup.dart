import 'package:flutter/material.dart';
import 'package:ux4gdesigns/app/pages/signuppage/widgets/signuptemplate.dart';
import 'package:ux4gdesigns/sharedwidgets/constrainedbox.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: ConnstrainedWrapper(
        maxwidth: 550,
        child: RegisterTemplate(
          header: Text('Header'),
          footer: Text("Footer"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login to Continue via ", style: theme.textTheme.titleMedium),
              Text(
                "E Pramaan",
                style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(labelText: "Email", border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder()),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Sign In",
                    style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 8),
                  Text('OR'),
                  SizedBox(width: 8),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

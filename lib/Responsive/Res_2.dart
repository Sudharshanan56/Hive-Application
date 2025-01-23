import 'package:flutter/material.dart';

class Res2 extends StatelessWidget {
  const Res2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Responsive Layout Example',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            _buildResponsiveContent(context),
          ],
        ),
      ),
    );
  }

  Widget _buildResponsiveContent(BuildContext context) {
    return MediaQuery.of(context).size.width > 600
        ? _buildDesktopLayout()
        : _buildMobileLayout();
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        const Text(
          'This is the mobile layout.',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Mobile Button'),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 300,
          child: Column(
            children: [
              const Text(
                'This is the left side of the desktop layout.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Desktop Button 1'),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 300,
          child: Column(
            children: [
              const Text(
                'This is the right side of the desktop layout.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Desktop Button 2'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
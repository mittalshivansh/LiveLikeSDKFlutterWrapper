# ll_flutter_demo

This is flutter package plugin wrapping Livelile's engagement suite sdk for both ios and android. 

## Getting Started

This package expose the LLEngagementView which is basically the combination of widget and chatview. 

`@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: LLEngagementView("client-id",
              "program-id"),
        ),
      ),
    );
  }`


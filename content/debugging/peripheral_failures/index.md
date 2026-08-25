+++
title = 'Peripheral Failures'
description = "Motors, servos, sensors, or the color camera aren't working"
+++

Try a known working *x* in the port.
If it works, the *x* is broken, use a different one.
If it doesn't the port is broken, use a different one.

## Diagnosing motors, servos, and sensors

The first step is to determine if the failure is in the peripheral or the port on the controller.
Try a known working device in the same port as the one that isn't working.
For example, if your motor in port three isn't running, try plugging the other motor into port three.

If the working device works in the other port, then the device itself is broken.
To continue the previous example, this means the motor that was originally plugged into port three is broken

It if the working device **doesn't work** in the other port, then the port itself, in this case port three, is broken.
KIPR can fix servo ports, so {{< support_email_callout >}}

If it is a motor or sensor port, try using another, working port.
KIPR cannot fix individual motor or sensor ports, so such a repair would require a ~$300 board replacement.

+++
title = "Motors, servos, or sensors don't work"
description = "A motor, servo, or sensor plugged into the controller isn't working."
+++

## Diagnosing

The first step is to determine whether the failure is in the device or in the port on the Wombat.
Plug a known working device into the same port as the one that isn't working.
For example, if the motor in port three isn't running, plug another motor into port three.

## Broken device

If the known working device works in that port, the original device is broken.
In the example above, this means the motor that was originally plugged into port three is broken.
Use a different one.

## Broken port

If the known working device **doesn't** work in that port, the port itself is broken.

KIPR can repair servo ports, so {{< support_email_callout >}}

If it is a motor or sensor port, use another, working port.
KIPR cannot repair individual motor or sensor ports, so such a repair would require a ~$300 board replacement.

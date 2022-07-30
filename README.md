# labead-autotest
Tools to perform automatic online tests using MQTT

# requirements

- The correct 4-bit adder VHDL description available in this project's GitHub.
- The glitched 4-bit adder VHDL description available in this project's GitHub.
- The Subscriber and Publisher notebooks available in this project's GitHub.
- A MQTT broker with enabled authentication using user-password. It is possible to use the University of São Paulo's broker or build from the open-source HiveMQ community edition (https://www.hivemq.com/developers/community/) or the Eclipse Mosquitto (https://mosquitto.org/).
- A testbench of the LabEAD: computer with remote access and IDE for hardware development, webcam and an IoT device using the PubSub MQTT library (https://github.com/knolleary/pubsubclient). For replication of LabEAD, please refer to its GitHub (https://github.com/vthayashi/labead-labdig). A demonstration with the LabEAD deployed in the University of São Paulo may also be scheduled.
- (Optional) a smartphone or web client of MQTT (e.g., HiveMQ MQTT client (https://github.com/hivemq/hivemq-mqtt-client)) for complementary manual tests.

# how to use

- Clone this repo
- Generate the bitstream of the correct and glitched versions of the 4-bit adder
- Deploy the correct version of the 4-bit adder to the FPGA board
- Make sure the LabEAD testbench is online
- Begin MQTT connection of the Subscriber notebook
- Begin MQTT connection of the Publisher notebook
- Perform the tests using the Publisher notebook
- Disconnect the Subscriber and the Publisher notebooks from the MQTT broker
- Repeat previous steps for the glitched version

# additional comments

- A demonstration with the LabEAD testbench and broker deployed in the University of São Paulo may also be scheduled upon request
- These notebooks can also be used to perform automatized tests using the MQTT protocol with an open MQTT broker (but it would have no authentication), or with a broker deployed in a local environment 

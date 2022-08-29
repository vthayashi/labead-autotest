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

- Clone this repo.
- With a digital design tool such as Quartus Prime or Xilinx Vivado, create a project corresponding to the correct 4-bit adder. Move the three VHDL files located in the “correct” folder to the project folder.
- Compile the project, generating the corresponding bitstream.
- Deploy the correct version of the 4-bit adder to the FPGA board (load the bitstream).
- Open the Subscriber-LabEAD-MQTT.ipynb file on a notebook environment such as Jupyter Notebook or Google Colab.
- Open the Publisher-LabEAD-MQTT.ipynb on a notebook environment such as Jupyter Notebook or Google Colab.
- With both notebook files opened at the same time, start by running the Subscriber notebook file, which is going to wait for the Publisher messages. After that, run the Publisher file, which will send the messages.
- Close both files, disconnecting the Subscriber and the Publisher notebooks from the MQTT broker.
- Repeat previous steps for the glitched version. The VHDL files are located in the bug folder.

# additional comments

- A demonstration with the LabEAD testbench and broker deployed in the University of São Paulo may also be scheduled upon request
- These notebooks can also be used to perform automatized tests using the MQTT protocol with an open MQTT broker (but it would have no authentication), or with a broker deployed in a local environment 

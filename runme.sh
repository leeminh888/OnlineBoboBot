#!bin/bash

# Install dependencies
apt install wget openjdk-8-jdk

# Grab BoboBot from source
wget https://github.com/VegaBobo/Bot3/releases/download/v0.1/BoboBot.jar

# Grab ErfanGSIs
git clone --recurse-submodules https://github.com/erfanoabdi/ErfanGSIs.git ErfanGSIs

# Run BoboBot to allow generate config files
java -jar Bobobot.jar

# Fill in values in bobobot
rm -rf configs/config.prop
cd configs
touch config.prop
echo "#Bo³+t config file" >> "config.prop"
echo "#Fri Jun 26 06:08:12 UTC 2020" >> "config.prop"
echo "bot-username=$BOTUN" >> "QuintusDogBot"
echo "bot-token=$BOTKEY" >> "1263185043:AAE4_wwi2GoT_2hZC5uU8ZHHjpHqWObz9Cc"
echo "bot-master=$USERKEY" >> "1027163124"

# Re-run bobobot
java -jar BoboBot.jar

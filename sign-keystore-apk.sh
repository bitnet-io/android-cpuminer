java11-switch-on
echo "requires running java11"
echo ' 
yum install nodejs -y
npm -g install randomstring'
randomstring
rm -rf my-release-key.jks
keytool -genkey -v -keystore my-release-key.jks -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
#cp -rf wallet/build/outputs/apk/prod/release/wallet-prod-release-unsigned.apk .
#replace line below to match /home/user/Android/Sdk wherever that might be on my system it is /root/Android/Sdk
cp -rf ./app/build/outputs/apk/standard/release/app-standard-release-unsigned.apk unsigned.apk
/home/c4pt/Android/build-tools/29.0.2/apksigner sign --ks my-release-key.jks --out Android-CPUMINER-signed.apk unsigned.apk
 
ls -l *apk
date

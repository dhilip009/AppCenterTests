# Provide AppCenter/Test upload command & path to IPA.
AppCenter_Test_Command='appcenter test run appium --app "Microsoft-Internal/TestAppCenter.iOS" --devices 352bb6ae --app-path pathToFile.ipa  --test-series "master" --locale "en_US" --build-dir target/upload'
app_path='../UITestDemo.ipa'

# Run using the command "sh upload.sh"
Build_TestUpload_Command='mvn -DskipTests -P prepare-for-upload package'
echo $Build_TestUpload_Command
eval $Build_TestUpload_Command

AppCenter_Test_Command=${AppCenter_Test_Command/'pathToFile.ipa'/$app_path}
echo $AppCenter_Test_Command
eval $AppCenter_Test_Command

# dat153-oblig3
Repository used for assignment 3 in DAT153 at HVL, group 6

## The task
We are going to make some improvements to our application! (Note that it is okay if you decide to throw away your old version and quickly re-do your app in a different style). Deadline: Monday, 15th April. Again, submit a link to your git repository as a group here in Canvas. You can start a new project from scratch if you like, it does not have to build on your Oblig 1.

### Saving data
Save your data (and load it when the app starts again later)! Decide on how you want store the data (names & pictures) that we add from the app. We'll use Android Room DAOsLinks to an external site. (also see Ch. 68 "An Android Room Database..." in Smyth's "Android studio 4. 0 development essentials"). Encapsulate the data necessary for the quiz (i.e. all images, the current image and correct answer and alternative wrong choices for the current question) in a subclass of a ViewModel. Make sure that when rotating your phone during a quiz the current question and score are not lost! (Room, LiveData ,and ViewModel for extra reading)Links to an external site.

### Write tests
Write test-cases using Espresso for your app! At least have the following test cases: 
clicking a button in the main-menu takes you to the right sub-activity (i.e. to the Quiz or the Database; testing one button is enough);
is the score updated correctly in the quiz (submit right/wrong answer and check if the score is correct afterwards);
a test that checks that the number of registered pictures/persons is correct after adding/deleting an entry. For adding, use Intent Stubbing to return some image data (e.g. from the resource-folder) without any user interaction.
Write your Espresso test classes (in other words, do not use the Espresso Test Recorder) so that they directly address each activity under test. In other words, don't write all tests for the main activity and then have your test case click the main menu buttons to reach an activity. Note that you may have to change the structure of your app a bit so that you actually have access to internal state of your app (e.g., the score) from the unit test. 

### Gradle to run test cases
Use Gradle either from the command line or through Android Studio's Gradle tool window to install and run the test-cases, so that we can closely observe the steps that are necessary. We can use for example additional command-line options for more information: ./gradlew connectedAndroidTest --info
Note that the output of --info various between operating systems. Which APKs are used during testing? You can use the open-source tool apktool decode /path/to/the.apk to inspect their contents. Which adb commands does Gradle use to install & run the tests on the phone/emulator? Write your interpretation of the output in the README-file in your repo.
Document your test cases with results and the interaction with Gradle from question 3 in the README in your repo (HTML or Markdown). That means there should be a detailed description of the steps in the test, the expected result, and which class/method implements the test. Note that the main goal is to have proper test-cases, so it is okay if in the end you have some test-cases that still fail, where you haven't been able to make them "green". In this case, a failing test-case can still serve as documentation.

## Testing
### MainActivityIntegrationTest
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/18770af6-b324-4094-bb86-4d2023b7c323)
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/3f0db63c-34d4-497a-bbb1-a336edbe8c0a)
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/658263c7-526a-46c3-8637-6e12622e4dfe)
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/34f1f5bf-3d8c-4520-8399-61a986678a08)
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/75c5d82e-cb4e-472c-ba39-7f75a2da0f3d)





## APK

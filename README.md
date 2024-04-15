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
#### Test Case: goToGallery()
##### Description
This test verifies that clicking the "Open Gallery" button in MainActivity successfully navigates to GalleryActivity

##### Steps: 
1. Launch MainActivity
2. Intercept the intent to start GalleryActivity
3. Click on the "Open Gallery" button
4. Check if GalleryActivity is launched

##### Expected Result
GalleryActivity is launched successfully

##### Implementation
- Method: goToGallery()
- Class: MainActivityIntegrationTest
- File: "MainActivityIntegrationTest.java"

#### Test Case: goToQuiz()
##### Description
This test verifies that clicking the "Open Quiz" button in MainActivity successfully navigates to GalleryActivity

##### Steps: 
1. Launch MainActivity
2. Intercept the intent to start QuizActivity
3. Click on the "Open Quiz" button
4. Check if QuizActivity is launched

##### Expected Result
QuizActivity is launched successfully

##### Implementation
- Method: goToQuiz()
- Class: MainActivityIntegrationTest
- File: "MainActivityIntegrationTest.java"

#### Result
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/18770af6-b324-4094-bb86-4d2023b7c323)

### GalleryActivityIntegrationTest
#### Test Case: deleteOption()
##### Description
This test verifies that clicking delete on an option in the gallery removes it from the application

##### Steps: 
1. Launch GalleryActivity
2. Retrieve the original size of the option list
3. Wait for the gallery list to be loaded
4. Scroll to the first item in the list
5. Click on the delete button for the first item.
6. Verify that the item is removed from the list if the original size was greater than 3.
7. Verify that the option list size is at least 3 after deletion.

##### Expected Result
- If the original size of the option list is greater than 3, the item should be removed from the list and the size should have been decreased by 1
- The option list size should remain at least 3 after deletion 

##### Implementation
- Method: deleteOption()
- Class: GalleryActivityIntegrationTest
- File: "GalleryActivityIntegrationTest.java"

#### Results
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/3914fd97-2938-43a3-a6ac-b2378dbeda87)

### NewOptionActivityIntegrationTest
#### Test Case: addOption()
##### Description:
This test verifies the functionality of adding a new option in NewOptionActivity.

##### Steps:
1. Launch NewOptionActivity.
2. Check the initial size of the option list.
3. Stub the intent to return dummy image data.
4. Click on the button to choose an image.
5. Replace text in the input field with "Test Name".
6. Click on the button to add the image.
7. Verify that the size of the option list has increased by one.

##### Expected Result:
After adding a new option, the size of the option list should increase by one.


##### Implementation:
- Method: addOption()
- Class: NewOptionActivityIntegrationTest
- File: NewOptionActivityIntegrationTest.java

#### Results
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/a6a24f36-f47f-45c8-afa4-00788d7460cb)

### QuizActivityIntegrationTest
#### Test Case: testCorrectAnswer()
##### Description:
This test verifies the behavior when the user selects the correct answer in QuizActivity.

##### Steps:
1. Launch QuizActivity.
2. Get the initial score.
3. Find the correct option.
4. Click on the button corresponding to the correct option.
5. Verify that the status text shows "Correct".
6. Verify that the score has increased by 1.

##### Expected Result:
After selecting the correct answer, the status should display "Correct", and the score should increase by 1.

##### Implementation:
- Method: testCorrectAnswer()
- Class: QuizActivityIntegrationTest
- File: QuizActivityIntegrationTest.java

#### Test Case: testIncorrectAnswer()
##### Description:
This test verifies the behavior when the user selects an incorrect answer in QuizActivity.

##### Steps:
1. Launch QuizActivity.
2. Get the initial score.
3. Find the correct option.
4. Find an incorrect option (any option other than correct).
5. Click on the button corresponding to the incorrect option.
6. Verify that the status text shows "Incorrect".
7. Verify that the score remains the same.

##### Expected Result:
After selecting an incorrect answer, the status should display "Incorrect", and the score should remain unchanged.

##### Implementation:
- Method: testIncorrectAnswer()
- Class: QuizActivityIntegrationTest
- File: QuizActivityIntegrationTest.java

#### Results
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/253b1712-149c-4a2c-9591-6ac7c2ec4186)

### Gradle
Ran 
```bash
./gradlew connectedAndroidTest
```
![image](https://github.com/Ivhene/dat153-oblig3/assets/89256274/31ad94e8-d0d5-4972-8101-15d68ee373a5)


## APK

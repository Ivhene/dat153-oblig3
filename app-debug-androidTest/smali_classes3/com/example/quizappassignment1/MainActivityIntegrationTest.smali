.class public Lcom/example/quizappassignment1/MainActivityIntegrationTest;
.super Ljava/lang/Object;
.source "MainActivityIntegrationTest.java"


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Landroidx/test/ext/junit/runners/AndroidJUnit4;
.end annotation


# instance fields
.field public activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/ext/junit/rules/ActivityScenarioRule<",
            "Lcom/example/quizappassignment1/MainActivity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/junit/Rule;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;

    const-class v1, Lcom/example/quizappassignment1/MainActivity;

    invoke-direct {v0, v1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/example/quizappassignment1/MainActivityIntegrationTest;->activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;

    return-void
.end method


# virtual methods
.method public goToGallery()V
    .locals 5
    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 47
    const-class v0, Lcom/example/quizappassignment1/GalleryActivity;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->hasComponent(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 49
    const-string v1, "com.example.quizappassignment1"

    invoke-static {v1}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->toPackage(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/Intents;->intending(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/intent/OngoingStubbing;

    move-result-object v0

    new-instance v2, Landroid/app/Instrumentation$ActivityResult;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/app/Instrumentation$ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 50
    invoke-virtual {v0, v2}, Landroidx/test/espresso/intent/OngoingStubbing;->respondWith(Landroid/app/Instrumentation$ActivityResult;)V

    .line 53
    sget v0, Lcom/example/quizappassignment1/R$id;->openGallery:I

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/test/espresso/ViewAction;

    const/4 v3, 0x0

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 56
    const-class v0, Lcom/example/quizappassignment1/GalleryActivity;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->hasComponent(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 58
    invoke-static {v1}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->toPackage(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/Intents;->intended(Lorg/hamcrest/Matcher;)V

    .line 59
    return-void
.end method

.method public goToQuiz()V
    .locals 5
    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 64
    const-class v0, Lcom/example/quizappassignment1/QuizActivity;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->hasComponent(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 66
    const-string v1, "com.example.quizappassignment1"

    invoke-static {v1}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->toPackage(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v2

    .line 64
    invoke-static {v0, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/Intents;->intending(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/intent/OngoingStubbing;

    move-result-object v0

    new-instance v2, Landroid/app/Instrumentation$ActivityResult;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/app/Instrumentation$ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 67
    invoke-virtual {v0, v2}, Landroidx/test/espresso/intent/OngoingStubbing;->respondWith(Landroid/app/Instrumentation$ActivityResult;)V

    .line 70
    sget v0, Lcom/example/quizappassignment1/R$id;->openQuiz:I

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/test/espresso/ViewAction;

    const/4 v3, 0x0

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 73
    const-class v0, Lcom/example/quizappassignment1/QuizActivity;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->hasComponent(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 75
    invoke-static {v1}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->toPackage(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/intent/Intents;->intended(Lorg/hamcrest/Matcher;)V

    .line 76
    return-void
.end method

.method public setUp()V
    .locals 0
    .annotation runtime Lorg/junit/Before;
    .end annotation

    .line 36
    invoke-static {}, Landroidx/test/espresso/intent/Intents;->init()V

    .line 37
    return-void
.end method

.method public tearDown()V
    .locals 0
    .annotation runtime Lorg/junit/After;
    .end annotation

    .line 41
    invoke-static {}, Landroidx/test/espresso/intent/Intents;->release()V

    .line 42
    return-void
.end method

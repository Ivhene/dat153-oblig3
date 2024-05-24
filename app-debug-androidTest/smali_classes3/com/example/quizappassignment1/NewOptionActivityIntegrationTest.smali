.class public Lcom/example/quizappassignment1/NewOptionActivityIntegrationTest;
.super Ljava/lang/Object;
.source "NewOptionActivityIntegrationTest.java"


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Landroidx/test/ext/junit/runners/AndroidJUnit4;
.end annotation


# instance fields
.field public activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/ext/junit/rules/ActivityScenarioRule<",
            "Lcom/example/quizappassignment1/NewOptionActivity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/junit/Rule;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;

    const-class v1, Lcom/example/quizappassignment1/NewOptionActivity;

    invoke-direct {v0, v1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/example/quizappassignment1/NewOptionActivityIntegrationTest;->activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;

    return-void
.end method

.method private getDummyImageData()Landroid/content/Intent;
    .locals 2

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "content://dummy/image"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 84
    return-object v0
.end method


# virtual methods
.method public addOption()V
    .locals 6
    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 57
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/quizappassignment1/model/OptionList;->getOptionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    .local v0, "initialSize":I
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-static {v1}, Landroidx/test/espresso/intent/matcher/IntentMatchers;->hasAction(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/intent/Intents;->intending(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/intent/OngoingStubbing;

    move-result-object v1

    new-instance v2, Landroid/app/Instrumentation$ActivityResult;

    .line 61
    invoke-direct {p0}, Lcom/example/quizappassignment1/NewOptionActivityIntegrationTest;->getDummyImageData()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/app/Instrumentation$ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroidx/test/espresso/intent/OngoingStubbing;->respondWith(Landroid/app/Instrumentation$ActivityResult;)V

    .line 64
    sget v1, Lcom/example/quizappassignment1/R$id;->btnChooseImage:I

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 67
    sget v1, Lcom/example/quizappassignment1/R$id;->inputName:I

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/test/espresso/ViewAction;

    const-string v4, "Test Name"

    invoke-static {v4}, Landroidx/test/espresso/action/ViewActions;->replaceText(Ljava/lang/String;)Landroidx/test/espresso/ViewAction;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->closeSoftKeyboard()Landroidx/test/espresso/ViewAction;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 70
    sget v1, Lcom/example/quizappassignment1/R$id;->btnAddImage:I

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v1

    new-array v3, v2, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 73
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/quizappassignment1/model/OptionList;->getOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-static {v2}, Ljunit/framework/TestCase;->assertTrue(Z)V

    .line 76
    add-int/lit8 v1, v0, 0x1

    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/quizappassignment1/model/OptionList;->getOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljunit/framework/TestCase;->assertEquals(II)V

    .line 77
    return-void
.end method

.method public setUp()V
    .locals 0
    .annotation runtime Lorg/junit/Before;
    .end annotation

    .line 45
    invoke-static {}, Landroidx/test/espresso/intent/Intents;->init()V

    .line 46
    return-void
.end method

.method public tearDown()V
    .locals 0
    .annotation runtime Lorg/junit/After;
    .end annotation

    .line 51
    invoke-static {}, Landroidx/test/espresso/intent/Intents;->release()V

    .line 52
    return-void
.end method

.class public Lcom/example/quizappassignment1/GalleryActivityIntegrationTest;
.super Ljava/lang/Object;
.source "GalleryActivityIntegrationTest.java"


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Landroidx/test/ext/junit/runners/AndroidJUnit4;
.end annotation


# instance fields
.field public activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/ext/junit/rules/ActivityScenarioRule<",
            "Lcom/example/quizappassignment1/GalleryActivity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/junit/Rule;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroidx/test/ext/junit/rules/ActivityScenarioRule;

    const-class v1, Lcom/example/quizappassignment1/GalleryActivity;

    invoke-direct {v0, v1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/example/quizappassignment1/GalleryActivityIntegrationTest;->activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;

    return-void
.end method


# virtual methods
.method public deleteOption()V
    .locals 9
    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 50
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/quizappassignment1/model/OptionList;->getOptionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 53
    .local v0, "originalSize":I
    sget v1, Lcom/example/quizappassignment1/R$id;->galleryList:I

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v1

    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/assertion/ViewAssertions;->matches(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/test/espresso/ViewInteraction;->check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;

    .line 56
    invoke-static {}, Lorg/hamcrest/CoreMatchers;->anything()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/Espresso;->onData(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;

    move-result-object v1

    sget v2, Lcom/example/quizappassignment1/R$id;->galleryList:I

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/test/espresso/DataInteraction;->inAdapterView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/test/espresso/DataInteraction;->atPosition(Ljava/lang/Integer;)Landroidx/test/espresso/DataInteraction;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->scrollTo()Landroidx/test/espresso/ViewAction;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Landroidx/test/espresso/DataInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 59
    invoke-static {}, Lorg/hamcrest/CoreMatchers;->anything()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v1}, Landroidx/test/espresso/Espresso;->onData(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;

    move-result-object v1

    sget v5, Lcom/example/quizappassignment1/R$id;->galleryList:I

    invoke-static {v5}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/test/espresso/DataInteraction;->inAdapterView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/test/espresso/DataInteraction;->atPosition(Ljava/lang/Integer;)Landroidx/test/espresso/DataInteraction;

    move-result-object v1

    sget v3, Lcom/example/quizappassignment1/R$id;->deleteButton:I

    invoke-static {v3}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/test/espresso/DataInteraction;->onChildView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;

    move-result-object v1

    new-array v3, v4, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v3}, Landroidx/test/espresso/DataInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 62
    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 63
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/quizappassignment1/model/OptionList;->getOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v0, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lorg/junit/Assert;->assertTrue(Z)V

    .line 64
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/quizappassignment1/model/OptionList;->getOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v5, v3

    add-int/lit8 v3, v0, -0x1

    int-to-long v7, v3

    invoke-static {v5, v6, v7, v8}, Lorg/junit/Assert;->assertEquals(JJ)V

    .line 66
    :cond_1
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/quizappassignment1/model/OptionList;->getOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_2

    move v2, v4

    :cond_2
    invoke-static {v2}, Lorg/junit/Assert;->assertTrue(Z)V

    .line 67
    return-void
.end method

.method public setUp()V
    .locals 0
    .annotation runtime Lorg/junit/Before;
    .end annotation

    .line 39
    invoke-static {}, Landroidx/test/espresso/intent/Intents;->init()V

    .line 40
    return-void
.end method

.method public tearDown()V
    .locals 0
    .annotation runtime Lorg/junit/After;
    .end annotation

    .line 45
    invoke-static {}, Landroidx/test/espresso/intent/Intents;->release()V

    .line 46
    return-void
.end method

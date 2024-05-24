.class public Lcom/example/quizappassignment1/QuizActivityIntegrationTest;
.super Ljava/lang/Object;
.source "QuizActivityIntegrationTest.java"


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Landroidx/test/ext/junit/runners/AndroidJUnit4;
.end annotation


# instance fields
.field public activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/ext/junit/rules/ActivityScenarioRule<",
            "Lcom/example/quizappassignment1/QuizActivity;",
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

    const-class v1, Lcom/example/quizappassignment1/QuizActivity;

    invoke-direct {v0, v1}, Landroidx/test/ext/junit/rules/ActivityScenarioRule;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/example/quizappassignment1/QuizActivityIntegrationTest;->activityRule:Landroidx/test/ext/junit/rules/ActivityScenarioRule;

    return-void
.end method


# virtual methods
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

.method public testCorrectAnswer()V
    .locals 6
    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 51
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getScore()I

    move-result v0

    .line 54
    .local v0, "initialScore":I
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/quizappassignment1/model/OptionList;->getCorrectOption()Lcom/example/quizappassignment1/model/Option;

    move-result-object v1

    .line 57
    .local v1, "correctOption":Lcom/example/quizappassignment1/model/Option;
    invoke-virtual {v1}, Lcom/example/quizappassignment1/model/Option;->getMatchingName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/test/espresso/ViewAction;

    const/4 v4, 0x0

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 60
    sget v2, Lcom/example/quizappassignment1/R$id;->statusTextView:I

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v2

    const-string v3, "Correct"

    invoke-static {v3}, Lorg/hamcrest/Matchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/espresso/assertion/ViewAssertions;->matches(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/ViewInteraction;->check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;

    .line 63
    sget v2, Lcom/example/quizappassignment1/R$id;->pointsText:I

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/hamcrest/Matchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v3

    invoke-static {v3}, Landroidx/test/espresso/assertion/ViewAssertions;->matches(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/ViewInteraction;->check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;

    .line 64
    return-void
.end method

.method public testIncorrectAnswer()V
    .locals 8
    .annotation runtime Lorg/junit/Test;
    .end annotation

    .line 69
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getScore()I

    move-result v0

    .line 72
    .local v0, "initialScore":I
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/quizappassignment1/model/OptionList;->getCorrectOption()Lcom/example/quizappassignment1/model/Option;

    move-result-object v1

    .line 75
    .local v1, "correctOption":Lcom/example/quizappassignment1/model/Option;
    invoke-static {}, Lcom/example/quizappassignment1/model/Storage;->getOptionList()Lcom/example/quizappassignment1/model/OptionList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/quizappassignment1/model/OptionList;->getAllOptions()Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "allOptions":Ljava/util/List;, "Ljava/util/List<Lcom/example/quizappassignment1/model/Option;>;"
    const/4 v3, 0x0

    .line 77
    .local v3, "incorrectOption":Lcom/example/quizappassignment1/model/Option;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/example/quizappassignment1/model/Option;

    .line 78
    .local v5, "option":Lcom/example/quizappassignment1/model/Option;
    invoke-virtual {v5, v1}, Lcom/example/quizappassignment1/model/Option;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    move-object v3, v5

    .line 80
    goto :goto_1

    .line 82
    .end local v5    # "option":Lcom/example/quizappassignment1/model/Option;
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/example/quizappassignment1/model/Option;->getMatchingName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v4

    invoke-static {v4}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Landroidx/test/espresso/ViewAction;

    const/4 v6, 0x0

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 88
    sget v4, Lcom/example/quizappassignment1/R$id;->statusTextView:I

    invoke-static {v4}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v4

    invoke-static {v4}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v4

    const-string v5, "Incorrect"

    invoke-static {v5}, Lorg/hamcrest/Matchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v5

    invoke-static {v5}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v5

    invoke-static {v5}, Landroidx/test/espresso/assertion/ViewAssertions;->matches(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/test/espresso/ViewInteraction;->check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;

    .line 91
    sget v4, Lcom/example/quizappassignment1/R$id;->pointsText:I

    invoke-static {v4}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v4

    invoke-static {v4}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/hamcrest/Matchers;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v5

    invoke-static {v5}, Landroidx/test/espresso/matcher/ViewMatchers;->withText(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v5

    invoke-static {v5}, Landroidx/test/espresso/assertion/ViewAssertions;->matches(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewAssertion;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/test/espresso/ViewInteraction;->check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;

    .line 92
    return-void
.end method

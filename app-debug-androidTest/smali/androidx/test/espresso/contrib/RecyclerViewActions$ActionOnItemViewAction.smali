.class final Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;
.super Ljava/lang/Object;
.source "RecyclerViewActions.java"

# interfaces
.implements Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/RecyclerViewActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionOnItemViewAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;"
    }
.end annotation


# instance fields
.field private final atPosition:I

.field private final scroller:Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private final viewAction:Landroidx/test/espresso/ViewAction;

.field private final viewHolderMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;)V
    .locals 1
    .param p2, "viewAction"    # Landroidx/test/espresso/ViewAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolderMatcher",
            "viewAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;",
            "Landroidx/test/espresso/ViewAction;",
            ")V"
        }
    .end annotation

    .line 180
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction<TVH;>;"
    .local p1, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;I)V

    .line 181
    return-void
.end method

.method private constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;I)V
    .locals 2
    .param p2, "viewAction"    # Landroidx/test/espresso/ViewAction;
    .param p3, "atPosition"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewHolderMatcher",
            "viewAction",
            "atPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;",
            "Landroidx/test/espresso/ViewAction;",
            "I)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction<TVH;>;"
    .local p1, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {p1}, Landroidx/test/espresso/contrib/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hamcrest/Matcher;

    iput-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    .line 186
    invoke-static {p2}, Landroidx/test/espresso/contrib/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/ViewAction;

    iput-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    .line 187
    iput p3, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->atPosition:I

    .line 188
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;-><init>(Lorg/hamcrest/Matcher;ILandroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    iput-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->scroller:Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/hamcrest/Matcher;
    .param p2, "x1"    # Landroidx/test/espresso/ViewAction;
    .param p3, "x2"    # Landroidx/test/espresso/contrib/RecyclerViewActions$1;

    .line 172
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction<TVH;>;"
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;)V

    return-void
.end method


# virtual methods
.method public atPosition(I)Landroidx/test/espresso/contrib/RecyclerViewActions$PositionableRecyclerViewAction;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 199
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction<TVH;>;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d is used as an index - must be >= 0"

    invoke-static {v0, v2, v1}, Landroidx/test/espresso/contrib/Checks;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;

    iget-object v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    iget-object v2, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    invoke-direct {v0, v1, v2, p1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;-><init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewAction;I)V

    return-object v0
.end method

.method public getConstraints()Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 194
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction<TVH;>;"
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 205
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction<TVH;>;"
    iget v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->atPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    .line 208
    invoke-interface {v0}, Landroidx/test/espresso/ViewAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 206
    const-string v1, "performing ViewAction: %s on item matching: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    .line 213
    invoke-interface {v0}, Landroidx/test/espresso/ViewAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->atPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 211
    const-string v1, "performing ViewAction: %s on %d-th item matching: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 6
    .param p1, "uiController"    # Landroidx/test/espresso/UiController;
    .param p2, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "root"
        }
    .end annotation

    .line 219
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction<TVH;>;"
    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :try_start_0
    iget-object v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->scroller:Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;

    invoke-virtual {v1, p1, p2}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 222
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 224
    iget v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->atPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 225
    .local v3, "max":I
    :goto_0
    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 226
    .local v1, "selectIndex":I
    :cond_1
    iget-object v2, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0, v2, v3}, Landroidx/test/espresso/contrib/RecyclerViewActions;->access$400(Landroidx/recyclerview/widget/RecyclerView;Lorg/hamcrest/Matcher;I)Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "matchedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;

    iget v4, v4, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;->position:I

    iget-object v5, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    invoke-static {v4, v5}, Landroidx/test/espresso/contrib/RecyclerViewActions;->actionOnItemAtPosition(ILandroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v4

    .line 228
    invoke-interface {v4, p1, p2}, Landroidx/test/espresso/ViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 229
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "selectIndex":I
    .end local v2    # "matchedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;>;"
    .end local v3    # "max":I
    nop

    .line 237
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 232
    invoke-virtual {p0}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemViewAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 233
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 234
    invoke-virtual {v2, v1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v2

    throw v2
.end method

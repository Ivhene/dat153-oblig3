.class final Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;
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
    name = "ScrollToViewAction"
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

.field private final viewHolderMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewHolderMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;)V"
        }
    .end annotation

    .line 320
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
    .local p1, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;-><init>(Lorg/hamcrest/Matcher;I)V

    .line 321
    return-void
.end method

.method private constructor <init>(Lorg/hamcrest/Matcher;I)V
    .locals 0
    .param p2, "atPosition"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolderMatcher",
            "atPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TVH;>;I)V"
        }
    .end annotation

    .line 323
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
    .local p1, "viewHolderMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    .line 325
    iput p2, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->atPosition:I

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;ILandroidx/test/espresso/contrib/RecyclerViewActions$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/hamcrest/Matcher;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroidx/test/espresso/contrib/RecyclerViewActions$1;

    .line 314
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;-><init>(Lorg/hamcrest/Matcher;I)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hamcrest/Matcher;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/hamcrest/Matcher;
    .param p2, "x1"    # Landroidx/test/espresso/contrib/RecyclerViewActions$1;

    .line 314
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
    invoke-direct {p0, p1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;-><init>(Lorg/hamcrest/Matcher;)V

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

    .line 330
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
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

    .line 331
    new-instance v0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;

    iget-object v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    invoke-direct {v0, v1, p1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;-><init>(Lorg/hamcrest/Matcher;I)V

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

    .line 337
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
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

    .line 342
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
    iget v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->atPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "scroll RecyclerView to: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_0
    nop

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 345
    const-string v1, "scroll RecyclerView to the: %dth matching %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 11
    .param p1, "uiController"    # Landroidx/test/espresso/UiController;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "view"
        }
    .end annotation

    .line 353
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction<TVH;>;"
    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 355
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :try_start_0
    iget v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->atPosition:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 356
    .local v4, "maxMatches":I
    :goto_0
    const/4 v5, 0x0

    if-ne v1, v3, :cond_1

    move v1, v5

    .line 357
    .local v1, "selectIndex":I
    :cond_1
    iget-object v6, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    invoke-static {v0, v6, v4}, Landroidx/test/espresso/contrib/RecyclerViewActions;->access$400(Landroidx/recyclerview/widget/RecyclerView;Lorg/hamcrest/Matcher;I)Ljava/util/List;

    move-result-object v6

    .line 359
    .local v6, "matchedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v1, v7, :cond_4

    .line 365
    iget v7, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->atPosition:I

    if-ne v7, v3, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v2, "ambiguousViewError":Ljava/lang/StringBuilder;
    const-string v3, "Found more than one sub-view matching %s"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v9, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    aput-object v9, v7, v5

    .line 368
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;

    .line 370
    .local v5, "item":Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    nop

    .end local v5    # "item":Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;
    goto :goto_1

    .line 372
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .end local p1    # "uiController":Landroidx/test/espresso/UiController;
    .end local p2    # "view":Landroid/view/View;
    throw v3

    .line 374
    .end local v2    # "ambiguousViewError":Ljava/lang/StringBuilder;
    .restart local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .restart local p1    # "uiController":Landroidx/test/espresso/UiController;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;

    iget v2, v2, Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;->position:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 375
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 382
    .end local v1    # "selectIndex":I
    .end local v4    # "maxMatches":I
    .end local v6    # "matchedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;>;"
    nop

    .line 383
    return-void

    .line 360
    .restart local v1    # "selectIndex":I
    .restart local v4    # "maxMatches":I
    .restart local v6    # "matchedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;>;"
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v7, "Found %d items matching %s, but position %d was requested."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 363
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    iget-object v5, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->viewHolderMatcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v8

    iget v5, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->atPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v2

    .line 361
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .end local p1    # "uiController":Landroidx/test/espresso/UiController;
    .end local p2    # "view":Landroid/view/View;
    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1    # "selectIndex":I
    .end local v4    # "maxMatches":I
    .end local v6    # "matchedItems":Ljava/util/List;, "Ljava/util/List<Landroidx/test/espresso/contrib/RecyclerViewActions$MatchedItem;>;"
    .restart local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .restart local p1    # "uiController":Landroidx/test/espresso/UiController;
    .restart local p2    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 378
    invoke-virtual {p0}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToViewAction;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 379
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v2, v1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v2

    throw v2
.end method

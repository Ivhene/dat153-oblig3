.class final Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;
.super Ljava/lang/Object;
.source "RecyclerViewActions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/RecyclerViewActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionOnItemAtPositionViewAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/ViewAction;"
    }
.end annotation


# instance fields
.field private final position:I

.field private final viewAction:Landroidx/test/espresso/ViewAction;


# direct methods
.method private constructor <init>(ILandroidx/test/espresso/ViewAction;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "viewAction"    # Landroidx/test/espresso/ViewAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "viewAction"
        }
    .end annotation

    .line 261
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->position:I

    .line 263
    iput-object p2, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/ViewAction;Landroidx/test/espresso/contrib/RecyclerViewActions$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroidx/test/espresso/ViewAction;
    .param p3, "x2"    # Landroidx/test/espresso/contrib/RecyclerViewActions$1;

    .line 256
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction<TVH;>;"
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;-><init>(ILandroidx/test/espresso/ViewAction;)V

    return-void
.end method


# virtual methods
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

    .line 269
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction<TVH;>;"
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
    .locals 4

    .line 274
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction<TVH;>;"
    iget-object v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    .line 275
    invoke-interface {v0}, Landroidx/test/espresso/ViewAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->position:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "actionOnItemAtPosition performing ViewAction: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on item at position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 8
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

    .line 282
    .local p0, "this":Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;, "Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction<TVH;>;"
    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v1, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;

    iget v2, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->position:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;-><init>(ILandroidx/test/espresso/contrib/RecyclerViewActions$1;)V

    invoke-virtual {v1, p1, p2}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 285
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 288
    iget v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 289
    .local v1, "viewHolderForPosition":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;, "TVH;"
    if-eqz v1, :cond_1

    .line 297
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 298
    .local v2, "viewAtPosition":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 306
    iget-object v3, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->viewAction:Landroidx/test/espresso/ViewAction;

    invoke-interface {v3, p1, v2}, Landroidx/test/espresso/ViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 307
    return-void

    .line 299
    :cond_0
    new-instance v3, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v3}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v3

    .line 301
    invoke-static {v2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/IllegalStateException;

    iget v5, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->position:I

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "No view at position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3, v4}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v3

    throw v3

    .line 290
    .end local v2    # "viewAtPosition":Landroid/view/View;
    :cond_1
    new-instance v2, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v2}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 292
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    iget v4, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ActionOnItemAtPositionViewAction;->position:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x27

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "No view holder at position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2, v3}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object v2

    throw v2
.end method

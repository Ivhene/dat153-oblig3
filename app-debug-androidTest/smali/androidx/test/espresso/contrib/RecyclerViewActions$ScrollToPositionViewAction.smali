.class final Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;
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
    name = "ScrollToPositionViewAction"
.end annotation


# instance fields
.field private final position:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput p1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;->position:I

    .line 395
    return-void
.end method

.method synthetic constructor <init>(ILandroidx/test/espresso/contrib/RecyclerViewActions$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroidx/test/espresso/contrib/RecyclerViewActions$1;

    .line 390
    invoke-direct {p0, p1}, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;-><init>(I)V

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

    .line 400
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

    .line 405
    iget v0, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;->position:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "scroll RecyclerView to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 2
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

    .line 410
    move-object v0, p2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 411
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    iget v1, p0, Landroidx/test/espresso/contrib/RecyclerViewActions$ScrollToPositionViewAction;->position:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 412
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 413
    return-void
.end method

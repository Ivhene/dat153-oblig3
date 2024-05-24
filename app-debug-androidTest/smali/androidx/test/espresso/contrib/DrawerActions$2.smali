.class Landroidx/test/espresso/contrib/DrawerActions$2;
.super Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;
.source "DrawerActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/DrawerActions;->close(I)Landroidx/test/espresso/ViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$gravity:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$gravity"
        }
    .end annotation

    .line 185
    iput p1, p0, Landroidx/test/espresso/contrib/DrawerActions$2;->val$gravity:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;-><init>(Landroidx/test/espresso/contrib/DrawerActions$1;)V

    return-void
.end method


# virtual methods
.method protected checkAction()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 193
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$2;->val$gravity:I

    invoke-static {v0}, Landroidx/test/espresso/contrib/DrawerMatchers;->isOpen(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 188
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$2;->val$gravity:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "close drawer with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performAction(Landroidx/test/espresso/UiController;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 2
    .param p1, "uiController"    # Landroidx/test/espresso/UiController;
    .param p2, "view"    # Landroidx/drawerlayout/widget/DrawerLayout;
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

    .line 198
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$2;->val$gravity:I

    invoke-virtual {p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 199
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 201
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$2;->val$gravity:I

    invoke-virtual {p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-wide/16 v0, 0x12c

    invoke-interface {p1, v0, v1}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 204
    :cond_0
    return-void
.end method

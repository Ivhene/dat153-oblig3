.class Landroidx/test/espresso/contrib/DrawerActions$1;
.super Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;
.source "DrawerActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/DrawerActions;->open(I)Landroidx/test/espresso/ViewAction;
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

    .line 134
    iput p1, p0, Landroidx/test/espresso/contrib/DrawerActions$1;->val$gravity:I

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

    .line 142
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$1;->val$gravity:I

    invoke-static {v0}, Landroidx/test/espresso/contrib/DrawerMatchers;->isClosed(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 137
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$1;->val$gravity:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "open drawer with gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performAction(Landroidx/test/espresso/UiController;Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 1
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

    .line 147
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$1;->val$gravity:I

    invoke-virtual {p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 148
    return-void
.end method

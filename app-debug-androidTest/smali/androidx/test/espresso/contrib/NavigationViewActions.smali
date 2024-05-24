.class public final Landroidx/test/espresso/contrib/NavigationViewActions;
.super Ljava/lang/Object;
.source "NavigationViewActions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static navigateTo(I)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "menuItemId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "menuItemId"
        }
    .end annotation

    .line 78
    new-instance v0, Landroidx/test/espresso/contrib/NavigationViewActions$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/NavigationViewActions$1;-><init>(I)V

    return-object v0
.end method

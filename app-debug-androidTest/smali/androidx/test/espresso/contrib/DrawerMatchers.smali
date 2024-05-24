.class public final Landroidx/test/espresso/contrib/DrawerMatchers;
.super Ljava/lang/Object;
.source "DrawerMatchers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static isClosed()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 86
    const v0, 0x800003

    invoke-static {v0}, Landroidx/test/espresso/contrib/DrawerMatchers;->isClosed(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isClosed(I)Lorg/hamcrest/Matcher;
    .locals 2
    .param p0, "gravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gravity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Landroidx/test/espresso/contrib/DrawerMatchers$2;

    const-class v1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v0, v1, p0}, Landroidx/test/espresso/contrib/DrawerMatchers$2;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public static isOpen()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 58
    const v0, 0x800003

    invoke-static {v0}, Landroidx/test/espresso/contrib/DrawerMatchers;->isOpen(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isOpen(I)Lorg/hamcrest/Matcher;
    .locals 2
    .param p0, "gravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gravity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroidx/test/espresso/contrib/DrawerMatchers$1;

    const-class v1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v0, v1, p0}, Landroidx/test/espresso/contrib/DrawerMatchers$1;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

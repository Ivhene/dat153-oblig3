.class Landroidx/test/espresso/contrib/DrawerMatchers$1;
.super Landroidx/test/espresso/matcher/BoundedMatcher;
.source "DrawerMatchers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/DrawerMatchers;->isOpen(I)Lorg/hamcrest/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/matcher/BoundedMatcher<",
        "Landroid/view/View;",
        "Landroidx/drawerlayout/widget/DrawerLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$gravity:I


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010
        }
        names = {
            "expectedType",
            "val$gravity"
        }
    .end annotation

    .line 39
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/drawerlayout/widget/DrawerLayout;>;"
    iput p2, p0, Landroidx/test/espresso/contrib/DrawerMatchers$1;->val$gravity:I

    invoke-direct {p0, p1}, Landroidx/test/espresso/matcher/BoundedMatcher;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 42
    const-string v0, "is drawer open"

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 43
    return-void
.end method

.method public matchesSafely(Landroidx/drawerlayout/widget/DrawerLayout;)Z
    .locals 1
    .param p1, "drawer"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawer"
        }
    .end annotation

    .line 47
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerMatchers$1;->val$gravity:I

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic matchesSafely(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "drawer"
        }
    .end annotation

    .line 39
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/contrib/DrawerMatchers$1;->matchesSafely(Landroidx/drawerlayout/widget/DrawerLayout;)Z

    move-result p1

    return p1
.end method

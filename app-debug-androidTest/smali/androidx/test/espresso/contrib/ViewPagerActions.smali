.class public final Landroidx/test/espresso/contrib/ViewPagerActions;
.super Ljava/lang/Object;
.source "ViewPagerActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;,
        Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMOOTH_SCROLL:Z = false


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static clickBetweenTwoTitles(Ljava/lang/String;Ljava/lang/String;)Landroidx/test/espresso/ViewAction;
    .locals 7
    .param p0, "title1"    # Ljava/lang/String;
    .param p1, "title2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "title1",
            "title2"
        }
    .end annotation

    .line 155
    new-instance v6, Landroidx/test/espresso/action/GeneralClickAction;

    sget-object v1, Landroidx/test/espresso/action/Tap;->SINGLE:Landroidx/test/espresso/action/Tap;

    new-instance v2, Landroidx/test/espresso/contrib/ViewPagerActions$6;

    invoke-direct {v2, p0, p1}, Landroidx/test/espresso/contrib/ViewPagerActions$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroidx/test/espresso/action/Press;->FINGER:Landroidx/test/espresso/action/Press;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/action/GeneralClickAction;-><init>(Landroidx/test/espresso/action/Tapper;Landroidx/test/espresso/action/CoordinatesProvider;Landroidx/test/espresso/action/PrecisionDescriber;II)V

    return-object v6
.end method

.method public static scrollLeft()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/test/espresso/contrib/ViewPagerActions;->scrollLeft(Z)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static scrollLeft(Z)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "smoothScroll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smoothScroll"
        }
    .end annotation

    .line 73
    new-instance v0, Landroidx/test/espresso/contrib/ViewPagerActions$2;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/ViewPagerActions$2;-><init>(Z)V

    return-object v0
.end method

.method public static scrollRight()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/test/espresso/contrib/ViewPagerActions;->scrollRight(Z)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static scrollRight(Z)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "smoothScroll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smoothScroll"
        }
    .end annotation

    .line 52
    new-instance v0, Landroidx/test/espresso/contrib/ViewPagerActions$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/ViewPagerActions$1;-><init>(Z)V

    return-object v0
.end method

.method public static scrollToFirst()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/test/espresso/contrib/ViewPagerActions;->scrollToFirst(Z)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static scrollToFirst(Z)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "smoothScroll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smoothScroll"
        }
    .end annotation

    .line 117
    new-instance v0, Landroidx/test/espresso/contrib/ViewPagerActions$4;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/ViewPagerActions$4;-><init>(Z)V

    return-object v0
.end method

.method public static scrollToLast()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/test/espresso/contrib/ViewPagerActions;->scrollToLast(Z)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static scrollToLast(Z)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "smoothScroll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smoothScroll"
        }
    .end annotation

    .line 94
    new-instance v0, Landroidx/test/espresso/contrib/ViewPagerActions$3;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/ViewPagerActions$3;-><init>(Z)V

    return-object v0
.end method

.method public static scrollToPage(I)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "page"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/test/espresso/contrib/ViewPagerActions;->scrollToPage(IZ)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static scrollToPage(IZ)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "page"    # I
    .param p1, "smoothScroll"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "page",
            "smoothScroll"
        }
    .end annotation

    .line 140
    new-instance v0, Landroidx/test/espresso/contrib/ViewPagerActions$5;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/contrib/ViewPagerActions$5;-><init>(IZ)V

    return-object v0
.end method

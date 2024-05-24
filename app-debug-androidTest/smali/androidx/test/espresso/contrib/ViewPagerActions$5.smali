.class Landroidx/test/espresso/contrib/ViewPagerActions$5;
.super Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;
.source "ViewPagerActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/ViewPagerActions;->scrollToPage(IZ)Landroidx/test/espresso/ViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$page:I

.field final synthetic val$smoothScroll:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$page",
            "val$smoothScroll"
        }
    .end annotation

    .line 140
    iput p1, p0, Landroidx/test/espresso/contrib/ViewPagerActions$5;->val$page:I

    iput-boolean p2, p0, Landroidx/test/espresso/contrib/ViewPagerActions$5;->val$smoothScroll:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;-><init>(Landroidx/test/espresso/contrib/ViewPagerActions$1;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 143
    const-string v0, "ViewPager move to page"

    return-object v0
.end method

.method protected performScroll(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    .line 148
    iget v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$5;->val$page:I

    iget-boolean v1, p0, Landroidx/test/espresso/contrib/ViewPagerActions$5;->val$smoothScroll:Z

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 149
    return-void
.end method

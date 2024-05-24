.class Landroidx/test/espresso/contrib/ViewPagerActions$3;
.super Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;
.source "ViewPagerActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/contrib/ViewPagerActions;->scrollToLast(Z)Landroidx/test/espresso/ViewAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$smoothScroll:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$smoothScroll"
        }
    .end annotation

    .line 94
    iput-boolean p1, p0, Landroidx/test/espresso/contrib/ViewPagerActions$3;->val$smoothScroll:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;-><init>(Landroidx/test/espresso/contrib/ViewPagerActions$1;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "ViewPager move to last page"

    return-object v0
.end method

.method protected performScroll(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 103
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 104
    add-int/lit8 v1, v0, -0x1

    iget-boolean v2, p0, Landroidx/test/espresso/contrib/ViewPagerActions$3;->val$smoothScroll:Z

    invoke-virtual {p1, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 106
    :cond_0
    return-void
.end method

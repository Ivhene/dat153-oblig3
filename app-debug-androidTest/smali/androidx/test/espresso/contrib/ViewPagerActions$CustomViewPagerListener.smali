.class final Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;
.super Ljava/lang/Object;
.source "ViewPagerActions.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroidx/test/espresso/IdlingResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/ViewPagerActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomViewPagerListener"
.end annotation


# instance fields
.field private mCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

.field private mCurrState:I

.field private mNeedsIdle:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mCurrState:I

    .line 217
    iput-boolean v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mNeedsIdle:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/contrib/ViewPagerActions$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/espresso/contrib/ViewPagerActions$1;

    .line 211
    invoke-direct {p0}, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;-><init>()V

    return-void
.end method

.method static synthetic access$202(Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;
    .param p1, "x1"    # Z

    .line 211
    iput-boolean p1, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mNeedsIdle:Z

    return p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 226
    const-string v0, "View pager listener"

    return-object v0
.end method

.method public isIdleNow()Z
    .locals 2

    .line 231
    iget-boolean v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mNeedsIdle:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 232
    return v1

    .line 234
    :cond_0
    iget v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mCurrState:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 249
    iput p1, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mCurrState:I

    .line 250
    if-nez p1, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    .line 255
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 258
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 240
    iget v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mCurrState:I

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    .line 245
    :cond_0
    return-void
.end method

.method public registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V
    .locals 0
    .param p1, "resourceCallback"    # Landroidx/test/espresso/IdlingResource$ResourceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceCallback"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->mCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 222
    return-void
.end method

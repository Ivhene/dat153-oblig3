.class abstract Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;
.super Ljava/lang/Object;
.source "ViewPagerActions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/ViewPagerActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ViewPagerScrollAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/contrib/ViewPagerActions$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/espresso/contrib/ViewPagerActions$1;

    .line 261
    invoke-direct {p0}, Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConstraints()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public final perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 5
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

    .line 270
    move-object v0, p2

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 272
    .local v0, "viewPager":Landroidx/viewpager/widget/ViewPager;
    new-instance v1, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;-><init>(Landroidx/test/espresso/contrib/ViewPagerActions$1;)V

    .line 273
    .local v1, "customListener":Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 282
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Landroidx/test/espresso/IdlingResource;

    aput-object v1, v4, v2

    invoke-static {v4}, Landroidx/test/espresso/Espresso;->registerIdlingResources([Landroidx/test/espresso/IdlingResource;)Z

    .line 284
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 286
    move-object v4, p2

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v4}, Landroidx/test/espresso/contrib/ViewPagerActions$ViewPagerScrollAction;->performScroll(Landroidx/viewpager/widget/ViewPager;)V

    .line 288
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 290
    invoke-static {v1, v3}, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->access$202(Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;Z)Z

    .line 291
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 292
    invoke-static {v1, v2}, Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;->access$202(Landroidx/test/espresso/contrib/ViewPagerActions$CustomViewPagerListener;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    new-array v3, v3, [Landroidx/test/espresso/IdlingResource;

    aput-object v1, v3, v2

    invoke-static {v3}, Landroidx/test/espresso/Espresso;->unregisterIdlingResources([Landroidx/test/espresso/IdlingResource;)Z

    .line 297
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 298
    nop

    .line 299
    return-void

    .line 295
    :catchall_0
    move-exception v4

    new-array v3, v3, [Landroidx/test/espresso/IdlingResource;

    aput-object v1, v3, v2

    invoke-static {v3}, Landroidx/test/espresso/Espresso;->unregisterIdlingResources([Landroidx/test/espresso/IdlingResource;)Z

    .line 297
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 298
    throw v4
.end method

.method protected abstract performScroll(Landroidx/viewpager/widget/ViewPager;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewPager"
        }
    .end annotation
.end method

.class abstract Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;
.super Ljava/lang/Object;
.source "DrawerActions.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/DrawerActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DrawerAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/contrib/DrawerActions$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/espresso/contrib/DrawerActions$1;

    .line 62
    invoke-direct {p0}, Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkAction()Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

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

    .line 66
    const-class v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public final perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .locals 8
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

    .line 71
    move-object v0, p2

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 73
    .local v0, "drawer":Landroidx/drawerlayout/widget/DrawerLayout;
    invoke-virtual {p0}, Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;->checkAction()Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    invoke-static {}, Landroidx/test/espresso/contrib/DrawerActions;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 80
    move-object v2, v1

    check-cast v2, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;

    .local v2, "idlingListener":Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;
    goto :goto_0

    .line 82
    .end local v2    # "idlingListener":Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;
    :cond_1
    new-instance v2, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;

    invoke-direct {v2, v5}, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;-><init>(Landroidx/test/espresso/contrib/DrawerActions$1;)V

    .line 83
    .restart local v2    # "idlingListener":Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;
    invoke-static {}, Landroidx/test/espresso/contrib/DrawerActions;->access$000()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setTag(ILjava/lang/Object;)V

    .line 84
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 85
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v6

    new-array v7, v4, [Landroidx/test/espresso/IdlingResource;

    aput-object v2, v7, v3

    invoke-virtual {v6, v7}, Landroidx/test/espresso/IdlingRegistry;->register([Landroidx/test/espresso/IdlingResource;)Z

    .line 88
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;->performAction(Landroidx/test/espresso/UiController;Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 89
    invoke-interface {p1}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 91
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v6

    new-array v4, v4, [Landroidx/test/espresso/IdlingResource;

    aput-object v2, v4, v3

    invoke-virtual {v6, v4}, Landroidx/test/espresso/IdlingRegistry;->unregister([Landroidx/test/espresso/IdlingResource;)Z

    .line 92
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 93
    invoke-static {}, Landroidx/test/espresso/contrib/DrawerActions;->access$000()I

    move-result v3

    invoke-virtual {v0, v3, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->setTag(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method protected abstract performAction(Landroidx/test/espresso/UiController;Landroidx/drawerlayout/widget/DrawerLayout;)V
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
.end method

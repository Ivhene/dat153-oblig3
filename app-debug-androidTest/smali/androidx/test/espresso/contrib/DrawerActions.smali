.class public final Landroidx/test/espresso/contrib/DrawerActions;
.super Ljava/lang/Object;
.source "DrawerActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;,
        Landroidx/test/espresso/contrib/DrawerActions$DrawerAction;
    }
.end annotation


# static fields
.field private static final TAG:I

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroidx/test/espresso/contrib/DrawerActions;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    invoke-static {}, Landroidx/test/espresso/contrib/DrawerActions;->getTag()I

    move-result v0

    sput v0, Landroidx/test/espresso/contrib/DrawerActions;->TAG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 42
    sget v0, Landroidx/test/espresso/contrib/DrawerActions;->TAG:I

    return v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 42
    sget-object v0, Landroidx/test/espresso/contrib/DrawerActions;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static close()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 176
    const v0, 0x800003

    invoke-static {v0}, Landroidx/test/espresso/contrib/DrawerActions;->close(I)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static close(I)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "gravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gravity"
        }
    .end annotation

    .line 185
    new-instance v0, Landroidx/test/espresso/contrib/DrawerActions$2;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/DrawerActions$2;-><init>(I)V

    return-object v0
.end method

.method public static closeDrawer(I)V
    .locals 1
    .param p0, "drawerLayoutId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawerLayoutId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    const v0, 0x800003

    invoke-static {p0, v0}, Landroidx/test/espresso/contrib/DrawerActions;->closeDrawer(II)V

    .line 159
    return-void
.end method

.method public static closeDrawer(II)V
    .locals 4
    .param p0, "drawerLayoutId"    # I
    .param p1, "gravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawerLayoutId",
            "gravity"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    const/4 v2, 0x0

    invoke-static {p1}, Landroidx/test/espresso/contrib/DrawerActions;->close(I)Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 168
    return-void
.end method

.method private static getTag()I
    .locals 2

    .line 49
    :try_start_0
    sget v0, Landroidx/test/espresso/contrib/R$id;->androidx_test_espresso_contrib_drawer_layout_tag:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 50
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const v1, -0xc21db0

    return v1
.end method

.method public static open()Landroidx/test/espresso/ViewAction;
    .locals 1

    .line 125
    const v0, 0x800003

    invoke-static {v0}, Landroidx/test/espresso/contrib/DrawerActions;->open(I)Landroidx/test/espresso/ViewAction;

    move-result-object v0

    return-object v0
.end method

.method public static open(I)Landroidx/test/espresso/ViewAction;
    .locals 1
    .param p0, "gravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gravity"
        }
    .end annotation

    .line 134
    new-instance v0, Landroidx/test/espresso/contrib/DrawerActions$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/contrib/DrawerActions$1;-><init>(I)V

    return-object v0
.end method

.method public static openDrawer(I)V
    .locals 1
    .param p0, "drawerLayoutId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawerLayoutId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    const v0, 0x800003

    invoke-static {p0, v0}, Landroidx/test/espresso/contrib/DrawerActions;->openDrawer(II)V

    .line 108
    return-void
.end method

.method public static openDrawer(II)V
    .locals 4
    .param p0, "drawerLayoutId"    # I
    .param p1, "gravity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawerLayoutId",
            "gravity"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-static {p0}, Landroidx/test/espresso/matcher/ViewMatchers;->withId(I)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    const/4 v2, 0x0

    invoke-static {p1}, Landroidx/test/espresso/contrib/DrawerActions;->open(I)Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 117
    return-void
.end method

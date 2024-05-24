.class final Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "DrawerActions.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/DrawerActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IdlingDrawerListener"
.end annotation


# instance fields
.field private callback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

.field private final id:I

.field private idle:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    .line 212
    invoke-static {}, Landroidx/test/espresso/contrib/DrawerActions;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->id:I

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->idle:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/contrib/DrawerActions$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/espresso/contrib/DrawerActions$1;

    .line 209
    invoke-direct {p0}, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3

    .line 232
    iget v0, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->id:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "IdlingDrawerListener::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIdleNow()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->idle:Z

    return v0
.end method

.method public onDrawerStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->idle:Z

    .line 222
    iget-object v0, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->callback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    if-eqz v0, :cond_1

    .line 223
    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    goto :goto_0

    .line 226
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->idle:Z

    .line 228
    :cond_1
    :goto_0
    return-void
.end method

.method public registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/test/espresso/IdlingResource$ResourceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Landroidx/test/espresso/contrib/DrawerActions$IdlingDrawerListener;->callback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 243
    return-void
.end method

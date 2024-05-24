.class Landroidx/test/espresso/contrib/AccessibilityChecks$2;
.super Ljava/lang/Object;
.source "AccessibilityChecks.java"

# interfaces
.implements Landroidx/test/espresso/ViewAssertion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/contrib/AccessibilityChecks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Landroid/view/View;Landroidx/test/espresso/NoMatchingViewException;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "noViewFoundException"    # Landroidx/test/espresso/NoMatchingViewException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "noViewFoundException"
        }
    .end annotation

    .line 54
    if-nez p2, :cond_1

    .line 63
    if-eqz p1, :cond_0

    .line 66
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 68
    .local v0, "originalPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-static {}, Landroidx/test/espresso/contrib/AccessibilityChecks;->access$000()Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->checkAndReturnResults(Landroid/view/View;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 71
    nop

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 71
    throw v1

    .line 64
    .end local v0    # "originalPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_1
    nop

    .line 60
    invoke-virtual {p2}, Landroidx/test/espresso/NoMatchingViewException;->getViewMatcherDescription()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 57
    const-string v1, "\'accessibility checks could not be performed because view \'%s\' was notfound.\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "AccessibilityChecks"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    throw p2
.end method

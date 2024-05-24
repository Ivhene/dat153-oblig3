.class Landroidx/test/espresso/contrib/AccessibilityChecks$1;
.super Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;
.source "AccessibilityChecks.java"


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

    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;-><init>()V

    return-void
.end method


# virtual methods
.method public describeView(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Landroidx/test/espresso/contrib/AccessibilityChecks;
.super Ljava/lang/Object;
.source "AccessibilityChecks.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACCESSIBILITY_CHECK_ASSERTION:Landroidx/test/espresso/ViewAssertion;

.field private static final CHECK_EXECUTOR:Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

.field private static final TAG:Ljava/lang/String; = "AccessibilityChecks"

.field private static checksEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;-><init>()V

    new-instance v1, Landroidx/test/espresso/contrib/AccessibilityChecks$1;

    invoke-direct {v1}, Landroidx/test/espresso/contrib/AccessibilityChecks$1;-><init>()V

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->setResultDescriptor(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;)Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->CHECK_EXECUTOR:Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

    .line 50
    new-instance v0, Landroidx/test/espresso/contrib/AccessibilityChecks$2;

    invoke-direct {v0}, Landroidx/test/espresso/contrib/AccessibilityChecks$2;-><init>()V

    sput-object v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->ACCESSIBILITY_CHECK_ASSERTION:Landroidx/test/espresso/ViewAssertion;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->checksEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 1

    .line 38
    sget-object v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->CHECK_EXECUTOR:Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

    return-object v0
.end method

.method public static accessibilityAssertion()Landroidx/test/espresso/ViewAssertion;
    .locals 1

    .line 100
    sget-object v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->ACCESSIBILITY_CHECK_ASSERTION:Landroidx/test/espresso/ViewAssertion;

    return-object v0
.end method

.method public static enable()Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
    .locals 2

    .line 87
    sget-boolean v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->checksEnabled:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "AccessibilityChecks"

    const-string v1, "Accessibility checks already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->checksEnabled:Z

    .line 91
    const-string v0, "Accessibility Checks"

    sget-object v1, Landroidx/test/espresso/contrib/AccessibilityChecks;->ACCESSIBILITY_CHECK_ASSERTION:Landroidx/test/espresso/ViewAssertion;

    invoke-static {v0, v1}, Landroidx/test/espresso/action/ViewActions;->addGlobalAssertion(Ljava/lang/String;Landroidx/test/espresso/ViewAssertion;)V

    .line 93
    :goto_0
    sget-object v0, Landroidx/test/espresso/contrib/AccessibilityChecks;->CHECK_EXECUTOR:Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;

    return-object v0
.end method

.class public abstract Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;
.super Ljava/lang/Object;
.source "AccessibilityCheckResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;,
        Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    }
.end annotation


# instance fields
.field private final checkClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/CharSequence;

.field private final type:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "type"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 117
    .local p1, "checkClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->checkClass:Ljava/lang/Class;

    .line 119
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->type:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    .line 120
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->message:Ljava/lang/CharSequence;

    .line 121
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->message:Ljava/lang/CharSequence;

    const-string v1, "No message was provided"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSourceCheckClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheck;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->checkClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->type:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->type:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultType;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->checkClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;->message:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AccessibilityCheckResult %s %s \"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

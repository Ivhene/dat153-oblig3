.class public final Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;
.super Lcom/google/android/apps/common/testing/accessibility/framework/integrations/AccessibilityViewCheckException;
.source "AccessibilityViewCheckException.java"


# instance fields
.field private final deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

.field private final resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    invoke-direct {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;-><init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;)V
    .locals 2
    .param p2, "deprecatedResultDescriptor"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;-><init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;)V
    .locals 2
    .param p2, "resultDescriptor"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;",
            ")V"
        }
    .end annotation

    .line 54
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;-><init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;)V
    .locals 4
    .param p2, "resultDescriptor"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;
    .param p3, "deprecatedResultDescriptor"    # Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;",
            ")V"
        }
    .end annotation

    .line 75
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/AccessibilityViewCheckException;-><init>(Ljava/util/List;)V

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 76
    :goto_0
    const-string v3, "AccessibilityViewCheckException requires at least 1 AccessibilityViewCheckResult"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 79
    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;->resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    .line 81
    iput-object p3, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    .line 82
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;->getResults()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v1, "exceptionMessage":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 92
    const-string v2, "There was 1 accessibility result:\n"

    goto :goto_0

    .line 93
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "There were %d accessibility results:\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 94
    .local v2, "resultCountMessage":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 96
    if-lez v3, :cond_1

    .line 97
    const-string v4, ",\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    .line 100
    .local v4, "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    nop

    .line 101
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;->resultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;

    if-eqz v5, :cond_2

    .line 102
    invoke-virtual {v5, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResultDescriptor;->describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 103
    :cond_2
    iget-object v5, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityViewCheckException;->deprecatedResultDescriptor:Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult$AccessibilityCheckResultDescriptor;->describeResult(Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityCheckResult;)Ljava/lang/String;

    move-result-object v5

    .line 100
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v4    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

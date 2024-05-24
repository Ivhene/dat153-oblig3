.class public abstract Lcom/google/android/apps/common/testing/accessibility/framework/integrations/AccessibilityViewCheckException;
.super Ljava/lang/RuntimeException;
.source "AccessibilityViewCheckException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;>;"
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/AccessibilityViewCheckException;->results:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/AccessibilityViewCheckException;->results:Ljava/util/List;

    return-object v0
.end method

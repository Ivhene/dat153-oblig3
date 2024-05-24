.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$AccessibilityCheckListener;
.super Ljava/lang/Object;
.source "AccessibilityValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityCheckListener"
.end annotation


# virtual methods
.method public abstract onResults(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;",
            ">;)V"
        }
    .end annotation
.end method

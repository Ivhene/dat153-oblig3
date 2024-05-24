.class public final synthetic Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lorg/hamcrest/Matcher;


# direct methods
.method public synthetic constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$$ExternalSyntheticLambda0;->f$0:Lorg/hamcrest/Matcher;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator$$ExternalSyntheticLambda0;->f$0:Lorg/hamcrest/Matcher;

    check-cast p1, Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    invoke-static {v0, p1}, Lcom/google/android/apps/common/testing/accessibility/framework/integrations/espresso/AccessibilityValidator;->lambda$suppressMatchingResults$0(Lorg/hamcrest/Matcher;Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;)Lcom/google/android/apps/common/testing/accessibility/framework/AccessibilityViewCheckResult;

    move-result-object p1

    return-object p1
.end method

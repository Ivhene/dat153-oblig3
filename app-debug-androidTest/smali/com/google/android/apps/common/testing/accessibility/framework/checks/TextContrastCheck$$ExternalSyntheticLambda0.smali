.class public final synthetic Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/checks/TextContrastCheck;->lambda$storeContrastRatios$1(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
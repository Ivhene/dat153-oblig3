.class public final synthetic Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder$$ExternalSyntheticLambda0;
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

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElementAndroid$Builder;->lambda$new$0(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;

    move-result-object p1

    return-object p1
.end method
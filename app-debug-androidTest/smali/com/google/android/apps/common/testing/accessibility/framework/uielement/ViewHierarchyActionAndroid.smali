.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;
.super Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;
.source "ViewHierarchyActionAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "actionId"    # I
    .param p2, "actionLabel"    # Ljava/lang/CharSequence;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;-><init>(ILjava/lang/CharSequence;)V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$1;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;-><init>(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static newBuilder(Landroid/os/Parcel;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method static newBuilder(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;
    .locals 1
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 28
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v0
.end method

.method static newBuilder(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;
    .locals 1
    .param p0, "actionProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 33
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V

    return-object v0
.end method


# virtual methods
.method writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;->getActionId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;->getActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 23
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->writeNullableString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 24
    return-void
.end method

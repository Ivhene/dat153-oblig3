.class Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;
.super Ljava/lang/Object;
.source "ViewHierarchyActionAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final actionId:I

.field private final actionLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionId:I

    .line 58
    invoke-static {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ParcelUtils;->readNullableString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionLabel:Ljava/lang/CharSequence;

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionId:I

    .line 48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionLabel:Ljava/lang/CharSequence;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 1
    .param p1, "actionProto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getActionId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionId:I

    .line 53
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->hasActionLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getActionLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionLabel:Ljava/lang/CharSequence;

    .line 54
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;
    .locals 4

    .line 62
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;

    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionId:I

    iget-object v2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$Builder;->actionLabel:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid;-><init>(ILjava/lang/CharSequence;Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyActionAndroid$1;)V

    return-object v0
.end method

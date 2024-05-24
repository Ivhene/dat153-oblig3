.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;
.super Ljava/lang/Object;
.source "ViewHierarchyAction.java"


# instance fields
.field private final actionId:I

.field private final actionLabel:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "actionId"    # I
    .param p2, "actionLabel"    # Ljava/lang/CharSequence;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionId:I

    .line 19
    iput-object p2, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionLabel:Ljava/lang/CharSequence;

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;)V
    .locals 1
    .param p1, "proto"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getActionId()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionId:I

    .line 24
    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->hasActionLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->getActionLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionLabel:Ljava/lang/CharSequence;

    .line 25
    return-void
.end method


# virtual methods
.method getActionId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionId:I

    return v0
.end method

.method getActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method toProto()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;
    .locals 2

    .line 42
    invoke-static {}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;->newBuilder()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    move-result-object v0

    .line 44
    .local v0, "builder":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;
    iget v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionId:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;->setActionId(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/google/android/apps/common/testing/accessibility/framework/replacements/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyAction;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;->setActionLabel(Ljava/lang/String;)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyActionProto;

    return-object v1
.end method

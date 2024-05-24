.class public Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;
.super Ljava/lang/Object;
.source "WindowHierarchyElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)V
    .locals 2
    .param p0, "window"    # Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    .line 353
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->access$000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;->access$000(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;

    .line 355
    .local v1, "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    invoke-virtual {v1, p0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;->setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)V

    .line 356
    .end local v1    # "view":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/ViewHierarchyElement;
    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;

    iget-object v1, p0, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;->proto:Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;

    invoke-direct {v0, v1}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;-><init>(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;)V

    .line 347
    .local v0, "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    invoke-static {v0}, Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement$Builder;->setWindow(Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;)V

    .line 348
    return-object v0

    .line 342
    .end local v0    # "result":Lcom/google/android/apps/common/testing/accessibility/framework/uielement/WindowHierarchyElement;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nothing from which to build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

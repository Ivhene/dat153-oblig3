.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProtoOrBuilder;
.super Ljava/lang/Object;
.source "AccessibilityHierarchyProtos.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowHierarchyElementProtoOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;",
        "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto$Builder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAccessibilityFocused()Z
.end method

.method public abstract getActive()Z
.end method

.method public abstract getBoundsInScreen()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AndroidFrameworkProtos$RectProto;
.end method

.method public abstract getChildIds(I)I
.end method

.method public abstract getChildIdsCount()I
.end method

.method public abstract getChildIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFocused()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getLayer()I
.end method

.method public abstract getParentId()I
.end method

.method public abstract getType()I
.end method

.method public abstract getViews(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;
.end method

.method public abstract getViewsCount()I
.end method

.method public abstract getViewsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewHierarchyElementProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWindowId()I
.end method

.method public abstract hasAccessibilityFocused()Z
.end method

.method public abstract hasActive()Z
.end method

.method public abstract hasBoundsInScreen()Z
.end method

.method public abstract hasFocused()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasLayer()Z
.end method

.method public abstract hasParentId()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasWindowId()Z
.end method

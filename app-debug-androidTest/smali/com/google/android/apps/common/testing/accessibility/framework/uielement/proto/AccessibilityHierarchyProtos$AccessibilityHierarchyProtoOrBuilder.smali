.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$AccessibilityHierarchyProtoOrBuilder;
.super Ljava/lang/Object;
.source "AccessibilityHierarchyProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessibilityHierarchyProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getActiveWindowId()I
.end method

.method public abstract getDeviceState()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$DeviceStateProto;
.end method

.method public abstract getViewElementClassNames()Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProto;
.end method

.method public abstract getWindows(I)Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;
.end method

.method public abstract getWindowsCount()I
.end method

.method public abstract getWindowsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$WindowHierarchyElementProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasActiveWindowId()Z
.end method

.method public abstract hasDeviceState()Z
.end method

.method public abstract hasViewElementClassNames()Z
.end method

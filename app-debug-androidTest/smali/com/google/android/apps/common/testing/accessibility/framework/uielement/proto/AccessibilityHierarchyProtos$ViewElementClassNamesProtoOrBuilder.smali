.class public interface abstract Lcom/google/android/apps/common/testing/accessibility/framework/uielement/proto/AccessibilityHierarchyProtos$ViewElementClassNamesProtoOrBuilder;
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
    name = "ViewElementClassNamesProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract containsClassName(Ljava/lang/String;)Z
.end method

.method public abstract getClassName()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getClassNameCount()I
.end method

.method public abstract getClassNameMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassNameOrDefault(Ljava/lang/String;I)I
.end method

.method public abstract getClassNameOrThrow(Ljava/lang/String;)I
.end method

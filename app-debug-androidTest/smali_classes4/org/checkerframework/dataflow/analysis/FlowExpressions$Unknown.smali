.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unknown"
.end annotation


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .locals 0
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 692
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 693
    return-void
.end method


# virtual methods
.method public containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p2, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/Store<",
            "*>;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ")Z"
        }
    .end annotation

    .line 712
    .local p1, "store":Lorg/checkerframework/dataflow/analysis/Store;, "Lorg/checkerframework/dataflow/analysis/Store<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public containsOfClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)Z"
        }
    .end annotation

    .line 717
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 697
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 702
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 707
    const-string v0, "?"

    return-object v0
.end method

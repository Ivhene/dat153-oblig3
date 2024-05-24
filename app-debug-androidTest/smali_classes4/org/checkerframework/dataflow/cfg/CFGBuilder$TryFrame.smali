.class public interface abstract Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TryFrame"
.end annotation


# virtual methods
.method public abstract possibleLabels(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;)Z"
        }
    .end annotation
.end method

.class interface abstract Lorg/checkerframework/dataflow/cfg/CFGBuilder$TreeInfo;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "TreeInfo"
.end annotation


# virtual methods
.method public abstract isBoolean()Z
.end method

.method public abstract isBoxed()Z
.end method

.method public abstract isNumeric()Z
.end method

.method public abstract unboxedType()Ljavax/lang/model/type/TypeMirror;
.end method

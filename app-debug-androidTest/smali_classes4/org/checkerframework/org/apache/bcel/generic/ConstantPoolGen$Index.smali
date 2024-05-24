.class Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;
.super Ljava/lang/Object;
.source "ConstantPoolGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Index"
.end annotation


# instance fields
.field final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen$Index;->index:I

    .line 92
    return-void
.end method

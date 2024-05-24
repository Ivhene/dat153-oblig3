.class public Lorg/checkerframework/org/apache/bcel/generic/ILOAD;
.super Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;
.source "ILOAD.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 33
    const/16 v0, 0x15

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;-><init>(SS)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "n"    # I

    .line 41
    const/16 v0, 0x15

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1, p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;-><init>(SSI)V

    .line 42
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 55
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/LoadInstruction;->accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V

    .line 56
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitILOAD(Lorg/checkerframework/org/apache/bcel/generic/ILOAD;)V

    .line 57
    return-void
.end method

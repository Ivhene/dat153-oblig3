.class public Lorg/checkerframework/org/apache/bcel/generic/IMPDEP1;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "IMPDEP1.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    const/16 v0, 0xfe

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 29
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 42
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitIMPDEP1(Lorg/checkerframework/org/apache/bcel/generic/IMPDEP1;)V

    .line 43
    return-void
.end method

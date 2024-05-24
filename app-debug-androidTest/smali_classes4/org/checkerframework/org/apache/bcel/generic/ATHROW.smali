.class public Lorg/checkerframework/org/apache/bcel/generic/ATHROW;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "ATHROW.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/UnconditionalBranch;
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    const/16 v0, 0xbf

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 35
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 58
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitUnconditionalBranch(Lorg/checkerframework/org/apache/bcel/generic/UnconditionalBranch;)V

    .line 59
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 60
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitATHROW(Lorg/checkerframework/org/apache/bcel/generic/ATHROW;)V

    .line 61
    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->THROWABLE:Ljava/lang/Class;

    aput-object v2, v0, v1

    return-object v0
.end method

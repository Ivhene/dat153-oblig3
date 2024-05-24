.class public Lorg/checkerframework/org/apache/bcel/generic/MONITORENTER;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "MONITORENTER.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    const/16 v0, 0xc2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 53
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 54
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 55
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitMONITORENTER(Lorg/checkerframework/org/apache/bcel/generic/MONITORENTER;)V

    .line 56
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

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->NULL_POINTER_EXCEPTION:Ljava/lang/Class;

    aput-object v2, v0, v1

    return-object v0
.end method

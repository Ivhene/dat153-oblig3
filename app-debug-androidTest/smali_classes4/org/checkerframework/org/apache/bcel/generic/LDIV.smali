.class public Lorg/checkerframework/org/apache/bcel/generic/LDIV;
.super Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;
.source "LDIV.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;-><init>(S)V

    .line 33
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 54
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 55
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 56
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 57
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 58
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitArithmeticInstruction(Lorg/checkerframework/org/apache/bcel/generic/ArithmeticInstruction;)V

    .line 59
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLDIV(Lorg/checkerframework/org/apache/bcel/generic/LDIV;)V

    .line 60
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

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->ARITHMETIC_EXCEPTION:Ljava/lang/Class;

    aput-object v2, v0, v1

    return-object v0
.end method

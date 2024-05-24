.class public Lorg/checkerframework/org/apache/bcel/generic/ARRAYLENGTH;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "ARRAYLENGTH.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    const/16 v0, 0xbe

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 34
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 57
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 58
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 59
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitARRAYLENGTH(Lorg/checkerframework/org/apache/bcel/generic/ARRAYLENGTH;)V

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

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->NULL_POINTER_EXCEPTION:Ljava/lang/Class;

    aput-object v2, v0, v1

    return-object v0
.end method

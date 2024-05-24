.class public Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;
.super Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
.source "INSTANCEOF.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/LoadClass;
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .line 40
    const/16 v0, 0xc1

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>(SI)V

    .line 41
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 70
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLoadClass(Lorg/checkerframework/org/apache/bcel/generic/LoadClass;)V

    .line 71
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 72
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 73
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 74
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 75
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitCPInstruction(Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;)V

    .line 76
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitINSTANCEOF(Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;)V

    .line 77
    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_CLASS_AND_INTERFACE_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->createExceptions(Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getLoadClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 2
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 52
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 53
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v1, :cond_0

    .line 54
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 56
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.class public Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;
.super Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;
.source "GETSTATIC.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .line 42
    const/16 v0, 0xb2

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;-><init>(SI)V

    .line 43
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 69
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 70
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitPushInstruction(Lorg/checkerframework/org/apache/bcel/generic/PushInstruction;)V

    .line 71
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 72
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 73
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLoadClass(Lorg/checkerframework/org/apache/bcel/generic/LoadClass;)V

    .line 74
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitCPInstruction(Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;)V

    .line 75
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitFieldOrMethod(Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;)V

    .line 76
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitFieldInstruction(Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;)V

    .line 77
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitGETSTATIC(Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;)V

    .line 78
    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_FIELD_AND_METHOD_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->INCOMPATIBLE_CLASS_CHANGE_ERROR:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->createExceptions(Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public produceStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 48
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;->getFieldSize(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I

    move-result v0

    return v0
.end method

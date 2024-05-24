.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# instance fields
.field private final catchtype:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

.field private final handlerpc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 0
    .param p1, "catch_type"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .param p2, "handler_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->catchtype:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 41
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->handlerpc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 42
    return-void
.end method


# virtual methods
.method public getExceptionType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->catchtype:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v0
.end method

.method public getHandlerStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;->handlerpc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

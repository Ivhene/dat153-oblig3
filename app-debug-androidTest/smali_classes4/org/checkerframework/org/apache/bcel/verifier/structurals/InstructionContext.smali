.class public interface abstract Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
.super Ljava/lang/Object;
.source "InstructionContext.java"


# annotations
.annotation runtime Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;
.end annotation


# virtual methods
.method public abstract execute(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;Ljava/util/ArrayList;Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstConstraintVisitor;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExecutionVisitor;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
.end method

.method public abstract getInFrame()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
.end method

.method public abstract getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
.end method

.method public abstract getOutFrame(Ljava/util/ArrayList;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;)",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Frame;"
        }
    .end annotation
.end method

.method public abstract getSuccessors()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
.end method

.method public abstract getTag()I
.end method

.method public abstract setTag(I)V
.end method

.class public interface abstract Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
.super Ljava/lang/Object;
.source "Subroutine.java"


# annotations
.annotation runtime Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;
.end annotation


# virtual methods
.method public abstract contains(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
.end method

.method public abstract getAccessedLocalsIndices()[I
.end method

.method public abstract getEnteringJsrInstructions()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
.end method

.method public abstract getInstructions()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
.end method

.method public abstract getLeavingRET()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
.end method

.method public abstract getRecursivelyAccessedLocalsIndices()[I
.end method

.method public abstract subSubs()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
.end method

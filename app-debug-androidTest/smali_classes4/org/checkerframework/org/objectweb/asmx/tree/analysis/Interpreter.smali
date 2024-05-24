.class public interface abstract Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;
.super Ljava/lang/Object;
.source "Interpreter.java"


# virtual methods
.method public abstract binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
.end method

.method public abstract naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract newOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
.end method

.method public abstract ternaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

.method public abstract unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation
.end method

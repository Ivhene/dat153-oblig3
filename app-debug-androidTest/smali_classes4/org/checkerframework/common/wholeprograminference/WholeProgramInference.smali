.class public interface abstract Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;
.super Ljava/lang/Object;
.source "WholeProgramInference.java"


# virtual methods
.method public abstract saveResults()V
.end method

.method public abstract updateFromFieldAssignment(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
.end method

.method public abstract updateFromLocalAssignment(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ClassTree;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
.end method

.method public abstract updateFromMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
.end method

.method public abstract updateFromObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
.end method

.method public abstract updateFromOverride(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
.end method

.method public abstract updateFromReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
.end method

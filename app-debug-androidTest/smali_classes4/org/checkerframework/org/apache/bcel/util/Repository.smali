.class public interface abstract Lorg/checkerframework/org/apache/bcel/util/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
.end method

.method public abstract getClassPath()Lorg/checkerframework/org/apache/bcel/util/ClassPath;
.end method

.method public abstract loadClass(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract removeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
.end method

.method public abstract storeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
.end method

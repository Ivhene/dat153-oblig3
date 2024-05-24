.class public Lorg/checkerframework/org/apache/bcel/util/ClassVector;
.super Ljava/lang/Object;
.source "ClassVector.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4db89b77d89cd006L


# instance fields
.field protected vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassVector;->vec:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addElement(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 1
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 42
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassVector;->vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public elementAt(I)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .param p1, "index"    # I

    .line 47
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassVector;->vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v0
.end method

.method public removeElementAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 52
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassVector;->vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public toArray()[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassVector;->vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 58
    .local v0, "classes":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassVector;->vec:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    return-object v0
.end method

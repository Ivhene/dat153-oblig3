.class final Lorg/checkerframework/org/apache/bcel/classfile/JavaClass$1;
.super Ljava/lang/Object;
.source "JavaClass.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 84
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 85
    .local v0, "THIS":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    move-object v1, p2

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 86
    .local v1, "THAT":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 93
    .local v0, "THIS":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method
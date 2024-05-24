.class Lorg/checkerframework/org/apache/bcel/generic/MethodGen$2;
.super Ljava/lang/Object;
.source "MethodGen.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getLocalVariables()[Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 371
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$2;->this$0:Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 371
    check-cast p1, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    check-cast p2, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen$2;->compare(Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;)I
    .locals 2
    .param p1, "o1"    # Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    .param p2, "o2"    # Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 374
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

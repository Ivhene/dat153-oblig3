.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;
.super Ljava/lang/Object;
.source "CFGBuilder.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TryCatchFrame"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected catchLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/type/TypeMirror;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;>;"
        }
    .end annotation
.end field

.field protected types:Ljavax/lang/model/util/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 537
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/util/Types;Ljava/util/List;)V
    .locals 0
    .param p1, "types"    # Ljavax/lang/model/util/Types;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/type/TypeMirror;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;>;)V"
        }
    .end annotation

    .line 543
    .local p2, "catchLabels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->types:Ljavax/lang/model/util/Types;

    .line 545
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->catchLabels:Ljava/util/List;

    .line 546
    return-void
.end method


# virtual methods
.method public possibleLabels(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .locals 11
    .param p1, "thrown"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;)Z"
        }
    .end annotation

    .line 591
    .local p2, "labels":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    nop

    :goto_0
    instance-of v0, p1, Ljavax/lang/model/type/DeclaredType;

    if-nez v0, :cond_1

    .line 592
    instance-of v0, p1, Ljavax/lang/model/type/TypeVariable;

    if-eqz v0, :cond_0

    .line 594
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    goto :goto_0

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "thrown type must be a variable or a declared type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 596
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 597
    .local v0, "declaredThrown":Ljavax/lang/model/type/DeclaredType;
    if-eqz p1, :cond_c

    .line 599
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->catchLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/javacutil/Pair;

    .line 600
    .local v2, "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    .line 601
    .local v3, "caught":Ljavax/lang/model/type/TypeMirror;
    const/4 v4, 0x0

    .line 603
    .local v4, "canApply":Z
    instance-of v5, v3, Ljavax/lang/model/type/DeclaredType;

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 604
    move-object v5, v3

    check-cast v5, Ljavax/lang/model/type/DeclaredType;

    .line 605
    .local v5, "declaredCaught":Ljavax/lang/model/type/DeclaredType;
    iget-object v7, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v7, v0, v5}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 607
    iget-object v1, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    return v6

    .line 609
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v6, v5, v0}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 610
    const/4 v4, 0x1

    .line 612
    .end local v5    # "declaredCaught":Ljavax/lang/model/type/DeclaredType;
    :cond_3
    goto :goto_3

    .line 613
    :cond_4
    instance-of v5, v3, Ljavax/lang/model/type/UnionType;

    if-eqz v5, :cond_a

    .line 615
    move-object v5, v3

    check-cast v5, Ljavax/lang/model/type/UnionType;

    .line 616
    .local v5, "caughtUnion":Ljavax/lang/model/type/UnionType;
    invoke-interface {v5}, Ljavax/lang/model/type/UnionType;->getAlternatives()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/type/TypeMirror;

    .line 617
    .local v8, "alternative":Ljavax/lang/model/type/TypeMirror;
    instance-of v9, v8, Ljavax/lang/model/type/DeclaredType;

    if-eqz v9, :cond_7

    .line 619
    move-object v9, v8

    check-cast v9, Ljavax/lang/model/type/DeclaredType;

    .line 620
    .local v9, "declaredAlt":Ljavax/lang/model/type/DeclaredType;
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v10, v0, v9}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 622
    iget-object v1, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    return v6

    .line 624
    :cond_5
    iget-object v10, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->types:Ljavax/lang/model/util/Types;

    invoke-interface {v10, v9, v0}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 625
    const/4 v4, 0x1

    .line 627
    .end local v8    # "alternative":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "declaredAlt":Ljavax/lang/model/type/DeclaredType;
    :cond_6
    goto :goto_2

    .line 617
    .restart local v8    # "alternative":Ljavax/lang/model/type/TypeMirror;
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    const-string v6, "alternatives of an caught union type must be declared types"

    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 630
    .end local v5    # "caughtUnion":Ljavax/lang/model/type/UnionType;
    .end local v8    # "alternative":Ljavax/lang/model/type/TypeMirror;
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 631
    iget-object v5, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v2    # "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v3    # "caught":Ljavax/lang/model/type/TypeMirror;
    .end local v4    # "canApply":Z
    :cond_9
    goto/16 :goto_1

    .line 613
    .restart local v2    # "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .restart local v3    # "caught":Ljavax/lang/model/type/TypeMirror;
    .restart local v4    # "canApply":Z
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    const-string v5, "caught type must be a union or a declared type"

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 635
    .end local v2    # "pair":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    .end local v3    # "caught":Ljavax/lang/model/type/TypeMirror;
    .end local v4    # "canApply":Z
    :cond_b
    const/4 v1, 0x0

    return v1

    .line 597
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "thrown type must be bounded by a declared type"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->catchLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const-string v1, "TryCatchFrame: no catch labels.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 554
    :cond_0
    const-string v1, "TryCatchFrame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryCatchFrame;->catchLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/javacutil/Pair;

    .line 557
    .local v2, "ptml":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    .end local v2    # "ptml":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;"
    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

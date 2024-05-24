.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassName"
.end annotation


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 641
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 642
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;->typeString:Ljava/lang/String;

    .line 643
    return-void
.end method


# virtual methods
.method public containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p2, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/Store<",
            "*>;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ")Z"
        }
    .end annotation

    .line 686
    .local p1, "store":Lorg/checkerframework/dataflow/analysis/Store;, "Lorg/checkerframework/dataflow/analysis/Store<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsOfClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)Z"
        }
    .end annotation

    .line 666
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 647
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-nez v0, :cond_0

    .line 648
    const/4 v0, 0x0

    return v0

    .line 650
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    .line 651
    .local v0, "other":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;->typeString:Ljava/lang/String;

    iget-object v2, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 656
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;->typeString:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 681
    const/4 v0, 0x1

    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 671
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

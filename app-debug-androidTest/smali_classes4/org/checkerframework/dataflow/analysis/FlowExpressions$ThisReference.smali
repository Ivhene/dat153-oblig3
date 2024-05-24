.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThisReference"
.end annotation


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;)V
    .locals 0
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 589
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 590
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

    .line 629
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

    .line 609
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
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 594
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 624
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isImmutableTypeInJdk(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 614
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 604
    const-string v0, "this"

    return-object v0
.end method

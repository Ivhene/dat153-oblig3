.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldAccess"
.end annotation


# instance fields
.field protected final field:Ljavax/lang/model/element/VariableElement;

.field protected final receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/VariableElement;)V
    .locals 0
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p3, "fieldElement"    # Ljavax/lang/model/element/VariableElement;

    .line 512
    invoke-direct {p0, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 513
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 514
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->field:Ljavax/lang/model/element/VariableElement;

    .line 515
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)V
    .locals 1
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 506
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 507
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 508
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getElement()Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->field:Ljavax/lang/model/element/VariableElement;

    .line 509
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

    .line 541
    .local p1, "store":Lorg/checkerframework/dataflow/analysis/Store;, "Lorg/checkerframework/dataflow/analysis/Store<*>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 542
    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 541
    :goto_1
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

    .line 572
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsOfClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 547
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 527
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 528
    return v1

    .line 530
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 531
    .local v0, "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getField()Ljavax/lang/model/element/VariableElement;
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->field:Ljavax/lang/model/element/VariableElement;

    return-object v0
.end method

.method public getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 536
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->field:Ljavax/lang/model/element/VariableElement;

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isFinal(Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->field:Ljavax/lang/model/element/VariableElement;

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 577
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->isUnassignableByOtherCode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 582
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isUnassignableByOtherCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isImmutableTypeInJdk(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 582
    :goto_0
    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 4
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 552
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 553
    return v1

    .line 555
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 556
    .local v0, "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-super {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 557
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 556
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 563
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    instance-of v0, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    const-string v1, "."

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->field:Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->field:Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

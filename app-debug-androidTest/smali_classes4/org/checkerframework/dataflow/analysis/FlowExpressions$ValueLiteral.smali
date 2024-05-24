.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueLiteral"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 811
    const-class v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions;

    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "value"    # Ljava/lang/Object;

    .line 834
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 835
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    .line 836
    return-void
.end method

.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;

    .line 823
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 824
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    .line 825
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

    .line 888
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

    .line 840
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
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 855
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 856
    return v1

    .line 858
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    .line 861
    .local v0, "other":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    .line 862
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 861
    :goto_0
    return v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 893
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 878
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 845
    const/4 v0, 0x1

    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 850
    const/4 v0, 0x1

    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 883
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 867
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_2

    .line 870
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 870
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 873
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    const-string v0, "null"

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

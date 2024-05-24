.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVariable"
.end annotation


# instance fields
.field protected final element:Ljavax/lang/model/element/Element;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/Element;)V
    .locals 1
    .param p1, "elem"    # Ljavax/lang/model/element/Element;

    .line 740
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 741
    iput-object p1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    .line 742
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;)V
    .locals 1
    .param p1, "localVar"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 735
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 736
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    .line 737
    return-void
.end method


# virtual methods
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

    .line 782
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

.method public containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 796
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 746
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 747
    return v1

    .line 750
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 751
    .local v0, "other":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 752
    .local v2, "vs":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    check-cast v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 757
    .local v3, "vsother":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    iget v4, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    iget v5, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->pos:I

    if-ne v4, v5, :cond_1

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v5, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 758
    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/util/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 759
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 757
    :goto_0
    return v1
.end method

.method public getElement()Ljavax/lang/model/element/Element;
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 768
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 769
    .local v0, "vs":Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 770
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 771
    invoke-static {v2}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 772
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 769
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public isUnassignableByOtherCode()Z
    .locals 1

    .line 801
    const/4 v0, 0x1

    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 806
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isImmutableTypeInJdk(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 787
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x0

    return v0

    .line 790
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 791
    .local v0, "l":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    invoke-virtual {v0, p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->element:Ljavax/lang/model/element/Element;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
.super Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodCall"
.end annotation


# instance fields
.field protected final method:Ljavax/lang/model/element/ExecutableElement;

.field protected final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field protected final receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;)V
    .locals 0
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)V"
        }
    .end annotation

    .line 909
    .local p4, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 910
    iput-object p3, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 911
    iput-object p4, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    .line 912
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 913
    return-void
.end method


# virtual methods
.method public containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 4
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

    .line 1000
    .local p1, "store":Lorg/checkerframework/dataflow/analysis/Store;, "Lorg/checkerframework/dataflow/analysis/Store<*>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1001
    return v1

    .line 1003
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1004
    .local v2, "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v2, p1, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1005
    return v1

    .line 1007
    .end local v2    # "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    goto :goto_0

    .line 1008
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public containsOfClass(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;)Z"
        }
    .end annotation

    .line 917
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 918
    return v1

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsOfClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    return v1

    .line 923
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 924
    .local v2, "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v2, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsOfClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 925
    return v1

    .line 927
    .end local v2    # "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    goto :goto_0

    .line 928
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public containsSyntacticEqualParameter(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;)Z
    .locals 3
    .param p1, "var"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 990
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 991
    .local v1, "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v1, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    const/4 v0, 0x1

    return v0

    .line 994
    .end local v1    # "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    goto :goto_0

    .line 995
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 964
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

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
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1013
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1014
    return v1

    .line 1016
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 1017
    if-ne p0, p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 1019
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 1020
    .local v0, "other":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    iget-object v4, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v4, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1021
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    iget-object v4, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 1022
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    nop

    .line 1020
    :goto_0
    return v1
.end method

.method public getElement()Ljavax/lang/model/element/ExecutableElement;
    .locals 1

    .line 946
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1027
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    .line 1028
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 1030
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUnassignableByOtherCode()Z
    .locals 2

    .line 953
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->isUnmodifiableByOtherCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    .line 954
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 953
    :goto_0
    return v0
.end method

.method public isUnmodifiableByOtherCode()Z
    .locals 1

    .line 959
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->isUnassignableByOtherCode()Z

    move-result v0

    return v0
.end method

.method public syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 6
    .param p1, "other"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 969
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 970
    return v1

    .line 972
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 973
    .local v0, "otherMethod":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 974
    return v1

    .line 976
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 977
    return v1

    .line 979
    :cond_2
    const/4 v2, 0x0

    .line 980
    .local v2, "i":I
    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 981
    .local v4, "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v5, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    invoke-virtual {v4, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->syntacticEquals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 982
    return v1

    .line 984
    :cond_3
    nop

    .end local v4    # "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    add-int/lit8 v2, v2, 0x1

    .line 985
    goto :goto_0

    .line 986
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    iget-object v3, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->receiver:Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    instance-of v2, v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v2, :cond_0

    .line 1037
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1039
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1041
    :goto_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    const/4 v2, 0x1

    .line 1046
    .local v2, "first":Z
    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 1047
    .local v4, "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-nez v2, :cond_1

    .line 1048
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const/4 v2, 0x0

    .line 1052
    .end local v4    # "p":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_1

    .line 1053
    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.class public abstract Lorg/checkerframework/framework/flow/CFAbstractStore;
.super Ljava/lang/Object;
.source "CFAbstractStore.java"

# interfaces
.implements Lorg/checkerframework/dataflow/analysis/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>;S:",
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "TV;TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;"
    }
.end annotation


# instance fields
.field protected final analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;*>;"
        }
    .end annotation
.end field

.field protected arrayValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;",
            "TV;>;"
        }
    .end annotation
.end field

.field protected classValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;",
            "TV;>;"
        }
    .end annotation
.end field

.field protected fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final localVariableValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;",
            "TV;>;"
        }
    .end annotation
.end field

.field protected methodValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final sequentialSemantics:Z

.field protected thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V
    .locals 1
    .param p2, "sequentialSemantics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;*>;Z)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    .line 109
    iput-boolean p2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    .line 110
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "TV;TS;>;)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    .line 116
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    .line 121
    iget-boolean v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    iput-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    .line 122
    return-void
.end method

.method public static canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 1
    .param p0, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 311
    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$updateForMethodCall$0(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 241
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->isUnmodifiableByOtherCode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private upperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;Z)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 8
    .param p2, "shouldWiden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)TS;"
        }
    .end annotation

    .line 845
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-boolean v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    .line 847
    .local v0, "newStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 851
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 852
    .local v3, "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 853
    .local v4, "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_0

    .line 854
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 855
    .local v5, "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-direct {p0, v5, v4, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBoundOfValues(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    .line 857
    .local v6, "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v6, :cond_0

    .line 858
    iget-object v7, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    .end local v3    # "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .end local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_0
    goto :goto_0

    .line 865
    :cond_1
    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 866
    .local v1, "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 867
    .local v2, "myVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, v2, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBoundOfValues(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    .line 868
    .local v3, "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :goto_1
    if-eqz v3, :cond_3

    .line 869
    iput-object v3, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 873
    .end local v1    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v2    # "myVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v3    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_3
    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 877
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 878
    .local v3, "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 879
    .restart local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_4

    .line 880
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 881
    .restart local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-direct {p0, v5, v4, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBoundOfValues(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    .line 882
    .restart local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v6, :cond_4

    .line 883
    iget-object v7, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v3    # "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_4
    goto :goto_2

    .line 887
    :cond_5
    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 891
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 892
    .local v3, "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 893
    .restart local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_6

    .line 894
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 895
    .restart local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-direct {p0, v5, v4, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBoundOfValues(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    .line 896
    .restart local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v6, :cond_6

    .line 897
    iget-object v7, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    .end local v3    # "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .end local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_6
    goto :goto_3

    .line 901
    :cond_7
    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 905
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 906
    .local v3, "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 907
    .restart local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_8

    .line 908
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 909
    .restart local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-direct {p0, v5, v4, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBoundOfValues(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    .line 910
    .restart local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v6, :cond_8

    .line 911
    iget-object v7, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    .end local v3    # "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .end local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_8
    goto :goto_4

    .line 915
    :cond_9
    iget-object v1, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 916
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    .line 917
    .local v3, "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 918
    .restart local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_a

    .line 919
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 920
    .restart local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-direct {p0, v5, v4, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBoundOfValues(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    .line 921
    .restart local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v6, :cond_a

    .line 922
    iget-object v7, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    .end local v3    # "el":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .end local v4    # "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v5    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v6    # "mergedVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_a
    goto :goto_5

    .line 926
    :cond_b
    return-object v0
.end method

.method private upperBoundOfValues(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 1
    .param p3, "shouldWiden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;Z)TV;"
        }
    .end annotation

    .line 930
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local p2, "thisVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->widenUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public canAlias(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z
    .locals 4
    .param p1, "a"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "b"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 793
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 794
    .local v0, "tb":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 795
    .local v1, "ta":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypes()Ljavax/lang/model/util/Types;

    move-result-object v2

    .line 796
    .local v2, "types":Ljavax/lang/model/util/Types;
    invoke-interface {v2, v1, v0}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, v0, v1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method public clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V
    .locals 2
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 473
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v0, :cond_1

    .line 478
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 479
    .local v0, "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v0    # "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    goto :goto_1

    :cond_1
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v0, :cond_2

    .line 481
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 482
    .local v0, "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .end local v0    # "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v0, :cond_3

    .line 484
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 485
    .local v0, "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .end local v0    # "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    goto :goto_1

    :cond_3
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    if-eqz v0, :cond_4

    .line 487
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 488
    .local v0, "a":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "a":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    goto :goto_0

    .line 489
    :cond_4
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v0, :cond_5

    .line 490
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    .line 491
    .local v0, "c":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 489
    .end local v0    # "c":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    :cond_5
    :goto_0
    nop

    .line 495
    :goto_1
    return-void
.end method

.method public bridge synthetic copy()Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1

    .line 57
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->copy()Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 831
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 980
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    instance-of v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 982
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 983
    .local v0, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->supersetOf(Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->supersetOf(Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 985
    .end local v0    # "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    :cond_1
    return v1
.end method

.method public getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 3
    .param p1, "expr"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ")TV;"
        }
    .end annotation

    .line 502
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v0, :cond_0

    .line 503
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 504
    .local v0, "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1

    .line 505
    .end local v0    # "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v0

    .line 507
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v0, :cond_2

    .line 508
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 509
    .local v0, "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1

    .line 510
    .end local v0    # "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_2
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v0, :cond_3

    .line 511
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 512
    .local v0, "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1

    .line 513
    .end local v0    # "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    :cond_3
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    if-eqz v0, :cond_4

    .line 514
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 515
    .local v0, "a":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1

    .line 516
    .end local v0    # "a":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    :cond_4
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v0, :cond_5

    .line 517
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    .line 518
    .local v0, "c":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1

    .line 520
    .end local v0    # "c":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    :cond_5
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected FlowExpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;",
            ")TV;"
        }
    .end annotation

    .line 551
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 552
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfArrayAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    move-result-object v0

    .line 553
    .local v0, "arrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1
.end method

.method public getValue(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;",
            ")TV;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 530
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfFieldAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    move-result-object v0

    .line 531
    .local v0, "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1
.end method

.method public getValue(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            ")TV;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 809
    .local v0, "el":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-direct {v2, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;-><init>(Ljavax/lang/model/element/Element;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1
.end method

.method public getValue(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            ")TV;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 540
    .local v0, "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-nez v0, :cond_0

    .line 541
    const/4 v1, 0x0

    return-object v1

    .line 543
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v1
.end method

.method public getValue(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;",
            ")TV;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 992
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initializeMethodParameter(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 3
    .param p1, "p"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            "TV;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;-><init>(Ljavax/lang/model/element/Element;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    return-void
.end method

.method public initializeThisValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)V
    .locals 1
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;

    .line 140
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 143
    :cond_0
    return-void
.end method

.method public insertOrRefine(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 7
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "newAnno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 284
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-static {p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    .line 288
    .local v0, "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez v0, :cond_1

    .line 289
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 290
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    .line 293
    .local v1, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v1, p2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 294
    .local v2, "top":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, v0, Lorg/checkerframework/framework/flow/CFAbstractValue;->annotations:Ljava/util/Set;

    .line 295
    invoke-virtual {v1, v3, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 296
    .local v3, "oldAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v3, :cond_2

    .line 297
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 298
    return-void

    .line 301
    :cond_2
    invoke-virtual {v1, p2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 302
    .local v4, "glb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    move-object v4, p2

    .line 306
    :cond_3
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 307
    return-void
.end method

.method public insertThisValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)V
    .locals 3
    .param p1, "a"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;

    .line 442
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    if-nez p1, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    .line 448
    .local v0, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 449
    .local v1, "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 450
    .local v2, "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v2, :cond_1

    .line 451
    iput-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 453
    :cond_1
    return-void
.end method

.method public insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V
    .locals 2
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "a"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 264
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 265
    return-void
.end method

.method public insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 5
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "TV;)V"
        }
    .end annotation

    .line 335
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez p2, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    return-void

    .line 344
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 345
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 346
    .local v0, "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 347
    .local v2, "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 348
    .local v1, "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v1, :cond_2

    .line 349
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .end local v0    # "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_2
    goto/16 :goto_1

    :cond_3
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v0, :cond_6

    .line 352
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 355
    .local v0, "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->isMonotonicUpdate(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)Z

    move-result v2

    .line 356
    .local v2, "isMonotonic":Z
    iget-boolean v3, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isUnassignableByOtherCode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 357
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 358
    .local v3, "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v3, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 359
    .restart local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v1, :cond_5

    .line 360
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v0    # "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v2    # "isMonotonic":Z
    .end local v3    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_5
    goto/16 :goto_1

    :cond_6
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v0, :cond_8

    .line 364
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 366
    .local v0, "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-boolean v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-eqz v2, :cond_7

    .line 367
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 368
    .local v2, "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 369
    .restart local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v1, :cond_7

    .line 370
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .end local v0    # "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_7
    goto :goto_1

    :cond_8
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    if-eqz v0, :cond_a

    .line 374
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 375
    .local v0, "arrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-boolean v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-eqz v2, :cond_9

    .line 376
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 377
    .restart local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 378
    .restart local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v1, :cond_9

    .line 379
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v0    # "arrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_9
    goto :goto_1

    :cond_a
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-eqz v0, :cond_c

    .line 383
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    .line 384
    .local v0, "thisRef":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;
    iget-boolean v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;->isUnassignableByOtherCode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 385
    :cond_b
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 386
    .restart local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 387
    .restart local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v1, :cond_e

    .line 388
    iput-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    goto :goto_0

    .line 391
    .end local v0    # "thisRef":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_c
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v0, :cond_e

    .line 392
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    .line 393
    .local v0, "className":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    iget-boolean v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;->isUnassignableByOtherCode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 394
    :cond_d
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 395
    .restart local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 396
    .restart local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v1, :cond_f

    .line 397
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 391
    .end local v0    # "className":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_e
    :goto_0
    nop

    .line 403
    :cond_f
    :goto_1
    return-void
.end method

.method protected internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "TV;TS;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1020
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TV;TS;*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1022
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-interface {p1, v3, v4}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreLocalVar(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    goto :goto_0

    .line 1024
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    if-eqz v1, :cond_1

    .line 1025
    invoke-interface {p1, v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreThisVal(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1028
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-interface {p1, v3, v4}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreFieldVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    goto :goto_1

    .line 1030
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1031
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-interface {p1, v3, v4}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreArrayVal(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    goto :goto_2

    .line 1033
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1034
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-interface {p1, v3, v4}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreMethodVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    goto :goto_3

    .line 1036
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1037
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-interface {p1, v3, v4}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreClassVals(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;Lorg/checkerframework/dataflow/analysis/AbstractValue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    goto :goto_4

    .line 1039
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected isMonotonicUpdate(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)Z
    .locals 10
    .param p1, "fieldAcc"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TV;)Z"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedMonotonicTypeQualifiers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 412
    return v1

    .line 414
    :cond_0
    const/4 v0, 0x0

    .line 419
    .local v0, "isMonotonic":Z
    iget-boolean v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-nez v2, :cond_2

    .line 420
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v2, v2, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 421
    .local v2, "atypeFactory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    nop

    .line 423
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v3

    const-class v4, Lorg/checkerframework/framework/qual/MonotonicQualifier;

    .line 422
    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotationWithMetaAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 424
    .local v3, "fieldAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/javacutil/Pair;

    .line 425
    .local v5, "fieldAnnotation":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v6, v5, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 426
    .local v6, "monotonicAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 427
    const-string v7, "value"

    invoke-static {v6, v7, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v7

    .line 429
    .local v7, "annotation":Ljavax/lang/model/element/Name;
    nop

    .line 430
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 432
    .local v8, "target":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9, v8}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 433
    const/4 v0, 0x1

    .line 434
    goto :goto_1

    .line 436
    .end local v5    # "fieldAnnotation":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "monotonicAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "annotation":Ljavax/lang/model/element/Name;
    .end local v8    # "target":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    goto :goto_0

    .line 438
    .end local v2    # "atypeFactory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .end local v3    # "fieldAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    :cond_2
    :goto_1
    return v0
.end method

.method protected isSideEffectFree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 1
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .line 159
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    invoke-static {p1, p2}, Lorg/checkerframework/dataflow/util/PurityUtils;->isSideEffectFree(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 57
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    check-cast p1, Lorg/checkerframework/framework/flow/CFAbstractStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object p1

    return-object p1
.end method

.method public leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    .line 836
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;Z)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    return-object v0
.end method

.method protected removeConflicting(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 6
    .param p1, "arrayAccess"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;",
            "TV;)V"
        }
    .end annotation

    .line 705
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    .line 706
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 707
    .local v0, "arrayValuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 708
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 709
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 711
    .local v2, "otherArrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    invoke-virtual {v2, p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 713
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canAlias(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 718
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    .end local v2    # "otherArrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    :cond_1
    :goto_1
    goto :goto_0

    .line 721
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    .line 722
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 723
    .local v1, "fieldValuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 725
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 726
    .local v3, "otherFieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 727
    .local v4, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v4, p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-class v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 728
    invoke-virtual {v4, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsOfClass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 730
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 732
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v3    # "otherFieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v4    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_3
    goto :goto_2

    .line 735
    :cond_4
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 736
    return-void
.end method

.method protected removeConflicting(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 6
    .param p1, "fieldAccess"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TV;)V"
        }
    .end annotation

    .line 644
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    .line 645
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 646
    .local v0, "fieldValuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 648
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 649
    .local v2, "otherFieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 651
    .local v3, "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 655
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canAlias(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 657
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isFinal()Z

    move-result v4

    if-nez v4, :cond_2

    .line 658
    if-eqz p2, :cond_1

    .line 659
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/flow/CFAbstractValue;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    .line 660
    .local v4, "newVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-interface {v1, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .end local v4    # "newVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    goto :goto_1

    .line 663
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 668
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v2    # "otherFieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v3    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 670
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    .line 671
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 672
    .local v1, "arrayValuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 673
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 674
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 675
    .local v3, "otherArrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    invoke-virtual {v3, p0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->containsModifiableAliasOf(Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 677
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 679
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    .end local v3    # "otherArrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    :cond_4
    goto :goto_2

    .line 682
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 683
    return-void
.end method

.method protected removeConflicting(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;)V
    .locals 6
    .param p1, "var"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 752
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    .line 753
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 754
    .local v0, "fieldValuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 756
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 758
    .local v2, "otherFieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v2, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 759
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 761
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v2    # "otherFieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_0
    goto :goto_0

    .line 763
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    .line 764
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 765
    .local v1, "arrayValuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 767
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 769
    .local v3, "otherArrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    invoke-virtual {v3, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 770
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 772
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    .end local v3    # "otherArrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    :cond_2
    goto :goto_1

    .line 774
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    .line 775
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 776
    .local v2, "methodValuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 778
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 780
    .local v4, "otherMethodAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    invoke-virtual {v4, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->containsSyntacticEqualReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 781
    invoke-virtual {v4, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;->containsSyntacticEqualParameter(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 782
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 784
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    .end local v4    # "otherMethodAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    :cond_5
    goto :goto_2

    .line 785
    :cond_6
    return-void
.end method

.method public replaceValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 0
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "TV;)V"
        }
    .end annotation

    .line 464
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 465
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 466
    return-void
.end method

.method protected supersetOf(Lorg/checkerframework/framework/flow/CFAbstractStore;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "TV;TS;>;)Z"
        }
    .end annotation

    .line 940
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 941
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 942
    .local v3, "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 943
    .local v4, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/flow/CFAbstractValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 946
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_0
    goto :goto_0

    .line 944
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    .restart local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_1
    :goto_1
    return v2

    .line 947
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_2
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 948
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 949
    .local v3, "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 950
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/flow/CFAbstractValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 953
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_3
    goto :goto_2

    .line 951
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .restart local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_4
    :goto_3
    return v2

    .line 954
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_5
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 955
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 956
    .local v3, "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 957
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/flow/CFAbstractValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    .line 960
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_6
    goto :goto_4

    .line 958
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    .restart local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_7
    :goto_5
    return v2

    .line 961
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_8
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 962
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 963
    .local v3, "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 964
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/flow/CFAbstractValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_7

    .line 967
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_9
    goto :goto_6

    .line 965
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    .restart local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_a
    :goto_7
    return v2

    .line 968
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_b
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 969
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    .line 970
    .local v3, "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 971
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/flow/CFAbstractValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_9

    .line 974
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_c
    goto :goto_8

    .line 972
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    .restart local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .restart local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_d
    :goto_9
    return v2

    .line 975
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;TV;>;"
    .end local v3    # "key":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .end local v4    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 998
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    new-instance v0, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/cfg/StringCFGVisualizer;-><init>()V

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->visualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateForArrayAssignment(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 1
    .param p1, "arrayAccess"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;",
            "TV;)V"
        }
    .end annotation

    .line 597
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->removeConflicting(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 598
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;->containsUnknown()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 601
    iget-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_0
    return-void
.end method

.method public updateForAssignment(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TV;)V"
        }
    .end annotation

    .line 558
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 559
    .local v0, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    if-eqz v1, :cond_0

    .line 560
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->updateForArrayAssignment(Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    goto :goto_0

    .line 561
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v1, :cond_1

    .line 562
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->updateForFieldAccessAssignment(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    goto :goto_0

    .line 563
    :cond_1
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v1, :cond_2

    .line 564
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->updateForLocalVariableAssignment(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected receiver of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected updateForFieldAccessAssignment(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 2
    .param p1, "fieldAccess"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TV;)V"
        }
    .end annotation

    .line 578
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->removeConflicting(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 579
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->containsUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 582
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->isMonotonicUpdate(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;Lorg/checkerframework/framework/flow/CFAbstractValue;)Z

    move-result v0

    .line 583
    .local v0, "isMonotonic":Z
    iget-boolean v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->sequentialSemantics:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isUnassignableByOtherCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .end local v0    # "isMonotonic":Z
    :cond_1
    return-void
.end method

.method protected updateForLocalVariableAssignment(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 1
    .param p1, "receiver"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;",
            "TV;)V"
        }
    .end annotation

    .line 615
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p2, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->removeConflicting(Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;)V

    .line 616
    if-eqz p2, :cond_0

    .line 617
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_0
    return-void
.end method

.method public updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 16
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "TV;)V"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p3, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 188
    .local v2, "method":Ljavax/lang/model/element/ExecutableElement;
    iget-object v3, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v3, v3, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    const-string v4, "assumeSideEffectFree"

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v3, v3, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    .line 189
    const-string v4, "assumePure"

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 190
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->isSideEffectFree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v3, "newFieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    iget-object v4, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 194
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 195
    .local v6, "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 198
    .local v7, "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    move-object v8, v1

    check-cast v8, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 199
    invoke-virtual {v8}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getSupportedMonotonicTypeQualifiers()Ljava/util/Set;

    move-result-object v8

    .line 200
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 201
    nop

    .line 203
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v8

    const-class v9, Lorg/checkerframework/framework/qual/MonotonicQualifier;

    .line 202
    invoke-virtual {v1, v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotationWithMetaAnnotation(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    .line 204
    .local v8, "fieldAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    const/4 v9, 0x0

    .line 206
    .local v9, "newOtherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/javacutil/Pair;

    .line 207
    .local v11, "fieldAnnotation":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v12, v11, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljavax/lang/model/element/AnnotationMirror;

    .line 208
    .local v12, "monotonicAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    nop

    .line 209
    const-string v13, "value"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueClassName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Z)Ljavax/lang/model/element/Name;

    move-result-object v13

    .line 211
    .local v13, "annotation":Ljavax/lang/model/element/Name;
    nop

    .line 213
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v14

    .line 212
    invoke-static {v14, v13}, Lorg/checkerframework/javacutil/AnnotationBuilder;->fromName(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v14

    .line 215
    .local v14, "target":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v15

    invoke-static {v15, v14}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 216
    iget-object v15, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 218
    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 217
    invoke-virtual {v15, v14, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 219
    const/4 v15, 0x0

    invoke-virtual {v1, v9, v15}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    move-object v9, v1

    .line 221
    .end local v11    # "fieldAnnotation":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v12    # "monotonicAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v13    # "annotation":Ljavax/lang/model/element/Name;
    .end local v14    # "target":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    move-object/from16 v1, p2

    goto :goto_1

    .line 222
    :cond_1
    if-eqz v9, :cond_2

    .line 225
    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-object/from16 v1, p2

    goto :goto_0

    .line 231
    .end local v8    # "fieldAnnotations":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;>;"
    .end local v9    # "newOtherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_2
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isUnassignableByOtherCode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 232
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 236
    :cond_3
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v6    # "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v7    # "otherVal":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 238
    :cond_4
    iput-object v3, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    .line 241
    iget-object v1, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v4, Lorg/checkerframework/framework/flow/CFAbstractStore$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/framework/flow/CFAbstractStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 243
    iget-object v1, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 247
    .end local v3    # "newFieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    :cond_5
    iget-object v1, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    move-object/from16 v3, p1

    invoke-static {v1, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 248
    .local v1, "methodCall":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->replaceValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 249
    return-void
.end method

.method public visualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "*TS;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1006
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<*TS;*>;"
    move-object v0, p1

    .line 1007
    .local v0, "castedViz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TV;TS;*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .local v1, "sbVisualize":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreFooter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic widenedUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 57
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    check-cast p1, Lorg/checkerframework/framework/flow/CFAbstractStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->widenedUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object p1

    return-object p1
.end method

.method public widenedUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    .line 841
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    .local p1, "previous":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->upperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;Z)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    return-object v0
.end method

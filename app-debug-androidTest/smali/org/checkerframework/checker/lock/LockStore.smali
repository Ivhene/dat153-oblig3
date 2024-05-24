.class public Lorg/checkerframework/checker/lock/LockStore;
.super Lorg/checkerframework/framework/flow/CFAbstractStore;
.source "LockStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/checker/lock/LockStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

.field protected inConstructorOrInitializer:Z


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/lock/LockAnalysis;Lorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 1
    .param p1, "analysis"    # Lorg/checkerframework/checker/lock/LockAnalysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/lock/LockAnalysis;",
            "Lorg/checkerframework/framework/flow/CFAbstractStore<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/checker/lock/LockStore;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p2, "other":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/checker/lock/LockStore;>;"
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    .line 48
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    iget-boolean v0, v0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    iput-boolean v0, p0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    .line 49
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/checker/lock/LockAnalysis;Z)V
    .locals 1
    .param p1, "analysis"    # Lorg/checkerframework/checker/lock/LockAnalysis;
    .param p2, "sequentialSemantics"    # Z

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    .line 42
    invoke-virtual {p1}, Lorg/checkerframework/checker/lock/LockAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 43
    return-void
.end method

.method private changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;
    .locals 6
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "currentValue"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 120
    if-nez p2, :cond_0

    .line 121
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v0

    .line 122
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    return-object v1

    .line 127
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    .line 128
    .local v0, "hierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 129
    .local v1, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->GUARDEDBYUNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 130
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 131
    .local v2, "gb":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {}, Lorg/checkerframework/javacutil/AnnotationUtils;->createAnnotationSet()Ljava/util/SortedSet;

    move-result-object v3

    .line 132
    .local v3, "newSet":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    if-eqz v2, :cond_1

    .line 134
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    return-object v4
.end method


# virtual methods
.method public bridge synthetic getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFValue;
    .locals 3
    .param p1, "expr"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 146
    iget-boolean v0, p0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    if-eqz v0, :cond_1

    .line 149
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/checker/lock/LockStore;->initializeThisValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)V

    goto :goto_0

    .line 151
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v0, :cond_1

    .line 152
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 153
    .local v0, "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isStatic()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/checker/lock/LockStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 160
    .end local v0    # "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    return-object v0
.end method

.method hasLockHeld(Lorg/checkerframework/framework/flow/CFValue;)Z
    .locals 2
    .param p1, "value"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 216
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method hasLockPossiblyHeld(Lorg/checkerframework/framework/flow/CFValue;)Z
    .locals 2
    .param p1, "value"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 220
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->atypeFactory:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->LOCKPOSSIBLYHELD:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method public insertLockPossiblyHeld(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V
    .locals 4
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v0, :cond_2

    .line 73
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 74
    .local v0, "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 75
    .local v1, "current":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v2

    .line 76
    .local v2, "value":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v2, :cond_1

    .line 77
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v0    # "localVar":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .end local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    :cond_1
    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v0, :cond_4

    .line 80
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 81
    .local v0, "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 82
    .restart local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v2

    .line 83
    .restart local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v2, :cond_3

    .line 84
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v0    # "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    :cond_3
    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v0, :cond_6

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 88
    .local v0, "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 89
    .restart local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v2

    .line 90
    .restart local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v2, :cond_5

    .line 91
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->methodValues:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v0    # "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .end local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    :cond_5
    goto :goto_0

    :cond_6
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    if-eqz v0, :cond_8

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    .line 95
    .local v0, "arrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 96
    .restart local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v2

    .line 97
    .restart local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v2, :cond_7

    .line 98
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v0    # "arrayAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .end local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    :cond_7
    goto :goto_0

    :cond_8
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p0, Lorg/checkerframework/checker/lock/LockStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/lock/LockStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    goto :goto_0

    .line 102
    :cond_9
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v0, :cond_a

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    .line 104
    .local v0, "className":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->classValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 105
    .restart local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, p1, v1}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v2

    .line 106
    .restart local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v2, :cond_a

    .line 107
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->classValues:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v0    # "className":Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;
    .end local v1    # "current":Lorg/checkerframework/framework/flow/CFValue;
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFValue;
    :cond_a
    :goto_0
    return-void
.end method

.method public bridge synthetic insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/lock/LockStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)V

    return-void
.end method

.method public insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)V
    .locals 4
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .param p2, "value"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 225
    if-nez p2, :cond_0

    .line 228
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/lock/LockStore;->hasLockHeld(Lorg/checkerframework/framework/flow/CFValue;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 237
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 238
    .local v0, "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFValue;

    .line 239
    .local v2, "oldValue":Lorg/checkerframework/framework/flow/CFValue;
    invoke-virtual {p2, v2, v1}, Lorg/checkerframework/framework/flow/CFValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 240
    .local v1, "newValue":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v1, :cond_2

    .line 241
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    .end local v0    # "fieldAcc":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFValue;
    .end local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFValue;
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    if-eqz v0, :cond_2

    .line 244
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    .line 245
    .local v0, "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockStore;->methodValues:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFValue;

    .line 246
    .restart local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFValue;
    invoke-virtual {p2, v2, v1}, Lorg/checkerframework/framework/flow/CFValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 247
    .restart local v1    # "newValue":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v1, :cond_3

    .line 248
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->methodValues:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 243
    .end local v0    # "method":Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;
    .end local v1    # "newValue":Lorg/checkerframework/framework/flow/CFValue;
    .end local v2    # "oldValue":Lorg/checkerframework/framework/flow/CFValue;
    :cond_2
    :goto_0
    nop

    .line 253
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 254
    return-void
.end method

.method protected internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/checker/lock/LockStore;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 165
    .local p1, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/checker/lock/LockStore;*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "inConstructorOrInitializer"

    invoke-interface {p1, v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreKeyVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-super {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method protected isSideEffectFree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Z
    .locals 5
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p2, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .line 172
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;

    .line 173
    .local v0, "lockAnnotatedTypeFactory":Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;
    invoke-virtual {v0}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v1

    .line 174
    .local v1, "checker":Lorg/checkerframework/framework/source/SourceChecker;
    const-string v2, "assumeSideEffectFree"

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    const-string v2, "assumePure"

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory;->methodSideEffectAnnotation(Ljavax/lang/model/element/Element;Z)Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;->RELEASESNOLOCKS:Lorg/checkerframework/checker/lock/LockAnnotatedTypeFactory$SideEffectAnnotation;

    if-eq v3, v4, :cond_0

    .line 178
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->isSideEffectFree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 174
    :cond_1
    return v2
.end method

.method public leastUpperBound(Lorg/checkerframework/checker/lock/LockStore;)Lorg/checkerframework/checker/lock/LockStore;
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/checker/lock/LockStore;

    .line 54
    invoke-super {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/lock/LockStore;

    .line 57
    .local v0, "newStore":Lorg/checkerframework/checker/lock/LockStore;
    iget-boolean v1, p0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    .line 60
    return-object v0
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 28
    check-cast p1, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockStore;->leastUpperBound(Lorg/checkerframework/checker/lock/LockStore;)Lorg/checkerframework/checker/lock/LockStore;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 28
    check-cast p1, Lorg/checkerframework/checker/lock/LockStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/lock/LockStore;->leastUpperBound(Lorg/checkerframework/checker/lock/LockStore;)Lorg/checkerframework/checker/lock/LockStore;

    move-result-object p1

    return-object p1
.end method

.method public setInConstructorOrInitializer()V
    .locals 1

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/checker/lock/LockStore;->inConstructorOrInitializer:Z

    .line 141
    return-void
.end method

.method public bridge synthetic updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 0

    .line 28
    check-cast p3, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/checker/lock/LockStore;->updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFValue;)V

    return-void
.end method

.method public updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFValue;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "val"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 184
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractStore;->updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 185
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 186
    .local v0, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-virtual {p0, p2, v0}, Lorg/checkerframework/checker/lock/LockStore;->isSideEffectFree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 193
    .local v2, "field":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v3

    .line 194
    .local v3, "newValue":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v3, :cond_0

    .line 195
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    :cond_0
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v2    # "field":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v3    # "newValue":Lorg/checkerframework/framework/flow/CFValue;
    :goto_1
    goto :goto_0

    .line 202
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/checkerframework/checker/lock/LockStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    .line 203
    .local v2, "var":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    iget-object v3, p0, Lorg/checkerframework/checker/lock/LockStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v3

    .line 204
    .restart local v3    # "newValue":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz v3, :cond_2

    .line 205
    iget-object v4, p0, Lorg/checkerframework/checker/lock/LockStore;->localVariableValues:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v2    # "var":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    .end local v3    # "newValue":Lorg/checkerframework/framework/flow/CFValue;
    :cond_2
    goto :goto_2

    .line 209
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lorg/checkerframework/checker/lock/LockStore;->changeLockAnnoToTop(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFValue;)Lorg/checkerframework/framework/flow/CFValue;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/lock/LockStore;->thisValue:Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 213
    :cond_4
    return-void
.end method

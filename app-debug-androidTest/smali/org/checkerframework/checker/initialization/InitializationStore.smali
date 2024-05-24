.class public Lorg/checkerframework/checker/initialization/InitializationStore;
.super Lorg/checkerframework/framework/flow/CFAbstractStore;
.source "InitializationStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>;S:",
        "Lorg/checkerframework/checker/initialization/InitializationStore<",
        "TV;TS;>;>",
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "TV;TS;>;"
    }
.end annotation


# instance fields
.field protected final initializedFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation
.end field

.field protected final invariantFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/checker/initialization/InitializationStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    .local p1, "other":Lorg/checkerframework/checker/initialization/InitializationStore;, "TS;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 118
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    .line 120
    return-void
.end method

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

    .line 40
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;*>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public addInitializedField(Ljavax/lang/model/element/VariableElement;)V
    .locals 1
    .param p1, "f"    # Ljavax/lang/model/element/VariableElement;

    .line 140
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public addInitializedField(Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;)V
    .locals 4
    .param p1, "field"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 128
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    .line 129
    .local v0, "fieldOnThisReference":Z
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->isStatic()Z

    move-result v1

    .line 130
    .local v1, "staticField":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    return-void
.end method

.method public getAnalysis()Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;*>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    return-object v0
.end method

.method public getFieldValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;",
            "TV;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    return-object v0
.end method

.method public insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 8
    .param p1, "r"    # Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "TV;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    .local p2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez p2, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 60
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;

    .line 61
    .local v0, "atypeFactory":Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;, "Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory<****>;"
    invoke-virtual {v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    .line 62
    .local v1, "qualifierHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v0}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getFieldInvariantAnnotation()Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 65
    .local v2, "invariantAnno":Ljavax/lang/model/element/AnnotationMirror;
    instance-of v3, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v3, :cond_1

    .line 66
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 67
    .local v3, "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    nop

    .line 69
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/checkerframework/checker/initialization/InitializationAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 70
    .local v4, "declaredAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-static {v4, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->containsSame(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 72
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    iget-object v6, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 74
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    .line 72
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v3    # "fieldAccess":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v4    # "declaredAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 82
    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 83
    .local v4, "a":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v1, v4, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    instance-of v5, p1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v5, :cond_3

    .line 85
    move-object v5, p1

    check-cast v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 86
    .local v5, "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    instance-of v6, v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-nez v6, :cond_2

    .line 87
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getReceiver()Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    instance-of v6, v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    if-eqz v6, :cond_3

    .line 88
    :cond_2
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/checkerframework/checker/initialization/InitializationStore;->addInitializedField(Ljavax/lang/model/element/VariableElement;)V

    .line 92
    .end local v4    # "a":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "fa":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_3
    goto :goto_0

    .line 93
    :cond_4
    return-void
.end method

.method protected internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
            "TV;TS;*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    .local p1, "viz":Lorg/checkerframework/dataflow/cfg/CFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<TV;TS;*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->internalVisualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    .line 227
    const-string v2, "initialized fields"

    invoke-interface {p1, v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreKeyVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    .line 228
    const-string v2, "invariant fields"

    invoke-interface {p1, v2, v1}, Lorg/checkerframework/dataflow/cfg/CFGVisualizer;->visualizeStoreKeyVal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    return-object v0
.end method

.method public isFieldInitialized(Ljavax/lang/model/element/Element;)Z
    .locals 1
    .param p1, "f"    # Ljavax/lang/model/element/Element;

    .line 145
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public leastUpperBound(Lorg/checkerframework/checker/initialization/InitializationStore;)Lorg/checkerframework/checker/initialization/InitializationStore;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    .local p1, "other":Lorg/checkerframework/checker/initialization/InitializationStore;, "TS;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "removedFieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 193
    .local v1, "removedOtherFieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 194
    .local v3, "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 195
    .local v4, "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v3    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v4    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    goto :goto_0

    .line 197
    :cond_0
    iget-object v2, p1, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 198
    .restart local v3    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v4, p1, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 199
    .restart local v4    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v3    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v4    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    goto :goto_1

    .line 202
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 205
    .local v2, "result":Lorg/checkerframework/checker/initialization/InitializationStore;, "TS;"
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 206
    iget-object v3, p1, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 209
    iget-object v3, v2, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    iget-object v4, p1, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object v3, v2, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 214
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    iget-object v5, p1, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    iget-object v5, v2, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    :cond_2
    goto :goto_2

    .line 219
    :cond_3
    iget-object v3, v2, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    iget-object v4, v2, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 221
    return-object v2
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 31
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    check-cast p1, Lorg/checkerframework/checker/initialization/InitializationStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationStore;->leastUpperBound(Lorg/checkerframework/checker/initialization/InitializationStore;)Lorg/checkerframework/checker/initialization/InitializationStore;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 0

    .line 31
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    check-cast p1, Lorg/checkerframework/checker/initialization/InitializationStore;

    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationStore;->leastUpperBound(Lorg/checkerframework/checker/initialization/InitializationStore;)Lorg/checkerframework/checker/initialization/InitializationStore;

    move-result-object p1

    return-object p1
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

    .line 150
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    .local p1, "o":Lorg/checkerframework/framework/flow/CFAbstractStore;, "Lorg/checkerframework/framework/flow/CFAbstractStore<TV;TS;>;"
    instance-of v0, p1, Lorg/checkerframework/checker/initialization/InitializationStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 154
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/checker/initialization/InitializationStore;

    .line 155
    .local v0, "other":Lorg/checkerframework/checker/initialization/InitializationStore;, "TS;"
    iget-object v2, v0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 156
    .local v3, "field":Ljavax/lang/model/element/Element;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->initializedFields:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    return v1

    .line 159
    .end local v3    # "field":Ljavax/lang/model/element/Element;
    :cond_1
    goto :goto_0

    .line 161
    :cond_2
    iget-object v2, v0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 162
    .local v3, "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 163
    return v1

    .line 165
    .end local v3    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    :cond_3
    goto :goto_1

    .line 167
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v1, "removedFieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v2, "removedOtherFieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    :try_start_0
    iget-object v3, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 172
    .local v4, "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v5, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 173
    .local v5, "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    nop

    .end local v4    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v5    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    goto :goto_2

    .line 175
    :cond_5
    iget-object v3, v0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 176
    .restart local v4    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v5, v0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 177
    .restart local v5    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    nop

    .end local v4    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .end local v5    # "v":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    goto :goto_3

    .line 180
    :cond_6
    invoke-super {p0, v0}, Lorg/checkerframework/framework/flow/CFAbstractStore;->supersetOf(Lorg/checkerframework/framework/flow/CFAbstractStore;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    iget-object v4, v0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    return v3

    .line 183
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    iget-object v4, v0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    throw v3
.end method

.method public updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 3
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

    .line 105
    .local p0, "this":Lorg/checkerframework/checker/initialization/InitializationStore;, "Lorg/checkerframework/checker/initialization/InitializationStore<TV;TS;>;"
    .local p3, "val":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    .line 106
    .local v1, "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    iget-object v2, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v1    # "invariantField":Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    goto :goto_0

    .line 109
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/framework/flow/CFAbstractStore;->updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 112
    iget-object v0, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->fieldValues:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/checker/initialization/InitializationStore;->invariantFields:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 113
    return-void
.end method

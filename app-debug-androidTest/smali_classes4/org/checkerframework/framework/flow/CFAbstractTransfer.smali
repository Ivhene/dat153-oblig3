.class public abstract Lorg/checkerframework/framework/flow/CFAbstractTransfer;
.super Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;
.source "CFAbstractTransfer.java"

# interfaces
.implements Lorg/checkerframework/dataflow/analysis/TransferFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/checkerframework/framework/flow/CFAbstractValue<",
        "TV;>;S:",
        "Lorg/checkerframework/framework/flow/CFAbstractStore<",
        "TV;TS;>;T:",
        "Lorg/checkerframework/framework/flow/CFAbstractTransfer<",
        "TV;TS;TT;>;>",
        "Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor<",
        "Lorg/checkerframework/dataflow/analysis/TransferResult<",
        "TV;TS;>;",
        "Lorg/checkerframework/dataflow/analysis/TransferInput<",
        "TV;TS;>;>;",
        "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
        "TV;TS;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;"
        }
    .end annotation
.end field

.field private fixedInitialStore:Lorg/checkerframework/framework/flow/CFAbstractStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final infer:Z

.field protected final sequentialSemantics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->fixedInitialStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 113
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 114
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    const-string v1, "concurrentSemantics"

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->sequentialSemantics:Z

    .line 115
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    const-string v1, "infer"

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->infer:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;Z)V
    .locals 2
    .param p2, "forceConcurrentSemantics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "TV;TS;TT;>;Z)V"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->fixedInitialStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 129
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 130
    if-nez p2, :cond_0

    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    .line 131
    const-string v1, "concurrentSemantics"

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->sequentialSemantics:Z

    .line 132
    iget-object v0, p1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    const-string v1, "infer"

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->infer:Z

    .line 133
    return-void
.end method

.method private addFieldValues(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;Lcom/sun/source/tree/MethodTree;)V
    .locals 17
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "classTree"    # Lcom/sun/source/tree/ClassTree;
    .param p4, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lcom/sun/source/tree/ClassTree;",
            "Lcom/sun/source/tree/MethodTree;",
            ")V"
        }
    .end annotation

    .line 381
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p3 .. p3}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 382
    .local v2, "classType":Ljavax/lang/model/type/TypeMirror;
    iget-object v3, v0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getFieldValues()Ljava/util/List;

    move-result-object v3

    .line 383
    .local v3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/javacutil/Pair;

    .line 384
    .local v5, "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;"
    iget-object v6, v5, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    .line 385
    .local v6, "element":Ljavax/lang/model/element/VariableElement;
    iget-object v7, v5, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 386
    .local v7, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-static {v6}, Lorg/checkerframework/javacutil/ElementUtils;->isFinal(Ljavax/lang/model/element/Element;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static/range {p4 .. p4}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 388
    :cond_0
    invoke-static {v6}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 389
    new-instance v8, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v8, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .local v8, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_1

    .line 391
    .end local v8    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    new-instance v8, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-direct {v8, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 393
    .restart local v8    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_1
    invoke-static {v6}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v9

    .line 394
    .local v9, "fieldType":Ljavax/lang/model/type/TypeMirror;
    new-instance v10, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-direct {v10, v8, v9, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/VariableElement;)V

    .line 395
    .local v10, "field":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v1, v10, v7}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 397
    .end local v5    # "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;"
    .end local v6    # "element":Ljavax/lang/model/element/VariableElement;
    .end local v7    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v8    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v9    # "fieldType":Ljavax/lang/model/type/TypeMirror;
    .end local v10    # "field":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    goto :goto_0

    .line 400
    :cond_3
    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->isNotFullyInitializedReceiver(Lcom/sun/source/tree/MethodTree;)Z

    move-result v5

    .line 401
    .local v5, "isNotFullyInitializedReceiver":Z
    if-eqz v5, :cond_4

    invoke-static/range {p4 .. p4}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 404
    return-void

    .line 406
    :cond_4
    invoke-interface/range {p3 .. p3}, Lcom/sun/source/tree/ClassTree;->getMembers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    .line 407
    .local v7, "member":Lcom/sun/source/tree/Tree;
    instance-of v8, v7, Lcom/sun/source/tree/VariableTree;

    if-eqz v8, :cond_b

    .line 408
    move-object v8, v7

    check-cast v8, Lcom/sun/source/tree/VariableTree;

    .line 409
    .local v8, "vt":Lcom/sun/source/tree/VariableTree;
    invoke-static {v8}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v9

    .line 410
    .local v9, "element":Ljavax/lang/model/element/VariableElement;
    move-object/from16 v10, p2

    check-cast v10, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 411
    invoke-virtual {v10, v8}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    .line 412
    .local v10, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v9}, Lorg/checkerframework/javacutil/ElementUtils;->getType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v11

    .line 414
    .local v11, "fieldType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v9}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 415
    new-instance v12, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v12, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .local v12, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_3

    .line 417
    .end local v12    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_5
    new-instance v12, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-direct {v12, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 419
    .restart local v12    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_3
    iget-object v13, v0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v13, v10}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v13

    .line 420
    .local v13, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez v13, :cond_6

    .line 421
    goto :goto_2

    .line 423
    :cond_6
    invoke-static/range {p4 .. p4}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 428
    const/4 v14, 0x0

    .line 429
    .local v14, "found":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lorg/checkerframework/javacutil/Pair;

    .line 430
    .local v0, "fieldValue":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;"
    move-object/from16 v16, v2

    .end local v2    # "classType":Ljavax/lang/model/type/TypeMirror;
    .local v16, "classType":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 431
    iget-object v2, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-virtual {v13, v2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 432
    .end local v13    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local v2, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v14, 0x1

    .line 433
    move-object v13, v2

    goto :goto_5

    .line 435
    .end local v0    # "fieldValue":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;TV;>;"
    .end local v2    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .restart local v13    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_4

    .line 429
    .end local v16    # "classType":Ljavax/lang/model/type/TypeMirror;
    .local v2, "classType":Ljavax/lang/model/type/TypeMirror;
    :cond_8
    move-object/from16 v16, v2

    .line 436
    .end local v2    # "classType":Ljavax/lang/model/type/TypeMirror;
    .restart local v16    # "classType":Ljavax/lang/model/type/TypeMirror;
    :goto_5
    if-nez v14, :cond_a

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto :goto_2

    .line 423
    .end local v14    # "found":Z
    .end local v16    # "classType":Ljavax/lang/model/type/TypeMirror;
    .restart local v2    # "classType":Ljavax/lang/model/type/TypeMirror;
    :cond_9
    move-object/from16 v16, v2

    .line 441
    .end local v2    # "classType":Ljavax/lang/model/type/TypeMirror;
    .restart local v16    # "classType":Ljavax/lang/model/type/TypeMirror;
    :cond_a
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-direct {v0, v12, v11, v9}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/VariableElement;)V

    .line 442
    .local v0, "field":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {v1, v0, v13}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    goto :goto_6

    .line 407
    .end local v0    # "field":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v8    # "vt":Lcom/sun/source/tree/VariableTree;
    .end local v9    # "element":Ljavax/lang/model/element/VariableElement;
    .end local v10    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v11    # "fieldType":Ljavax/lang/model/type/TypeMirror;
    .end local v12    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v13    # "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .end local v16    # "classType":Ljavax/lang/model/type/TypeMirror;
    .restart local v2    # "classType":Ljavax/lang/model/type/TypeMirror;
    :cond_b
    move-object/from16 v16, v2

    .line 444
    .end local v2    # "classType":Ljavax/lang/model/type/TypeMirror;
    .end local v7    # "member":Lcom/sun/source/tree/Tree;
    .restart local v16    # "classType":Ljavax/lang/model/type/TypeMirror;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    goto/16 :goto_2

    .line 445
    .end local v16    # "classType":Ljavax/lang/model/type/TypeMirror;
    .restart local v2    # "classType":Ljavax/lang/model/type/TypeMirror;
    :cond_c
    return-void
.end method

.method private addFinalLocalValues(Lorg/checkerframework/framework/flow/CFAbstractStore;Ljavax/lang/model/element/Element;)V
    .locals 7
    .param p2, "enclosingElement"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljavax/lang/model/element/Element;",
            ")V"
        }
    .end annotation

    .line 449
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getFinalLocalValues()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 451
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Element;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    .line 471
    .local v2, "elem":Ljavax/lang/model/element/Element;
    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    .line 473
    .local v3, "enclosingMethodOfVariableDeclaration":Ljavax/lang/model/element/Element;
    if-eqz v3, :cond_1

    .line 477
    move-object v4, p2

    .line 479
    .local v4, "enclosingMethodOfCurrentMethod":Ljavax/lang/model/element/Element;
    :goto_1
    if-eqz v4, :cond_1

    .line 480
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 482
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-direct {v5, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;-><init>(Ljavax/lang/model/element/Element;)V

    .line 483
    .local v5, "l":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-virtual {p1, v5, v6}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 484
    goto :goto_2

    .line 487
    .end local v5    # "l":Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;
    :cond_0
    nop

    .line 488
    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    goto :goto_1

    .line 491
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/Element;TV;>;"
    .end local v2    # "elem":Ljavax/lang/model/element/Element;
    .end local v3    # "enclosingMethodOfVariableDeclaration":Ljavax/lang/model/element/Element;
    .end local v4    # "enclosingMethodOfCurrentMethod":Ljavax/lang/model/element/Element;
    :cond_1
    :goto_2
    goto :goto_0

    .line 492
    :cond_2
    return-void
.end method

.method private processPostconditionsAndConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;Ljava/util/Set;)V
    .locals 16
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lcom/sun/source/tree/Tree;",
            "TS;TS;",
            "Ljava/util/Set<",
            "+",
            "Lorg/checkerframework/framework/util/Contract;",
            ">;)V"
        }
    .end annotation

    .line 1019
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p3, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .local p4, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .local p5, "postconditions":Ljava/util/Set;, "Ljava/util/Set<+Lorg/checkerframework/framework/util/Contract;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v0, 0x0

    .line 1021
    .local v0, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/util/Contract;

    .line 1022
    .local v5, "p":Lorg/checkerframework/framework/util/Contract;
    iget-object v6, v5, Lorg/checkerframework/framework/util/Contract;->expression:Ljava/lang/String;

    .line 1023
    .local v6, "expression":Ljava/lang/String;
    iget-object v7, v5, Lorg/checkerframework/framework/util/Contract;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 1025
    .local v7, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 1026
    iget-object v8, v1, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v8, v8, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    .line 1028
    invoke-virtual {v8}, Lorg/checkerframework/framework/source/SourceChecker;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v8

    .line 1027
    move-object/from16 v9, p1

    invoke-static {v9, v8}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodUse(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 1025
    :cond_0
    move-object/from16 v9, p1

    move-object v8, v0

    .line 1031
    .end local v0    # "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .local v8, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    :goto_1
    iget-object v0, v1, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v10

    .line 1033
    .local v10, "localScope":Lcom/sun/source/util/TreePath;
    invoke-direct {v1, v7, v8, v10}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->standardizeAnnotationFromContract(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 1036
    nop

    .line 1037
    const/4 v11, 0x0

    :try_start_0
    invoke-static {v6, v8, v10, v11}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 1043
    .local v0, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v12, v5, Lorg/checkerframework/framework/util/Contract;->kind:Lorg/checkerframework/framework/util/Contract$Kind;

    sget-object v13, Lorg/checkerframework/framework/util/Contract$Kind;->CONDITIONALPOSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    if-ne v12, v13, :cond_2

    .line 1044
    move-object v12, v5

    check-cast v12, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;

    iget-boolean v12, v12, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    if-eqz v12, :cond_1

    .line 1045
    invoke-virtual {v3, v0, v7}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertOrRefine(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v12, p4

    goto :goto_2

    .line 1047
    :cond_1
    move-object/from16 v12, p4

    :try_start_1
    invoke-virtual {v12, v0, v7}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertOrRefine(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_2

    .line 1050
    :cond_2
    move-object/from16 v12, p4

    invoke-virtual {v3, v0, v7}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertOrRefine(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V
    :try_end_1
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1065
    .end local v0    # "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_2
    goto :goto_5

    .line 1052
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v12, p4

    .line 1054
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    :goto_3
    invoke-virtual {v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->isFlowParseError()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1055
    iget-object v13, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->args:[Ljava/lang/Object;

    array-length v13, v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    new-array v13, v13, [Ljava/lang/Object;

    .line 1056
    .local v13, "args":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v15

    invoke-static {v15}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v15

    invoke-static {v15}, Lorg/checkerframework/javacutil/ElementUtils;->getSimpleName(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v11

    .line 1057
    iget-object v15, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->args:[Ljava/lang/Object;

    iget-object v3, v0, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->args:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v15, v11, v13, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1058
    const-string v3, "flowexpr.parse.error.postcondition"

    invoke-static {v3, v13}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 1059
    .end local v13    # "args":[Ljava/lang/Object;
    .local v3, "result":Lorg/checkerframework/framework/source/Result;
    goto :goto_4

    .line 1060
    .end local v3    # "result":Lorg/checkerframework/framework/source/Result;
    :cond_3
    invoke-virtual {v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->getResult()Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 1064
    .restart local v3    # "result":Lorg/checkerframework/framework/source/Result;
    :goto_4
    iget-object v11, v1, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v11, v11, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    invoke-virtual {v11, v3, v2}, Lorg/checkerframework/framework/source/SourceChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 1066
    .end local v0    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    .end local v3    # "result":Lorg/checkerframework/framework/source/Result;
    .end local v5    # "p":Lorg/checkerframework/framework/util/Contract;
    .end local v6    # "expression":Ljava/lang/String;
    .end local v7    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v10    # "localScope":Lcom/sun/source/util/TreePath;
    :goto_5
    move-object/from16 v3, p3

    move-object v0, v8

    goto/16 :goto_0

    .line 1067
    .end local v8    # "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .local v0, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    :cond_4
    move-object/from16 v9, p1

    move-object/from16 v12, p4

    return-void
.end method

.method private shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 959
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->infer:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p1, "expressionTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "lhsTree"    # Lcom/sun/source/tree/Tree;

    .line 969
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x0

    return v0

    .line 972
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 973
    .local v0, "elt":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v1, v1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "elt"    # Ljavax/lang/model/element/Element;

    .line 981
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    .line 982
    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/framework/source/SourceChecker;->shouldSuppressWarnings(Ljavax/lang/model/element/Element;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 981
    :goto_0
    return v0
.end method

.method private standardizeAnnotationFromContract(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "annoFromContract"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "flowExprContext"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "path"    # Lcom/sun/source/util/TreePath;

    .line 548
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->dependentTypesHelper:Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p1, v1}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;->standardizeAnnotation(Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Ljavax/lang/model/element/AnnotationMirror;Z)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 554
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 9
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "method"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .param p4, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p5, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            "Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;",
            "Lcom/sun/source/tree/MethodTree;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")V"
        }
    .end annotation

    .line 509
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/framework/util/ContractsUtils;->getInstance(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)Lorg/checkerframework/framework/util/ContractsUtils;

    move-result-object v0

    .line 510
    .local v0, "contracts":Lorg/checkerframework/framework/util/ContractsUtils;
    const/4 v1, 0x0

    .line 511
    .local v1, "flowExprContext":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-virtual {v0, p5}, Lorg/checkerframework/framework/util/ContractsUtils;->getPreconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v2

    .line 513
    .local v2, "preconditions":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Precondition;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/util/Contract$Precondition;

    .line 514
    .local v4, "p":Lorg/checkerframework/framework/util/Contract$Precondition;
    iget-object v5, v4, Lorg/checkerframework/framework/util/Contract$Precondition;->expression:Ljava/lang/String;

    .line 515
    .local v5, "expression":Ljava/lang/String;
    iget-object v6, v4, Lorg/checkerframework/framework/util/Contract$Precondition;->annotation:Ljavax/lang/model/element/AnnotationMirror;

    .line 517
    .local v6, "annotation":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v1, :cond_0

    .line 518
    nop

    .line 520
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v7

    iget-object v8, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v8, v8, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    invoke-virtual {v8}, Lorg/checkerframework/framework/source/SourceChecker;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v8

    .line 519
    invoke-static {p4, v7, v8}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForMethodDeclaration(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v1

    .line 523
    :cond_0
    iget-object v7, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v7, v7, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v7, p4}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v7

    .line 525
    .local v7, "localScope":Lcom/sun/source/util/TreePath;
    invoke-direct {p0, v6, v1, v7}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->standardizeAnnotationFromContract(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 532
    nop

    .line 533
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v5, v1, v7, v8}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v8

    .line 535
    .local v8, "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p1, v8, v6}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v8    # "expr":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_1

    .line 536
    :catch_0
    move-exception v8

    .line 539
    .end local v4    # "p":Lorg/checkerframework/framework/util/Contract$Precondition;
    .end local v5    # "expression":Ljava/lang/String;
    .end local v6    # "annotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "localScope":Lcom/sun/source/util/TreePath;
    :goto_1
    goto :goto_0

    .line 540
    :cond_1
    return-void
.end method

.method protected finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TS;)TV;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local p2, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    return-object p1
.end method

.method protected finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TS;TS;)TV;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local p2, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .local p3, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    return-object p1
.end method

.method protected getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 7
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TV;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 170
    .local v0, "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TV;TS;TT;+Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;>;"
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getCurrentTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 171
    .local v1, "preTree":Lcom/sun/source/tree/Tree;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    .line 172
    .local v2, "preCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v3, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->setCurrentTree(Lcom/sun/source/tree/Tree;)V

    .line 174
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getAssignmentContext()Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 178
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getAssignmentContext()Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;->getContextTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 179
    .local v3, "contextTree":Lcom/sun/source/tree/Tree;
    const/4 v4, 0x0

    .line 180
    .local v4, "assCtxt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v0, v3}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeLhs(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getAssignmentContext()Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;->getElementForType()Ljavax/lang/model/element/Element;

    move-result-object v5

    .line 184
    .local v5, "assCtxtElement":Ljavax/lang/model/element/Element;
    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 190
    .end local v5    # "assCtxtElement":Ljavax/lang/model/element/Element;
    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    .line 191
    instance-of v5, v4, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    if-eqz v5, :cond_2

    .line 194
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 196
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v5

    .line 198
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getAssignmentContext()Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;->getContextTree()Lcom/sun/source/tree/Tree;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v6

    .line 197
    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 201
    .end local v3    # "contextTree":Lcom/sun/source/tree/Tree;
    .end local v4    # "assCtxt":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 202
    .local v3, "at":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v4, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->setCurrentTree(Lcom/sun/source/tree/Tree;)V

    .line 203
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 204
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    return-object v4
.end method

.method protected getValueWithSameAnnotations(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 2
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "TV;)TV;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "annotatedValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez p2, :cond_0

    .line 213
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p2}, Lorg/checkerframework/framework/flow/CFAbstractValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Ljava/util/Set;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object p1

    return-object p1
.end method

.method public initialStore(Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractStore;
    .locals 13
    .param p1, "underlyingAST"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/UnderlyingAST;",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            ">;)TS;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-eq v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->fixedInitialStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    if-eqz v0, :cond_0

    .line 231
    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-boolean v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->sequentialSemantics:Z

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v0, v1, :cond_5

    .line 241
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->fixedInitialStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    if-eqz v0, :cond_2

    .line 243
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1, v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    .local v0, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    goto :goto_0

    .line 245
    .end local v0    # "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-boolean v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->sequentialSemantics:Z

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createEmptyStore(Z)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    .line 248
    .restart local v0    # "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v7

    .line 249
    .local v7, "factory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 250
    .local v2, "p":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 251
    .local v3, "anno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->initializeMethodParameter(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 252
    .end local v2    # "p":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v3    # "anno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_1

    .line 255
    :cond_3
    move-object v8, p1

    check-cast v8, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;

    .line 256
    .local v8, "method":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getMethod()Lcom/sun/source/tree/MethodTree;

    move-result-object v9

    .line 257
    .local v9, "methodTree":Lcom/sun/source/tree/MethodTree;
    invoke-static {v9}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v10

    .line 258
    .local v10, "methodElem":Ljavax/lang/model/element/ExecutableElement;
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V

    .line 260
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->getClassTree()Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    .line 261
    .local v1, "classTree":Lcom/sun/source/tree/ClassTree;
    invoke-direct {p0, v0, v7, v1, v9}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->addFieldValues(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;Lcom/sun/source/tree/MethodTree;)V

    .line 263
    invoke-direct {p0, v0, v10}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->addFinalLocalValues(Lorg/checkerframework/framework/flow/CFAbstractStore;Ljavax/lang/model/element/Element;)V

    .line 265
    invoke-direct {p0, v9, v10}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 266
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v2, v2, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 268
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v3, v3, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 267
    invoke-static {v2, v3, v10}, Lorg/checkerframework/framework/util/AnnotatedTypes;->overriddenMethods(Ljavax/lang/model/util/Elements;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Map;

    move-result-object v2

    .line 272
    .local v2, "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 273
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v5, v5, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 275
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getProcessingEnv()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v5

    invoke-interface {v5}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v5

    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v6, v6, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 277
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 278
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/lang/model/element/ExecutableElement;

    .line 274
    invoke-static {v5, v6, v11, v12}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v5

    .line 282
    .local v5, "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    iget-object v6, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v6, v6, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 283
    invoke-virtual {v6}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    move-result-object v6

    iget-object v11, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 288
    invoke-virtual {v11}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v11

    .line 284
    invoke-interface {v6, v9, v10, v5, v11}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->updateFromOverride(Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 289
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v5    # "overriddenMethod":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    goto :goto_2

    .line 292
    .end local v1    # "classTree":Lcom/sun/source/tree/ClassTree;
    .end local v2    # "overriddenMethods":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljavax/lang/model/element/ExecutableElement;>;"
    .end local v7    # "factory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .end local v8    # "method":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .end local v9    # "methodTree":Lcom/sun/source/tree/MethodTree;
    .end local v10    # "methodElem":Ljavax/lang/model/element/ExecutableElement;
    :cond_4
    goto/16 :goto_9

    .end local v0    # "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    if-ne v0, v1, :cond_f

    .line 294
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->fixedInitialStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createCopiedStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v0

    .line 299
    .restart local v0    # "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iget-object v1, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->classValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 300
    iget-object v1, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->arrayValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 301
    iget-object v1, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->methodValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 303
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    .line 304
    .local v1, "factory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 305
    .local v3, "p":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 306
    .local v4, "anno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v5, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v5, v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/checkerframework/framework/flow/CFAbstractStore;->initializeMethodParameter(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 307
    .end local v3    # "p":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .end local v4    # "anno":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    goto :goto_3

    .line 309
    :cond_6
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;

    .line 310
    .local v2, "lambda":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;
    nop

    .line 312
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->getLambdaTree()Lcom/sun/source/tree/LambdaExpressionTree;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/sun/source/tree/Tree$Kind;

    const/4 v6, 0x0

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->INTERFACE:Lcom/sun/source/tree/Tree$Kind;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->ENUM:Lcom/sun/source/tree/Tree$Kind;

    aput-object v7, v5, v6

    .line 314
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 311
    invoke-static {v3, v4}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v3

    .line 322
    .local v3, "enclosingTree":Lcom/sun/source/tree/Tree;
    const/4 v4, 0x0

    .line 323
    .local v4, "enclosingElement":Ljavax/lang/model/element/Element;
    invoke-interface {v3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_7

    .line 325
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v4

    goto :goto_7

    .line 327
    :cond_7
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->isClassTree(Lcom/sun/source/tree/Tree;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 334
    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->getLambdaTree()Lcom/sun/source/tree/LambdaExpressionTree;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    .line 335
    .local v5, "loopTree":Lcom/sun/source/util/TreePath;
    const/4 v6, 0x0

    .line 336
    .local v6, "anEnclosingElement":Ljavax/lang/model/element/Element;
    :goto_4
    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v7

    if-eq v7, v3, :cond_9

    .line 337
    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v7

    .line 338
    .local v7, "sym":Ljavax/lang/model/element/Element;
    if-eqz v7, :cond_8

    .line 339
    move-object v6, v7

    .line 340
    goto :goto_5

    .line 342
    :cond_8
    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    .line 343
    .end local v7    # "sym":Ljavax/lang/model/element/Element;
    goto :goto_4

    .line 344
    :cond_9
    :goto_5
    if-eqz v6, :cond_c

    .line 345
    invoke-static {v3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 346
    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/ElementKind;->INSTANCE_INIT:Ljavax/lang/model/element/ElementKind;

    if-eq v7, v8, :cond_b

    .line 347
    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v7

    sget-object v8, Ljavax/lang/model/element/ElementKind;->STATIC_INIT:Ljavax/lang/model/element/ElementKind;

    if-ne v7, v8, :cond_a

    goto :goto_6

    .line 351
    :cond_a
    invoke-interface {v6}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v6

    goto :goto_5

    .line 348
    :cond_b
    :goto_6
    move-object v4, v6

    .line 349
    nop

    .line 354
    .end local v5    # "loopTree":Lcom/sun/source/util/TreePath;
    .end local v6    # "anEnclosingElement":Ljavax/lang/model/element/Element;
    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    .line 355
    invoke-direct {p0, v0, v4}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->addFinalLocalValues(Lorg/checkerframework/framework/flow/CFAbstractStore;Ljavax/lang/model/element/Element;)V

    .line 359
    :cond_d
    new-instance v5, Ljava/util/HashMap;

    iget-object v6, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 360
    .local v5, "fieldValuesClone":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 361
    .local v7, "fieldValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    nop

    .line 362
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-virtual {v8}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    .line 363
    .local v8, "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v9, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 364
    invoke-virtual {v9, v8}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v9

    .line 365
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-virtual {v9, v10}, Lorg/checkerframework/framework/flow/CFAbstractValue;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v9

    .line 366
    .local v9, "lubbedValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v10, v0, Lorg/checkerframework/framework/flow/CFAbstractStore;->fieldValues:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v7    # "fieldValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    .end local v8    # "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v9    # "lubbedValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    goto :goto_8

    .line 368
    .end local v1    # "factory":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .end local v2    # "lambda":Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;
    .end local v3    # "enclosingTree":Lcom/sun/source/tree/Tree;
    .end local v4    # "enclosingElement":Ljavax/lang/model/element/Element;
    .end local v5    # "fieldValuesClone":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;TV;>;"
    :cond_e
    nop

    .line 373
    :goto_9
    return-object v0

    .line 369
    .end local v0    # "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected isNotFullyInitializedReceiver(Lcom/sun/source/tree/MethodTree;)Z
    .locals 1
    .param p1, "methodTree"    # Lcom/sun/source/tree/MethodTree;

    .line 496
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v0

    return v0
.end method

.method public moreSpecificValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)TV;"
        }
    .end annotation

    .line 1130
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "value1":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local p2, "value2":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-nez p1, :cond_0

    .line 1131
    return-object p2

    .line 1133
    :cond_0
    if-nez p2, :cond_1

    .line 1134
    return-object p1

    .line 1136
    :cond_1
    invoke-virtual {p1, p2, p1}, Lorg/checkerframework/framework/flow/CFAbstractValue;->mostSpecific(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    return-object v0
.end method

.method protected processCommonAssignment(Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractValue;)V
    .locals 0
    .param p2, "lhs"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "rhs"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TS;TV;)V"
        }
    .end annotation

    .line 887
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    .local p4, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .local p5, "rhsValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p4, p2, p5}, Lorg/checkerframework/framework/flow/CFAbstractStore;->updateForAssignment(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 888
    return-void
.end method

.method protected processConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 8
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lcom/sun/source/tree/Tree;",
            "TS;TS;)V"
        }
    .end annotation

    .line 1006
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p4, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .local p5, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/framework/util/ContractsUtils;->getInstance(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)Lorg/checkerframework/framework/util/ContractsUtils;

    move-result-object v0

    .line 1007
    .local v0, "contracts":Lorg/checkerframework/framework/util/ContractsUtils;
    nop

    .line 1008
    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/util/ContractsUtils;->getConditionalPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v7

    .line 1009
    .local v7, "conditionalPostconditions":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->processPostconditionsAndConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;Ljava/util/Set;)V

    .line 1011
    return-void
.end method

.method protected processPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFAbstractStore;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;)V
    .locals 8
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p3, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p4, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "TS;",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lcom/sun/source/tree/Tree;",
            ")V"
        }
    .end annotation

    .line 991
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v0}, Lorg/checkerframework/framework/util/ContractsUtils;->getInstance(Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;)Lorg/checkerframework/framework/util/ContractsUtils;

    move-result-object v0

    .line 992
    .local v0, "contracts":Lorg/checkerframework/framework/util/ContractsUtils;
    invoke-virtual {v0, p3}, Lorg/checkerframework/framework/util/ContractsUtils;->getPostconditions(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/Set;

    move-result-object v7

    .line 993
    .local v7, "postconditions":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/framework/util/Contract$Postcondition;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->processPostconditionsAndConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;Ljava/util/Set;)V

    .line 994
    return-void
.end method

.method public setFixedInitialStore(Lorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "s":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    iput-object p1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->fixedInitialStore:Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 223
    return-void
.end method

.method protected splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 778
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    if-eqz v0, :cond_0

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 781
    .local v1, "a":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 783
    return-object v0

    .line 785
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    .end local v1    # "a":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 8
    .param p2, "firstNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "secondNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p6, "notEqualTo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TV;TV;Z)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 745
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p1, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    .local p4, "firstValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local p5, "secondValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz p4, :cond_2

    .line 747
    invoke-virtual {p4, p5}, Lorg/checkerframework/framework/flow/CFAbstractValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    invoke-virtual {p0, p3}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v0

    .line 749
    .local v0, "secondParts":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 750
    .local v2, "secondPart":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 751
    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 752
    .local v3, "secondInternal":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-static {v3}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 754
    .local v4, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 755
    .local v5, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    if-eqz p6, :cond_0

    .line 756
    invoke-virtual {v5, v3, p4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    goto :goto_1

    .line 758
    :cond_0
    invoke-virtual {v4, v3, p4}, Lorg/checkerframework/framework/flow/CFAbstractStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 762
    :goto_1
    new-instance v6, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 764
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-direct {v6, v7, v4, v5}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    move-object p1, v6

    .line 766
    .end local v2    # "secondPart":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "secondInternal":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v4    # "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .end local v5    # "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    :cond_1
    goto :goto_0

    .line 769
    .end local v0    # "secondParts":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :cond_2
    return-object p1
.end method

.method public usesSequentialSemantics()Z
    .locals 1

    .line 141
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->sequentialSemantics:Z

    return v0
.end method

.method public bridge synthetic visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 627
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 628
    .local v0, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 630
    .local v1, "storeValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 631
    .local v2, "factoryValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->moreSpecificValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    .line 632
    .local v3, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    new-instance v4, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v3, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v4
.end method

.method public bridge synthetic visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 10
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 791
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    .line 792
    .local v6, "lhs":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 794
    .local v7, "rhs":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 795
    .local v8, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {p2, v7}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 796
    .local v9, "rhsValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    instance-of v0, v6, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 800
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    move-result-object v0

    move-object v1, v6

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 804
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 805
    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v3

    .line 801
    invoke-interface {v0, v1, v7, v2, v3}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->updateFromFieldAssignment(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    goto :goto_0

    .line 806
    :cond_0
    instance-of v0, v6, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v0, :cond_1

    move-object v0, v6

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 807
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_1

    .line 808
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 809
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    move-result-object v0

    move-object v1, v6

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 813
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 814
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getContainingMethod(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MethodTree;

    move-result-object v4

    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 815
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v5

    .line 810
    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->updateFromLocalAssignment(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ClassTree;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 819
    :cond_1
    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->processCommonAssignment(Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 821
    new-instance v0, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v9, v8}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v0
.end method

.method public bridge synthetic visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitCase(Lorg/checkerframework/dataflow/cfg/node/CaseNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 13
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/CaseNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/CaseNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 1075
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1076
    .local v0, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    new-instance v2, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 1078
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFAbstractStore;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractStore;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;Z)V

    .line 1080
    .local v2, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 1081
    .local v10, "caseValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getSwitchOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    .line 1082
    .local v11, "assign":Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 1085
    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v1

    invoke-virtual {v11}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 1084
    invoke-static {v1, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 1083
    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v12

    .line 1086
    .local v12, "switchValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    nop

    .line 1089
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 1090
    invoke-virtual {v11}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    const/4 v7, 0x0

    .line 1087
    move-object v1, p0

    move-object v5, v10

    move-object v6, v12

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    .line 1096
    .end local v2    # "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    .local v1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    nop

    .line 1099
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/CaseNode;->getCaseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 1100
    invoke-virtual {v11}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    const/4 v9, 0x0

    .line 1097
    move-object v3, p0

    move-object v4, v1

    move-object v7, v10

    move-object v8, v12

    invoke-virtual/range {v3 .. v9}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    .line 1104
    return-object v1
.end method

.method public bridge synthetic visitClassName(Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitClassName(Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitClassName(Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 588
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    const/4 v0, 0x0

    .line 590
    .local v0, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 591
    .local v1, "tree":Lcom/sun/source/tree/Tree;
    if-eqz v1, :cond_0

    .line 592
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->canHaveTypeAnnotation(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v2, v2, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 595
    .local v2, "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TV;TS;TT;+Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;>;"
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v3, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->setCurrentTree(Lcom/sun/source/tree/Tree;)V

    .line 596
    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getAnnotatedTypeFromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 597
    .local v3, "at":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->setCurrentTree(Lcom/sun/source/tree/Tree;)V

    .line 598
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createAbstractValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    .line 602
    .end local v2    # "factory":Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;, "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<TV;TS;TT;+Lorg/checkerframework/framework/flow/CFAbstractAnalysis<TV;TS;TT;>;>;"
    .end local v3    # "at":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 604
    .local v2, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 605
    .local v3, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    new-instance v4, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 606
    invoke-virtual {p0, v0, v2, v3}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 605
    return-object v4

    .line 608
    .end local v2    # "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .end local v3    # "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 609
    .local v2, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    new-instance v3, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v0, v2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v3
.end method

.method public bridge synthetic visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 684
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 685
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 686
    .local v1, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 687
    .local v2, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    new-instance v3, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-direct {v3, v4, v2, v1}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v3
.end method

.method public bridge synthetic visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/EqualToNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/EqualToNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 692
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitEqualTo(Lorg/checkerframework/dataflow/cfg/node/EqualToNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 694
    .local v0, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/EqualToNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 695
    .local v8, "leftN":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/EqualToNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 696
    .local v9, "rightN":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p2, v8}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 697
    .local v10, "leftV":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v9}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 701
    .local v11, "rightV":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 702
    move-object v2, v0

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 703
    return-object v0
.end method

.method public bridge synthetic visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 615
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 616
    .local v0, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 620
    .local v1, "storeValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 621
    .local v2, "factoryValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->moreSpecificValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    .line 622
    .local v3, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    new-instance v4, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v3, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v4
.end method

.method public bridge synthetic visitLambdaResultExpression(Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitLambdaResultExpression(Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaResultExpression(Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 845
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->getResult()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->accept(Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    return-object v0
.end method

.method public bridge synthetic visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLocalVariable(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 638
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 639
    .local v0, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 640
    .local v1, "valueFromStore":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 641
    .local v2, "valueFromFactory":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->moreSpecificValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    .line 642
    .local v3, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    new-instance v4, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v3, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v4
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 16
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 909
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 910
    .local v8, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v9

    .line 912
    .local v9, "method":Ljavax/lang/model/element/ExecutableElement;
    const/4 v0, 0x0

    .line 914
    .local v0, "factoryValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v10

    .line 915
    .local v10, "tree":Lcom/sun/source/tree/Tree;
    if-eqz v10, :cond_0

    .line 917
    invoke-virtual {v6, v10, v7}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    .line 915
    :cond_0
    move-object v11, v0

    .line 920
    .end local v0    # "factoryValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    .local v11, "factoryValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    :goto_0
    invoke-virtual {v8, v7}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v12

    .line 921
    .local v12, "storeValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {v6, v11, v12}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->moreSpecificValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v13

    .line 923
    .local v13, "resValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    iget-object v0, v6, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v0, v0, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-virtual {v8, v7, v0, v13}, Lorg/checkerframework/framework/flow/CFAbstractStore;->updateForMethodCall(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 926
    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->processPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFAbstractStore;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;)V

    .line 928
    move-object v14, v8

    .line 929
    .local v14, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {v14}, Lorg/checkerframework/framework/flow/CFAbstractStore;->copy()Lorg/checkerframework/framework/flow/CFAbstractStore;

    move-result-object v15

    .line 932
    .local v15, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v10

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->processConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 934
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v0

    invoke-direct {v6, v0, v9}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 936
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 937
    .local v0, "receiverTree":Lcom/sun/source/tree/Tree;
    if-nez v0, :cond_1

    .line 940
    iget-object v1, v6, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 945
    :cond_1
    iget-object v1, v6, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v1, v1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 946
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    move-result-object v1

    iget-object v2, v6, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 947
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    invoke-interface {v1, v7, v0, v9, v2}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->updateFromMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 950
    .end local v0    # "receiverTree":Lcom/sun/source/tree/Tree;
    :cond_2
    new-instance v0, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 951
    invoke-virtual {v6, v13, v14, v15}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    invoke-direct {v0, v1, v14, v15}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 950
    return-object v0
.end method

.method public bridge synthetic visitNarrowingConversion(Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitNarrowingConversion(Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNarrowingConversion(Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 1149
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNarrowingConversion(Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1151
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 1152
    .local v1, "operandValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueWithSameAnnotations(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 1153
    .local v2, "narrowedValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/analysis/TransferResult;->setResultValue(Lorg/checkerframework/dataflow/analysis/AbstractValue;)V

    .line 1154
    return-object v0
.end method

.method public bridge synthetic visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 564
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    const/4 v0, 0x0

    .line 567
    .local v0, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 568
    .local v1, "tree":Lcom/sun/source/tree/Tree;
    if-eqz v1, :cond_0

    .line 569
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->canHaveTypeAnnotation(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p0, v1, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    .line 574
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 576
    .local v2, "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 577
    .local v3, "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    new-instance v4, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    .line 578
    invoke-virtual {p0, v0, v2, v3}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    .line 577
    return-object v4

    .line 580
    .end local v2    # "thenStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    .end local v3    # "elseStore":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 581
    .local v2, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    new-instance v3, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v0, v2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v3
.end method

.method public bridge synthetic visitNotEqual(Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitNotEqual(Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNotEqual(Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 708
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitNotEqual(Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 710
    .local v0, "res":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 711
    .local v8, "leftN":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NotEqualNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 712
    .local v9, "rightN":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p2, v8}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 713
    .local v10, "leftV":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p2, v9}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 717
    .local v11, "rightV":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 718
    move-object v2, v0

    move-object v3, v9

    move-object v4, v8

    move-object v5, v11

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 720
    return-object v0
.end method

.method public bridge synthetic visitObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 892
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getTree()Lcom/sun/source/tree/NewClassTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 894
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    .line 895
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;->getTree()Lcom/sun/source/tree/NewClassTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 897
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 898
    .local v0, "constructorElt":Ljavax/lang/model/element/ExecutableElement;
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v1, v1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 899
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 900
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->updateFromObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 902
    .end local v0    # "constructorElt":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitObjectCreation(Lorg/checkerframework/dataflow/cfg/node/ObjectCreationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    return-object v0
.end method

.method public bridge synthetic visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ReturnNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ReturnNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 826
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->getTree()Lcom/sun/source/tree/ReturnTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->getTree()Lcom/sun/source/tree/ReturnTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v0

    .line 829
    .local v0, "classTree":Lcom/sun/source/tree/ClassTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 831
    .local v1, "classSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v2, v2, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 832
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 836
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ReturnNode;->getTree()Lcom/sun/source/tree/ReturnTree;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getContainingMethod(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MethodTree;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 837
    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v4

    .line 833
    invoke-interface {v2, p1, v1, v3, v4}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->updateFromReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/source/tree/MethodTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 839
    .end local v0    # "classTree":Lcom/sun/source/tree/ClassTree;
    .end local v1    # "classSymbol":Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitReturn(Lorg/checkerframework/dataflow/cfg/node/ReturnNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    return-object v0
.end method

.method public bridge synthetic visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 852
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 853
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v7

    .line 854
    .local v7, "lhs":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v8

    .line 858
    .local v8, "rhs":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 860
    .local v9, "info":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 862
    .local v10, "resultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    instance-of v1, v7, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-eqz v1, :cond_0

    .line 863
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v7}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->shouldPerformWholeProgramInference(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    iget-object v1, v1, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 866
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;->getWholeProgramInference()Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;

    move-result-object v1

    move-object v2, v7

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 870
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getContainingClass(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 871
    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v4

    .line 867
    invoke-interface {v1, v2, v8, v3, v4}, Lorg/checkerframework/common/wholeprograminference/WholeProgramInference;->updateFromFieldAssignment(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/cfg/node/Node;Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 874
    :cond_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->processCommonAssignment(Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractValue;)V

    .line 876
    new-instance v1, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v10, v9}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v1
.end method

.method public bridge synthetic visitStringConversion(Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitStringConversion(Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitStringConversion(Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 1171
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitStringConversion(Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1172
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    invoke-virtual {v0, v1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->setResultValue(Lorg/checkerframework/dataflow/analysis/AbstractValue;)V

    .line 1173
    return-object v0
.end method

.method public bridge synthetic visitTernaryExpression(Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitTernaryExpression(Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitTernaryExpression(Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitTernaryExpression(Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 671
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 672
    .local v1, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getThenOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 673
    .local v2, "thenValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getElseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 674
    .local v3, "elseValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v4, 0x0

    .line 675
    .local v4, "resultValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 676
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/flow/CFAbstractValue;->leastUpperBound(Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v4

    .line 678
    :cond_0
    new-instance v5, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v4, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v5
.end method

.method public bridge synthetic visitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 647
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 648
    .local v0, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->getValue(Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    .line 650
    .local v1, "valueFromStore":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v2, 0x0

    .line 651
    .local v2, "valueFromFactory":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    const/4 v3, 0x0

    .line 652
    .local v3, "value":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 653
    .local v4, "tree":Lcom/sun/source/tree/Tree;
    if-eqz v4, :cond_0

    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->canHaveTypeAnnotation(Lcom/sun/source/tree/Tree;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    invoke-virtual {p0, v4, p1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueFromFactory(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 657
    :cond_0
    if-nez v2, :cond_1

    .line 658
    move-object v3, v1

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->moreSpecificValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    .line 663
    :goto_0
    new-instance v5, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p0, v3, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v5
.end method

.method public bridge synthetic visitVariableDeclaration(Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitVariableDeclaration(Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitVariableDeclaration(Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/VariableDeclarationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 1142
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFAbstractStore;

    .line 1143
    .local v0, "store":Lorg/checkerframework/framework/flow/CFAbstractStore;, "TS;"
    new-instance v1, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->finishValue(Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractStore;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v1
.end method

.method public bridge synthetic visitWideningConversion(Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->visitWideningConversion(Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitWideningConversion(Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TV;TS;>;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TV;TS;>;"
        }
    .end annotation

    .line 1160
    .local p0, "this":Lorg/checkerframework/framework/flow/CFAbstractTransfer;, "Lorg/checkerframework/framework/flow/CFAbstractTransfer<TV;TS;TT;>;"
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TV;TS;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/node/AbstractNodeVisitor;->visitWideningConversion(Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1162
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TV;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFAbstractValue;

    .line 1163
    .local v1, "operandValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/checkerframework/framework/flow/CFAbstractTransfer;->getValueWithSameAnnotations(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/flow/CFAbstractValue;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    .line 1164
    .local v2, "widenedValue":Lorg/checkerframework/framework/flow/CFAbstractValue;, "TV;"
    invoke-virtual {v0, v2}, Lorg/checkerframework/dataflow/analysis/TransferResult;->setResultValue(Lorg/checkerframework/dataflow/analysis/AbstractValue;)V

    .line 1165
    return-object v0
.end method

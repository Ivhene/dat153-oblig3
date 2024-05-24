.class public Lorg/checkerframework/checker/index/samelen/SameLenTransfer;
.super Lorg/checkerframework/framework/flow/CFTransfer;
.source "SameLenTransfer.java"


# instance fields
.field private UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

.field private aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAnalysis;)V
    .locals 1
    .param p1, "analysis"    # Lorg/checkerframework/framework/flow/CFAnalysis;

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 53
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 54
    iget-object v0, v0, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 55
    return-void
.end method

.method private getLengthReceiver(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "lengthNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 62
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->isArrayLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 65
    .local v0, "lengthFieldAccessNode":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    return-object v1

    .line 66
    .end local v0    # "lengthFieldAccessNode":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/checker/index/IndexMethodIdentifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isLengthOfMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 69
    .local v0, "lengthMethodInvocationNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    return-object v1

    .line 71
    .end local v0    # "lengthMethodInvocationNode":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isArrayLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 178
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 179
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 180
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0
.end method

.method private propagateCombinedSameLen(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 4
    .param p1, "sameLenAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 160
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 161
    .local v0, "currentPath":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "expr":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v3, v2, v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v3, "recS":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 171
    invoke-virtual {p3, v3}, Lorg/checkerframework/framework/flow/CFStore;->clearValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 172
    invoke-virtual {p3, v3, p1}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 173
    .end local v2    # "expr":Ljava/lang/String;
    .end local v3    # "recS":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 168
    .restart local v2    # "expr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    goto :goto_0

    .line 174
    .end local v2    # "expr":Ljava/lang/String;
    .end local v3    # "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    :cond_1
    return-void
.end method

.method private refineEq(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 5
    .param p1, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "annos":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 191
    .local v3, "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0, v3}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->getAnno(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v3    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 195
    .restart local v3    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0, v3}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->getAnno(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v3    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 199
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v2, v0, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createCombinedSameLen(Ljava/util/List;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 201
    .local v2, "combinedSameLen":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v2, p1, p3}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->propagateCombinedSameLen(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected bridge synthetic addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 6

    .line 44
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V

    return-void
.end method

.method protected addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 15
    .param p1, "info"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "method"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
    .param p4, "methodTree"    # Lcom/sun/source/tree/MethodTree;
    .param p5, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 267
    move-object v1, p0

    invoke-super/range {p0 .. p5}, Lorg/checkerframework/framework/flow/CFTransfer;->addInformationFromPreconditions(Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;Lcom/sun/source/tree/MethodTree;Ljavax/lang/model/element/ExecutableElement;)V

    .line 269
    invoke-interface/range {p4 .. p4}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "paramTrees":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/VariableTree;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 271
    .local v3, "paramNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 273
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/VariableTree;

    .line 274
    .local v5, "tree":Lcom/sun/source/tree/VariableTree;
    invoke-interface {v5}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v6, v1, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v6, v5}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v5    # "tree":Lcom/sun/source/tree/VariableTree;
    goto :goto_0

    .line 278
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .local v5, "index":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    .line 283
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 284
    .local v6, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v0, Lorg/checkerframework/checker/index/qual/SameLen;

    invoke-virtual {v6, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 285
    .local v7, "anm":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v7, :cond_1

    .line 286
    move-object/from16 v14, p1

    goto :goto_5

    .line 289
    :cond_1
    invoke-static {v7}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v8

    .line 290
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 291
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v3, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 292
    .local v11, "otherParamIndex":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_2

    .line 293
    goto :goto_2

    .line 298
    :cond_2
    iget-object v0, v1, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 300
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 299
    invoke-virtual {v0, v12}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v12

    .line 301
    .local v12, "newSameLen":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v13, 0x0

    .line 303
    .local v13, "otherParamRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :try_start_0
    iget-object v0, v1, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 305
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/source/tree/VariableTree;

    .line 304
    invoke-static {v0, v14}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->internalReprOfVariable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/VariableTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    .line 308
    goto :goto_3

    .line 306
    :catch_0
    move-exception v0

    .line 309
    :goto_3
    if-eqz v13, :cond_3

    .line 310
    move-object/from16 v14, p1

    invoke-virtual {v14, v13, v12}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    goto :goto_4

    .line 309
    :cond_3
    move-object/from16 v14, p1

    .line 312
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "otherParamIndex":I
    .end local v12    # "newSameLen":Ljavax/lang/model/element/AnnotationMirror;
    .end local v13    # "otherParamRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_4
    goto :goto_2

    .line 290
    :cond_4
    move-object/from16 v14, p1

    .line 278
    .end local v6    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v7    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v14, p1

    .line 314
    .end local v5    # "index":I
    return-void
.end method

.method getAnno(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 217
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->isLValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 221
    .local v0, "cfValue":Lorg/checkerframework/framework/flow/CFValue;
    if-nez v0, :cond_1

    .line 222
    iget-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    return-object v1

    .line 224
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 225
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 224
    return-object v1
.end method

.method protected bridge synthetic strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7

    .line 44
    move-object v4, p4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    move-object v5, p5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method protected strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7
    .param p2, "firstNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "secondNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "firstValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p5, "secondValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p6, "notEqualTo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Z)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 240
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFStore;

    .line 241
    .local v0, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    .line 242
    .local v1, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    if-eqz p6, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 244
    .local v2, "equalStore":Lorg/checkerframework/framework/flow/CFStore;
    :goto_0
    invoke-direct {p0, p2}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->getLengthReceiver(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 245
    .local v3, "firstLengthReceiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-direct {p0, p3}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->getLengthReceiver(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    .line 247
    .local v4, "secondLengthReceiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 250
    invoke-direct {p0, v3, v4, v2}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->refineEq(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/checker/index/IndexUtil;->isSequenceType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/checker/index/IndexUtil;->isSequenceType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    :cond_2
    invoke-direct {p0, p2, p3, v2}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->refineEq(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 256
    :cond_3
    :goto_1
    new-instance v5, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {v5, v6, v1, v0}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v5
.end method

.method public bridge synthetic visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 9
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 78
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitAssignment(Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 81
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    .line 83
    .local v1, "acNode":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getDimension(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 86
    .local v2, "lengthNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-direct {p0, v2}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->getLengthReceiver(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 88
    .local v3, "lengthNodeReceiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v3, :cond_0

    .line 94
    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 96
    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v4

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 95
    invoke-static {v4, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 97
    .local v4, "targetRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v5, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 99
    invoke-virtual {v5}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v5

    .line 98
    invoke-static {v5, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    .line 101
    .local v5, "otherRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v6, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 103
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    iget-object v7, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 104
    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 106
    .local v6, "lengthNodeAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v7, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    iget-object v8, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 110
    invoke-virtual {v7, v4, v5, v8, v6}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createCombinedSameLen(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 113
    .local v7, "combinedSameLen":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {p0, v7, p1, v8}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->propagateCombinedSameLen(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 114
    return-object v0

    .line 119
    .end local v1    # "acNode":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    .end local v2    # "lengthNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "lengthNodeReceiver":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "targetRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "otherRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v6    # "lengthNodeAnnotation":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "combinedSameLen":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    .line 121
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 122
    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 127
    .local v1, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 128
    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 130
    .local v2, "targetRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v3, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 131
    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v3

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 133
    .local v3, "exprRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/checker/index/IndexUtil;->isSequenceType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    const-class v5, Lorg/checkerframework/checker/index/qual/SameLen;

    .line 134
    invoke-virtual {v4, v1, v5}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    :cond_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 138
    .local v4, "rightAnnoOrUnknown":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    iget-object v5, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->aTypeFactory:Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    iget-object v6, p0, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 142
    invoke-virtual {v5, v2, v3, v6, v4}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createCombinedSameLen(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 145
    .local v5, "combinedSameLen":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {p0, v5, p1, v6}, Lorg/checkerframework/checker/index/samelen/SameLenTransfer;->propagateCombinedSameLen(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 148
    .end local v4    # "rightAnnoOrUnknown":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "combinedSameLen":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    return-object v0
.end method

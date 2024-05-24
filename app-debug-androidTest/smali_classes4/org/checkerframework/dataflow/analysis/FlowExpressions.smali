.class public Lorg/checkerframework/dataflow/analysis/FlowExpressions;
.super Ljava/lang/Object;
.source "FlowExpressions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;,
        Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParametersOfEnclosingMethod(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/util/TreePath;)Ljava/util/List;
    .locals 5
    .param p0, "annotationProvider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/javacutil/AnnotationProvider;",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 404
    .local v0, "methodTree":Lcom/sun/source/tree/MethodTree;
    if-nez v0, :cond_0

    .line 405
    const/4 v1, 0x0

    return-object v1

    .line 407
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v1, "internalArguments":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {v0}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/VariableTree;

    .line 409
    .local v3, "arg":Lcom/sun/source/tree/VariableTree;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    invoke-direct {v4, v3}, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;-><init>(Lcom/sun/source/tree/Tree;)V

    invoke-static {p0, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v3    # "arg":Lcom/sun/source/tree/VariableTree;
    goto :goto_0

    .line 411
    :cond_1
    return-object v1
.end method

.method public static internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "receiverTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 199
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    return-object v0
.end method

.method public static internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 7
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "receiverTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "allowNonDeterministic"    # Z

    .line 213
    sget-object v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "@AssumeAssertion(nullness): tree kind"

    packed-switch v0, :pswitch_data_0

    .line 319
    const/4 v3, 0x0

    .local v3, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 280
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 281
    .local v0, "identifierTree":Lcom/sun/source/tree/IdentifierTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 282
    .local v2, "typeOfId":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v3

    const-string v4, "this"

    invoke-interface {v3, v4}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 283
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v3

    const-string v4, "super"

    invoke-interface {v3, v4}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 290
    .local v1, "ele":Ljavax/lang/model/element/Element;
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 292
    .restart local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 294
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_1
    sget-object v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 315
    const/4 v3, 0x0

    .line 317
    .restart local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 304
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :pswitch_1
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 305
    .local v3, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    new-instance v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v4, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .local v4, "fieldAccessExpression":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 308
    .end local v4    # "fieldAccessExpression":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    new-instance v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-direct {v4, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 310
    .restart local v4    # "fieldAccessExpression":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    move-object v6, v1

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    invoke-direct {v5, v4, v2, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/VariableElement;)V

    .line 313
    .local v5, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    move-object v3, v5

    goto/16 :goto_7

    .line 299
    .end local v3    # "enclosingType":Ljavax/lang/model/type/TypeMirror;
    .end local v4    # "fieldAccessExpression":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :pswitch_2
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-direct {v3, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;-><init>(Ljavax/lang/model/element/Element;)V

    .line 300
    .local v3, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 287
    .end local v1    # "ele":Ljavax/lang/model/element/Element;
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 284
    :cond_4
    :goto_1
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v3, v1

    .line 285
    .restart local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 277
    .end local v0    # "identifierTree":Lcom/sun/source/tree/IdentifierTree;
    .end local v2    # "typeOfId":Ljavax/lang/model/type/TypeMirror;
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-static {p0, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfMemberSelect(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MemberSelectTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 278
    .restart local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 251
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    .line 252
    .local v0, "mn":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 253
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 254
    .local v1, "invokedMethod":Ljavax/lang/model/element/ExecutableElement;
    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/util/PurityUtils;->isDeterministic(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    .line 273
    :cond_5
    const/4 v3, 0x0

    .line 275
    .restart local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 255
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    .line 257
    .local v4, "p":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {p0, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v4    # "p":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_3

    .line 260
    :cond_7
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 261
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .local v3, "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_4

    .line 263
    .end local v3    # "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_8
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 264
    .local v3, "methodReceiverTree":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v3, :cond_9

    .line 265
    invoke-static {p0, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    move-object v3, v4

    .local v4, "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_4

    .line 267
    .end local v4    # "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_9
    invoke-static {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    move-object v3, v4

    .line 270
    .local v3, "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_4
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 271
    .local v4, "type":Ljavax/lang/model/type/TypeMirror;
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    invoke-direct {v5, v4, v1, v3, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;)V

    move-object v3, v5

    .line 272
    .end local v2    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v4    # "type":Ljavax/lang/model/type/TypeMirror;
    .local v3, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto/16 :goto_7

    .line 252
    .end local v1    # "invokedMethod":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_a
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 232
    .end local v0    # "mn":Lcom/sun/source/tree/MethodInvocationTree;
    :pswitch_5
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    .line 233
    .local v0, "newArrayTree":Lcom/sun/source/tree/NewArrayTree;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v1, "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 235
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 236
    .local v3, "dimension":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {p0, v3, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v3    # "dimension":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_5

    .line 239
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v2, "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 241
    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/source/tree/ExpressionTree;

    .line 242
    .local v4, "initializer":Lcom/sun/source/tree/ExpressionTree;
    nop

    .line 243
    invoke-static {p0, v4, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    .line 242
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v4    # "initializer":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_6

    .line 247
    :cond_c
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    .line 248
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V

    .line 249
    .local v3, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_7

    .line 228
    .end local v0    # "newArrayTree":Lcom/sun/source/tree/NewArrayTree;
    .end local v1    # "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v2    # "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :pswitch_6
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/LiteralTree;

    .line 229
    .local v0, "vn":Lcom/sun/source/tree/LiteralTree;
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)V

    move-object v3, v1

    .line 230
    .restart local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_7

    .line 215
    .end local v0    # "vn":Lcom/sun/source/tree/LiteralTree;
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :pswitch_7
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/ArrayAccessTree;

    .line 216
    .local v0, "a":Lcom/sun/source/tree/ArrayAccessTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 217
    .local v1, "arrayAccessExpression":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-interface {v0}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 218
    .local v2, "index":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    .line 219
    .restart local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 322
    .end local v0    # "a":Lcom/sun/source/tree/ArrayAccessTree;
    .end local v1    # "arrayAccessExpression":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v2    # "index":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_7
    if-nez v3, :cond_d

    .line 323
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;

    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v3, v0

    .line 325
    :cond_d
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "receiverNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 96
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    return-object v0
.end method

.method public static internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 8
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "receiverNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "allowNonDeterministic"    # Z

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-eqz v1, :cond_2

    .line 110
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 112
    .local v1, "fan":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "this"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v0, v2

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v0, v2

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfFieldAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    move-result-object v0

    .line 125
    .end local v1    # "fan":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    :goto_0
    goto/16 :goto_5

    :cond_2
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;

    if-eqz v1, :cond_3

    .line 126
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v0, v1

    goto/16 :goto_5

    .line 127
    :cond_3
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;

    if-eqz v1, :cond_4

    .line 128
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v0, v1

    goto/16 :goto_5

    .line 129
    :cond_4
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/SuperNode;

    if-eqz v1, :cond_5

    .line 130
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v0, v1

    goto/16 :goto_5

    .line 131
    :cond_5
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    if-eqz v1, :cond_6

    .line 132
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;

    .line 133
    .local v1, "lv":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-direct {v2, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;-><init>(Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;)V

    move-object v0, v2

    .line 134
    .end local v1    # "lv":Lorg/checkerframework/dataflow/cfg/node/LocalVariableNode;
    goto/16 :goto_5

    :cond_6
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    if-eqz v1, :cond_7

    .line 135
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    .line 136
    .local v1, "a":Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOfArrayAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    move-result-object v0

    .line 137
    .end local v1    # "a":Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    goto/16 :goto_5

    :cond_7
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    if-eqz v1, :cond_8

    .line 139
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    return-object v1

    .line 140
    :cond_8
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;

    if-eqz v1, :cond_9

    .line 142
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/WideningConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    return-object v1

    .line 143
    :cond_9
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;

    if-eqz v1, :cond_a

    .line 145
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/NarrowingConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    return-object v1

    .line 146
    :cond_a
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    if-eqz v1, :cond_b

    .line 147
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;

    .line 148
    .local v1, "cn":Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v0, v2

    .line 149
    .end local v1    # "cn":Lorg/checkerframework/dataflow/cfg/node/ClassNameNode;
    goto/16 :goto_5

    :cond_b
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;

    if-eqz v1, :cond_c

    .line 150
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;

    .line 151
    .local v1, "vn":Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;
    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;)V

    move-object v0, v2

    .line 152
    .end local v1    # "vn":Lorg/checkerframework/dataflow/cfg/node/ValueLiteralNode;
    goto/16 :goto_5

    :cond_c
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    if-eqz v1, :cond_10

    .line 153
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;

    .line 154
    .local v1, "an":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getDimensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 156
    .local v4, "dimension":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-static {p0, v4, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v4    # "dimension":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 158
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getInitializers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 160
    .local v5, "initializer":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-static {p0, v5, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v5    # "initializer":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_2

    .line 162
    :cond_e
    new-instance v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayCreation;-><init>(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;Ljava/util/List;)V

    move-object v0, v4

    .line 163
    .end local v1    # "an":Lorg/checkerframework/dataflow/cfg/node/ArrayCreationNode;
    .end local v2    # "dimensions":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v3    # "initializers":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    :cond_f
    goto/16 :goto_5

    :cond_10
    instance-of v1, p1, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    if-eqz v1, :cond_f

    .line 164
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    .line 165
    .local v1, "mn":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTree()Lcom/sun/source/tree/MethodInvocationTree;

    move-result-object v2

    .line 166
    .local v2, "t":Lcom/sun/source/tree/MethodInvocationTree;
    if-eqz v2, :cond_15

    .line 169
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 170
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    .line 172
    .local v3, "invokedMethod":Ljavax/lang/model/element/ExecutableElement;
    if-nez p2, :cond_11

    invoke-static {p0, v3}, Lorg/checkerframework/dataflow/util/PurityUtils;->isDeterministic(Lorg/checkerframework/javacutil/AnnotationProvider;Ljavax/lang/model/element/Element;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 173
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v4, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 175
    .local v6, "p":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-static {p0, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v6    # "p":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_3

    .line 178
    :cond_12
    invoke-static {v3}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 179
    new-instance v5, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .local v5, "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_4

    .line 181
    .end local v5    # "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_13
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    invoke-static {p0, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v5

    .line 183
    .restart local v5    # "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_4
    new-instance v6, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-direct {v6, v7, v3, v5, v4}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$MethodCall;-><init>(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljava/util/List;)V

    move-object v0, v6

    goto :goto_5

    .line 169
    .end local v3    # "invokedMethod":Ljavax/lang/model/element/ExecutableElement;
    .end local v4    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;>;"
    .end local v5    # "methodReceiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_14
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 167
    :cond_15
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected null tree for node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    .end local v1    # "mn":Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .end local v2    # "t":Lcom/sun/source/tree/MethodInvocationTree;
    :cond_16
    :goto_5
    if-nez v0, :cond_17

    .line 188
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    move-object v0, v1

    .line 190
    :cond_17
    return-object v0
.end method

.method public static internalReprOfArrayAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;
    .locals 4
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    .line 83
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getArray()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 84
    .local v0, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getIndex()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 85
    .local v1, "index":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ArrayAccess;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)V

    return-object v2
.end method

.method public static internalReprOfFieldAccess(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;
    .locals 3
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    .line 69
    .local v0, "receiverNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .local v1, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 72
    .end local v1    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_0
    invoke-static {p0, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 74
    .restart local v1    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    new-instance v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-direct {v2, v1, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;)V

    return-object v2
.end method

.method public static internalReprOfImplicitReceiver(Ljavax/lang/model/element/Element;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 2
    .param p0, "ele"    # Ljavax/lang/model/element/Element;

    .line 339
    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingClass(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 340
    .local v0, "enclosingType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {p0}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v1

    .line 343
    :cond_0
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v1
.end method

.method private static internalReprOfMemberSelect(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/MemberSelectTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 6
    .param p0, "provider"    # Lorg/checkerframework/javacutil/AnnotationProvider;
    .param p1, "memberSelectTree"    # Lcom/sun/source/tree/MemberSelectTree;

    .line 367
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 368
    .local v0, "expressionType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassLiteral(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v1, v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v1

    .line 371
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 373
    .local v1, "ele":Ljavax/lang/model/element/Element;
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isClassElement(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 377
    .local v2, "selectType":Ljavax/lang/model/type/TypeMirror;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v3, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v3

    .line 379
    .end local v2    # "selectType":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    sget-object v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 389
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unexpected element kind: %s element: %s"

    invoke-direct {v2, v4, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 382
    :pswitch_0
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    return-object v2

    .line 385
    :pswitch_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    .line 386
    .local v2, "fieldType":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 387
    .local v3, "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    new-instance v4, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    move-object v5, v1

    check-cast v5, Ljavax/lang/model/element/VariableElement;

    invoke-direct {v4, v3, v2, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;-><init>(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/VariableElement;)V

    return-object v4

    .line 371
    .end local v1    # "ele":Ljavax/lang/model/element/Element;
    .end local v2    # "fieldType":Ljavax/lang/model/type/TypeMirror;
    .end local v3    # "r":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static internalReprOfPseudoReceiver(Lcom/sun/source/util/TreePath;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "enclosingType"    # Ljavax/lang/model/type/TypeMirror;

    .line 358
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isTreeInStaticScope(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ClassName;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0

    .line 361
    :cond_0
    new-instance v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    invoke-direct {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0
.end method

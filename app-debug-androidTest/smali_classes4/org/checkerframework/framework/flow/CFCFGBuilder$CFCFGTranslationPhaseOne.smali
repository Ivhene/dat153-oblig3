.class public Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;
.super Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;
.source "CFCFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/flow/CFCFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CFCFGTranslationPhaseOne"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

.field protected final factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lorg/checkerframework/framework/flow/CFCFGBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFTreeBuilder;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;ZZLjavax/annotation/processing/ProcessingEnvironment;)V
    .locals 6
    .param p1, "builder"    # Lorg/checkerframework/framework/flow/CFTreeBuilder;
    .param p2, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p3, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p4, "assumeAssertionsEnabled"    # Z
    .param p5, "assumeAssertionsDisabled"    # Z
    .param p6, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;-><init>(Lorg/checkerframework/javacutil/trees/TreeBuilder;Lorg/checkerframework/javacutil/AnnotationProvider;ZZLjavax/annotation/processing/ProcessingEnvironment;)V

    .line 101
    iput-object p2, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 102
    iput-object p3, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 103
    return-void
.end method


# virtual methods
.method protected assumeAssertionsEnabledFor(Lcom/sun/source/tree/AssertTree;)Z
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/AssertTree;

    .line 107
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/flow/CFCFGBuilder;->assumeAssertionsActivatedForAssertTree(Lorg/checkerframework/framework/source/SourceChecker;Lcom/sun/source/tree/AssertTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseOne;->assumeAssertionsEnabledFor(Lcom/sun/source/tree/AssertTree;)Z

    move-result v0

    return v0
.end method

.method protected createEnhancedForLoopArrayVariable(Lcom/sun/source/tree/ExpressionTree;Ljavax/lang/model/element/VariableElement;)Lcom/sun/source/tree/VariableTree;
    .locals 6
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "variableElement"    # Ljavax/lang/model/element/VariableElement;

    .line 158
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    .line 159
    .local v0, "oldShouldCache":Z
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    .line 160
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 161
    .local v1, "annotatedArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iput-boolean v0, v3, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    .line 162
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    .line 163
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->isUninferredTypeArgument()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 165
    .local v3, "type":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 166
    invoke-static {v3, v4, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->createType(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 167
    .local v2, "newArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 168
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 169
    move-object v1, v2

    .line 172
    .end local v2    # "newArrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .end local v3    # "type":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    nop

    instance-of v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    check-cast v2, Lorg/checkerframework/framework/flow/CFTreeBuilder;

    .line 176
    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->buildAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 177
    .local v2, "annotatedArrayTypeTree":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 180
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 183
    const-string v4, "array"

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    .line 181
    invoke-virtual {v3, v2, v4, v5, p1}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v3

    .line 186
    .local v3, "arrayVariable":Lcom/sun/source/tree/VariableTree;
    return-object v3

    .line 172
    .end local v2    # "annotatedArrayTypeTree":Lcom/sun/source/tree/Tree;
    .end local v3    # "arrayVariable":Lcom/sun/source/tree/VariableTree;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "ArrayType must be represented by AnnotatedArrayType"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method protected createEnhancedForLoopIteratorVariable(Lcom/sun/source/tree/MethodInvocationTree;Ljavax/lang/model/element/VariableElement;)Lcom/sun/source/tree/VariableTree;
    .locals 6
    .param p1, "iteratorCall"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "variableElement"    # Ljavax/lang/model/element/VariableElement;

    .line 134
    iget-object v0, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iget-boolean v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    .line 135
    .local v0, "oldShouldCache":Z
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    .line 136
    iget-object v1, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 137
    .local v1, "annotatedIteratorType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    iput-boolean v0, v2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->shouldCache:Z

    .line 139
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    check-cast v2, Lorg/checkerframework/framework/flow/CFTreeBuilder;

    .line 140
    invoke-virtual {v2, v1}, Lorg/checkerframework/framework/flow/CFTreeBuilder;->buildAnnotatedType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 141
    .local v2, "annotatedIteratorTypeTree":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->handleArtificialTree(Lcom/sun/source/tree/Tree;)V

    .line 144
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->treeBuilder:Lorg/checkerframework/javacutil/trees/TreeBuilder;

    .line 147
    const-string v4, "iter"

    invoke-virtual {p0, v4}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->uniqueName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v5

    .line 145
    invoke-virtual {v3, v2, v4, v5, p1}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildVariableDecl(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;

    move-result-object v3

    .line 150
    .local v3, "iteratorVariable":Lcom/sun/source/tree/VariableTree;
    return-object v3
.end method

.method public handleArtificialTree(Lcom/sun/source/tree/Tree;)V
    .locals 4
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 116
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 117
    .local v0, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 119
    .local v1, "methodElement":Ljavax/lang/model/element/Element;
    iget-object v2, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v2, p1, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->setEnclosingElementForArtificialTree(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V

    .line 120
    .end local v1    # "methodElement":Ljavax/lang/model/element/Element;
    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    .line 122
    .local v1, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    if-eqz v1, :cond_1

    .line 123
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    .line 124
    .local v2, "classElement":Ljavax/lang/model/element/Element;
    iget-object v3, p0, Lorg/checkerframework/framework/flow/CFCFGBuilder$CFCFGTranslationPhaseOne;->factory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v3, p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->setEnclosingElementForArtificialTree(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V

    .line 127
    .end local v1    # "enclosingClass":Lcom/sun/source/tree/ClassTree;
    .end local v2    # "classElement":Ljavax/lang/model/element/Element;
    :cond_1
    :goto_0
    return-void
.end method

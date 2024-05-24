.class public Lorg/checkerframework/common/aliasing/AliasingVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "AliasingVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 46
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 47
    return-void
.end method

.method private canBeLeaked(Lcom/sun/source/tree/Tree;)Z
    .locals 6
    .param p1, "exp"    # Lcom/sun/source/tree/Tree;

    .line 272
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 273
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 274
    .local v1, "isMethodInvocation":Z
    :goto_0
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 275
    .local v2, "isNewClass":Z
    :goto_1
    const-class v5, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasExplicitAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    return v3
.end method

.method private isInUniqueConstructor()Z
    .locals 4

    .line 279
    invoke-virtual {p0}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 280
    .local v0, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 281
    return v1

    .line 283
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    .line 285
    invoke-virtual {v2, v0}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/MethodTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    const-class v3, Lorg/checkerframework/common/aliasing/qual/Unique;

    .line 287
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 283
    :goto_0
    return v1
.end method

.method private isUniqueCheck(Lcom/sun/source/tree/MethodInvocationTree;ZZZ)V
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "parentIsStatement"    # Z
    .param p3, "hasNonLeaked"    # Z
    .param p4, "hasLeakedToResult"    # Z

    .line 133
    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "unique.leaked"

    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 140
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 2
    .param p1, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "constructorElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 247
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->UNIQUE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V

    .line 250
    :cond_0
    return-void
.end method

.method protected checkThisOrSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/String;)V
    .locals 4
    .param p1, "superCall"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "errorKey"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->isInUniqueConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 259
    .local v0, "superResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v1, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "unique.leaked"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 263
    .end local v0    # "superResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    return-void
.end method

.method protected commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 3
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 155
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->isInUniqueConstructor()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "unique.leaked"

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->isExplicitThisDereference(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p2}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->canBeLeaked(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 164
    :cond_1
    :goto_0
    return-void
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 6
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 177
    .local v0, "path":Lcom/sun/source/util/TreePath;
    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    .line 182
    .local v1, "visitorLeafKind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_3

    .line 184
    :cond_1
    invoke-direct {p0, p3}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->canBeLeaked(Lcom/sun/source/tree/Tree;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    .line 187
    .local v2, "parentKind":Lcom/sun/source/tree/Tree$Kind;
    const-class v3, Lorg/checkerframework/common/aliasing/qual/NonLeaked;

    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    .line 188
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_3

    .line 190
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "unique.leaked"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 194
    .end local v2    # "parentKind":Lcom/sun/source/tree/Tree$Kind;
    :cond_3
    return-void
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 69
    invoke-direct {p0}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->isInUniqueConstructor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 74
    .local v0, "superResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v2, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "unique.leaked"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 77
    .end local v0    # "superResult":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto/16 :goto_1

    .line 83
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 84
    .local v0, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 85
    .local v1, "parentIsStatement":Z
    :cond_2
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    .line 86
    .local v2, "methodElement":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    .line 88
    .local v4, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 95
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 98
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->isExplicitThisDereference(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    .line 102
    .local v6, "param":Ljavax/lang/model/element/VariableElement;
    iget-object v7, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    .line 103
    invoke-virtual {v7, v6}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v7

    const-class v8, Lorg/checkerframework/common/aliasing/qual/NonLeaked;

    invoke-virtual {v7, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    .line 104
    .local v7, "hasNonLeaked":Z
    iget-object v8, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v8, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    .line 106
    invoke-virtual {v8, v6}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v8

    const-class v9, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    .line 107
    invoke-virtual {v8, v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v8

    .line 108
    .local v8, "hasLeakedToResult":Z
    invoke-direct {p0, p1, v1, v7, v8}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->isUniqueCheck(Lcom/sun/source/tree/MethodInvocationTree;ZZZ)V

    .line 95
    .end local v6    # "param":Ljavax/lang/model/element/VariableElement;
    .end local v7    # "hasNonLeaked":Z
    .end local v8    # "hasLeakedToResult":Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    .line 116
    invoke-virtual {v5, v2}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/ExecutableElement;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    move-result-object v5

    .line 117
    .local v5, "annotatedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v6

    .line 118
    .local v6, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    if-eqz v6, :cond_6

    .line 119
    const-class v7, Lorg/checkerframework/common/aliasing/qual/NonLeaked;

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    .line 120
    .restart local v7    # "hasNonLeaked":Z
    const-class v8, Lorg/checkerframework/common/aliasing/qual/LeakedToResult;

    invoke-virtual {v6, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v8

    .line 121
    .restart local v8    # "hasLeakedToResult":Z
    invoke-direct {p0, p1, v1, v7, v8}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->isUniqueCheck(Lcom/sun/source/tree/MethodInvocationTree;ZZZ)V

    goto :goto_1

    .line 88
    .end local v5    # "annotatedType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .end local v6    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .end local v7    # "hasNonLeaked":Z
    .end local v8    # "hasLeakedToResult":Z
    :cond_5
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of arguments in the method call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is different from the number of parameters for the method declaration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 94
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 125
    .end local v0    # "parent":Lcom/sun/source/tree/Tree;
    .end local v1    # "parentIsStatement":Z
    .end local v2    # "methodElement":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    .end local v4    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 232
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "initializers":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 235
    .local v2, "exp":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v2}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->canBeLeaked(Lcom/sun/source/tree/Tree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "unique.leaked"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 238
    .end local v2    # "exp":Lcom/sun/source/tree/ExpressionTree;
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/ThrowTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 200
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 201
    .local v0, "exp":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v0}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->canBeLeaked(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "unique.leaked"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitThrow(Lcom/sun/source/tree/ThrowTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/aliasing/AliasingVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 210
    iget-object v0, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/common/aliasing/AliasingAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 211
    .local v0, "varType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    .line 212
    .local v1, "elt":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "unique.location.forbidden"

    if-eqz v2, :cond_0

    const-class v2, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasExplicitAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_2

    .line 214
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v5, :cond_1

    .line 215
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 216
    .local v2, "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    const-class v6, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-virtual {v5, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    iget-object v5, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v5, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_1

    .line 219
    .end local v2    # "arrayType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v5, :cond_3

    .line 220
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 221
    .local v2, "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 222
    .local v6, "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v7, Lorg/checkerframework/common/aliasing/qual/Unique;

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 223
    iget-object v7, p0, Lorg/checkerframework/common/aliasing/AliasingVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 225
    .end local v6    # "atm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    goto :goto_0

    .line 219
    .end local v2    # "declaredType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    :cond_3
    :goto_1
    nop

    .line 227
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

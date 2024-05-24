.class public Lorg/checkerframework/checker/optional/OptionalVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "OptionalVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final collectionType:Ljavax/lang/model/type/TypeMirror;

.field private final optionalGet:Ljavax/lang/model/element/ExecutableElement;

.field private final optionalIsPresent:Ljavax/lang/model/element/ExecutableElement;

.field private final optionalOf:Ljavax/lang/model/element/ExecutableElement;

.field private final optionalOfNullable:Ljavax/lang/model/element/ExecutableElement;

.field private final optionalOrElse:Ljavax/lang/model/element/ExecutableElement;

.field private final optionalOrElseGet:Ljavax/lang/model/element/ExecutableElement;

.field private final optionalOrElseThrow:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 61
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 62
    iget-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->types:Ljavax/lang/model/util/Types;

    const-class v1, Ljava/util/Collection;

    iget-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v3, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->elements:Ljavax/lang/model/util/Elements;

    invoke-static {v1, v2, v3}, Lorg/checkerframework/javacutil/TypesUtils;->typeFromClass(Ljava/lang/Class;Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->collectionType:Ljavax/lang/model/type/TypeMirror;

    .line 64
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 65
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    const-string v1, "java.util.Optional"

    const-string v2, "get"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalGet:Ljavax/lang/model/element/ExecutableElement;

    .line 66
    const-string v2, "isPresent"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalIsPresent:Ljavax/lang/model/element/ExecutableElement;

    .line 67
    const-string v2, "of"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOf:Ljavax/lang/model/element/ExecutableElement;

    .line 68
    const-string v2, "ofNullable"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOfNullable:Ljavax/lang/model/element/ExecutableElement;

    .line 69
    const-string v2, "orElse"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOrElse:Ljavax/lang/model/element/ExecutableElement;

    .line 70
    const-string v2, "orElseGet"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOrElseGet:Ljavax/lang/model/element/ExecutableElement;

    .line 71
    const-string v2, "orElseThrow"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOrElseThrow:Ljavax/lang/model/element/ExecutableElement;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/checker/optional/OptionalVisitor;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/optional/OptionalVisitor;
    .param p1, "x1"    # Ljavax/lang/model/type/TypeMirror;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isCollectionType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/checker/optional/OptionalVisitor;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/checker/optional/OptionalVisitor;
    .param p1, "x1"    # Ljavax/lang/model/type/TypeMirror;

    .line 39
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isOptionalType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    return v0
.end method

.method private isCallToGet(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 2
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;

    .line 81
    iget-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 82
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalGet:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    return v1
.end method

.method private isCallToIsPresent(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 2
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;

    .line 87
    iget-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 88
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalIsPresent:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    return v1
.end method

.method private isCollectionType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p1, "tm"    # Ljavax/lang/model/type/TypeMirror;

    .line 325
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->collectionType:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0, p1, v1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOptionalCreation(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 2
    .param p1, "methInvok"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 93
    iget-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 94
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOf:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOfNullable:Ljavax/lang/model/element/ExecutableElement;

    .line 95
    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 94
    :goto_1
    return v1
.end method

.method private isOptionalElimation(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 2
    .param p1, "methInvok"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 104
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalGet:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOrElse:Ljavax/lang/model/element/ExecutableElement;

    .line 105
    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOrElseGet:Ljavax/lang/model/element/ExecutableElement;

    .line 106
    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->optionalOrElseThrow:Ljavax/lang/model/element/ExecutableElement;

    .line 107
    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 104
    :goto_1
    return v1
.end method

.method private isOptionalType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .param p1, "tm"    # Ljavax/lang/model/type/TypeMirror;

    .line 330
    const-string v0, "java.util.Optional"

    invoke-static {p1, v0}, Lorg/checkerframework/javacutil/TypesUtils;->isDeclaredOfName(Ljavax/lang/model/type/TypeMirror;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private sameExpression(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 4
    .param p1, "tree1"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "tree2"    # Lcom/sun/source/tree/ExpressionTree;

    .line 164
    iget-object v0, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 165
    .local v0, "r1":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v1, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 166
    .local v1, "r2":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;->containsUnknown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static skipBlocks(Lcom/sun/source/tree/StatementTree;)Lcom/sun/source/tree/StatementTree;
    .locals 4
    .param p0, "tree"    # Lcom/sun/source/tree/StatementTree;

    .line 342
    if-nez p0, :cond_0

    .line 343
    return-object p0

    .line 345
    :cond_0
    move-object v0, p0

    .line 346
    .local v0, "s":Lcom/sun/source/tree/StatementTree;
    :goto_0
    invoke-interface {v0}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_2

    .line 347
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/BlockTree;

    invoke-interface {v1}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v1

    .line 348
    .local v1, "stmts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 349
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    .line 353
    .end local v1    # "stmts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    goto :goto_0

    .line 351
    .restart local v1    # "stmts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    :cond_1
    return-object v0

    .line 354
    .end local v1    # "stmts":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/StatementTree;>;"
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected createTypeValidator()Lorg/checkerframework/common/basetype/BaseTypeValidator;
    .locals 3

    .line 76
    new-instance v0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;

    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v2, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-direct {v0, p0, v1, p0, v2}, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;-><init>(Lorg/checkerframework/checker/optional/OptionalVisitor;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-object v0
.end method

.method protected bridge synthetic createTypeValidator()Lorg/checkerframework/common/basetype/TypeValidator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/checkerframework/checker/optional/OptionalVisitor;->createTypeValidator()Lorg/checkerframework/common/basetype/BaseTypeValidator;

    move-result-object v0

    return-object v0
.end method

.method public handleConditionalStatementIsPresentGet(Lcom/sun/source/tree/IfTree;)V
    .locals 16
    .param p1, "node"    # Lcom/sun/source/tree/IfTree;

    .line 188
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 189
    .local v1, "condExpr":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/IfTree;->getThenStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/checker/optional/OptionalVisitor;->skipBlocks(Lcom/sun/source/tree/StatementTree;)Lcom/sun/source/tree/StatementTree;

    move-result-object v2

    .line 190
    .local v2, "thenStmt":Lcom/sun/source/tree/StatementTree;
    invoke-interface/range {p1 .. p1}, Lcom/sun/source/tree/IfTree;->getElseStatement()Lcom/sun/source/tree/StatementTree;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/checker/optional/OptionalVisitor;->skipBlocks(Lcom/sun/source/tree/StatementTree;)Lcom/sun/source/tree/StatementTree;

    move-result-object v3

    .line 192
    .local v3, "elseStmt":Lcom/sun/source/tree/StatementTree;
    if-eqz v3, :cond_1

    .line 193
    invoke-interface {v3}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/sun/source/tree/BlockTree;

    .line 194
    invoke-interface {v4}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    :cond_0
    return-void

    .line 198
    :cond_1
    invoke-direct {v0, v1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isCallToIsPresent(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    return-void

    .line 201
    :cond_2
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 202
    .local v4, "receiver":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v2}, Lcom/sun/source/tree/StatementTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v5, v6, :cond_3

    .line 203
    return-void

    .line 205
    :cond_3
    move-object v5, v2

    check-cast v5, Lcom/sun/source/tree/ExpressionStatementTree;

    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 206
    .local v5, "thenExpr":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v5}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v6

    sget-object v7, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-eq v6, v7, :cond_4

    .line 207
    return-void

    .line 209
    :cond_4
    move-object v6, v5

    check-cast v6, Lcom/sun/source/tree/MethodInvocationTree;

    .line 210
    .local v6, "invok":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-interface {v6}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v7

    .line 211
    .local v7, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 212
    return-void

    .line 214
    :cond_5
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v9}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v9

    .line 215
    .local v9, "arg":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {v0, v9}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isCallToGet(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 216
    return-void

    .line 218
    :cond_6
    invoke-static {v9}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    .line 219
    .local v10, "getReceiver":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 220
    return-void

    .line 222
    :cond_7
    invoke-interface {v6}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v11

    .line 224
    .local v11, "method":Lcom/sun/source/tree/ExpressionTree;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, "methodString":Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 226
    .local v13, "dotPos":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_8

    .line 227
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-virtual {v12, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "::"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 231
    :cond_8
    iget-object v8, v0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v14, "prefer.ifpresent"

    filled-new-array {v4, v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v14

    move-object/from16 v15, p1

    invoke-virtual {v8, v14, v15}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public handleCreationElimination(Lcom/sun/source/tree/MethodInvocationTree;)V
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 248
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isOptionalElimation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 252
    .local v0, "receiver":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 253
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isOptionalCreation(Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "introduce.eliminate"

    invoke-static {v3, v2}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 258
    return-void

    .line 254
    :cond_2
    :goto_0
    return-void
.end method

.method public handleTernaryIsPresentGet(Lcom/sun/source/tree/ConditionalExpressionTree;)V
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 126
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 127
    .local v0, "condExpr":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 128
    .local v1, "trueExpr":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 130
    .local v2, "falseExpr":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v0}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isCallToIsPresent(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 135
    .local v3, "receiver":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-eq v4, v5, :cond_1

    .line 136
    return-void

    .line 138
    :cond_1
    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 139
    .local v4, "trueReceiver":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v4}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isCallToGet(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    return-void

    .line 142
    :cond_2
    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v5

    .line 146
    .local v5, "getReceiver":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v3, v5}, Lorg/checkerframework/checker/optional/OptionalVisitor;->sameExpression(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    move-object v6, v1

    check-cast v6, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-static {v6}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v6

    .line 149
    .local v6, "ele":Ljavax/lang/model/element/ExecutableElement;
    iget-object v7, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 156
    invoke-interface {v6}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v8

    filled-new-array {v3, v8, v2}, [Ljava/lang/Object;

    move-result-object v8

    .line 150
    const-string v9, "prefer.map.and.orelse"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 149
    invoke-virtual {v7, v8, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 160
    .end local v6    # "ele":Ljavax/lang/model/element/ExecutableElement;
    :cond_3
    return-void
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/optional/OptionalVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 112
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->handleTernaryIsPresentGet(Lcom/sun/source/tree/ConditionalExpressionTree;)V

    .line 113
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/optional/OptionalVisitor;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/IfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 175
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->handleConditionalStatementIsPresentGet(Lcom/sun/source/tree/IfTree;)V

    .line 176
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/optional/OptionalVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 236
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->handleCreationElimination(Lcom/sun/source/tree/MethodInvocationTree;)V

    .line 237
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/optional/OptionalVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 267
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 268
    .local v0, "ve":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 269
    .local v1, "tm":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v1}, Lorg/checkerframework/checker/optional/OptionalVisitor;->isOptionalType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    .line 271
    .local v2, "ekind":Ljavax/lang/model/element/ElementKind;
    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "optional.field"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    :cond_0
    sget-object v3, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_1

    .line 274
    iget-object v3, p0, Lorg/checkerframework/checker/optional/OptionalVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "optional.parameter"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 277
    .end local v2    # "ekind":Ljavax/lang/model/element/ElementKind;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

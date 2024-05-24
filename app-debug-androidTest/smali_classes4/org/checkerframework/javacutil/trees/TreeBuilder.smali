.class public Lorg/checkerframework/javacutil/trees/TreeBuilder;
.super Ljava/lang/Object;
.source "TreeBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final elements:Ljavax/lang/model/util/Elements;

.field protected final env:Ljavax/annotation/processing/ProcessingEnvironment;

.field protected final javacTypes:Lcom/sun/tools/javac/code/Types;

.field protected final maker:Lcom/sun/tools/javac/tree/TreeMaker;

.field protected final modelTypes:Ljavax/lang/model/util/Types;

.field protected final names:Lcom/sun/tools/javac/util/Names;

.field protected final symtab:Lcom/sun/tools/javac/code/Symtab;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 2
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 60
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->elements:Ljavax/lang/model/util/Elements;

    .line 61
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->modelTypes:Ljavax/lang/model/util/Types;

    .line 62
    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->javacTypes:Lcom/sun/tools/javac/code/Types;

    .line 63
    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeMaker;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/tree/TreeMaker;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    .line 64
    invoke-static {v0}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->names:Lcom/sun/tools/javac/util/Names;

    .line 65
    invoke-static {v0}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->symtab:Lcom/sun/tools/javac/code/Symtab;

    .line 66
    return-void
.end method

.method public static getValueOfMethod(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .locals 9
    .param p0, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p1, "boxedType"    # Ljavax/lang/model/type/TypeMirror;

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "valueOfMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v1

    invoke-interface {v1, p1}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    .line 430
    .local v1, "unboxedType":Ljavax/lang/model/type/TypeMirror;
    move-object v2, p1

    check-cast v2, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 432
    .local v2, "boxedElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v3

    invoke-interface {v3, v2}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 433
    .local v4, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    .line 435
    .local v5, "methodName":Ljavax/lang/model/element/Name;
    const-string v6, "valueOf"

    invoke-interface {v5, v6}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 436
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v6

    .line 437
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 438
    invoke-interface {p0}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v8}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 439
    move-object v0, v4

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 442
    .end local v4    # "method":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "methodName":Ljavax/lang/model/element/Name;
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    :cond_0
    goto :goto_0

    .line 444
    :cond_1
    if-eqz v0, :cond_2

    .line 446
    return-object v0

    .line 444
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(nullness): no valueOf method declared for boxed type"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public buildArrayAccess(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ArrayAccessTree;
    .locals 4
    .param p1, "array"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "index"    # Lcom/sun/source/tree/ExpressionTree;

    .line 384
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/ArrayType;

    .line 385
    .local v0, "arrayType":Ljavax/lang/model/type/ArrayType;
    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v3, p2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 386
    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Indexed(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v1

    .line 387
    .local v1, "access":Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;
    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 388
    return-object v1
.end method

.method public buildArrayLengthAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;
    .locals 3
    .param p1, "expression"    # Lcom/sun/source/tree/ExpressionTree;

    .line 236
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->symtab:Lcom/sun/tools/javac/code/Symtab;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 236
    return-object v0
.end method

.method public buildAssignment(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/AssignmentTree;
    .locals 3
    .param p1, "lhs"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "rhs"    # Lcom/sun/source/tree/ExpressionTree;

    .line 351
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Assign(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    .line 352
    .local v0, "assign":Lcom/sun/tools/javac/tree/JCTree$JCAssign;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 353
    return-object v0
.end method

.method public buildAssignment(Lcom/sun/source/tree/VariableTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/StatementTree;
    .locals 3
    .param p1, "variable"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "expr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 340
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v1}, Lcom/sun/tools/javac/tree/TreeInfo;->symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Assignment(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public buildBinary(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/Tree$Kind;Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;
    .locals 4
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "op"    # Lcom/sun/source/tree/Tree$Kind;
    .param p3, "left"    # Lcom/sun/source/tree/ExpressionTree;
    .param p4, "right"    # Lcom/sun/source/tree/ExpressionTree;

    .line 661
    invoke-virtual {p0, p2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->kindToTag(Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    .line 662
    .local v0, "jcOp":Lcom/sun/tools/javac/tree/JCTree$Tag;
    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v2, p3

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v3, p4

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 663
    invoke-virtual {v1, v0, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Binary(Lcom/sun/tools/javac/tree/JCTree$Tag;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v1

    .line 664
    .local v1, "binary":Lcom/sun/tools/javac/tree/JCTree$JCBinary;
    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 665
    return-object v1
.end method

.method public buildClassUse(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/IdentifierTree;
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 398
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    return-object v0
.end method

.method public buildHasNextMethodAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;
    .locals 7
    .param p1, "iteratorExpr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 144
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 145
    .local v0, "exprType":Ljavax/lang/model/type/DeclaredType;
    if-eqz v0, :cond_3

    .line 147
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 150
    .local v1, "exprElement":Ljavax/lang/model/element/TypeElement;
    const/4 v2, 0x0

    .line 153
    .local v2, "hasNextMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v3, v1}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 154
    .local v4, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    .line 156
    .local v5, "methodName":Ljavax/lang/model/element/Name;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    const-string v6, "hasNext"

    invoke-interface {v5, v6}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    move-object v2, v4

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 161
    .end local v4    # "method":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "methodName":Ljavax/lang/model/element/Name;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    if-eqz v2, :cond_2

    .line 165
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v4, p1

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 167
    invoke-virtual {v3, v4, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 168
    .local v3, "hasNextAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 170
    return-object v3

    .line 163
    .end local v3    # "hasNextAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "no hasNext method declared for expression type"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 145
    .end local v1    # "exprElement":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "hasNextMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "expression must be of declared type Iterator<>"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public buildIteratorMethodAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;
    .locals 12
    .param p1, "iterableExpr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 75
    nop

    .line 76
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->upperBound(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 77
    .local v0, "exprType":Ljavax/lang/model/type/DeclaredType;
    if-eqz v0, :cond_5

    .line 79
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 82
    .local v1, "exprElement":Ljavax/lang/model/element/TypeElement;
    const/4 v2, 0x0

    .line 85
    .local v2, "iteratorMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v3, v1}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 86
    .local v4, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    .line 88
    .local v5, "methodName":Ljavax/lang/model/element/Name;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    const-string v6, "iterator"

    invoke-interface {v5, v6}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    move-object v2, v4

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 93
    .end local v4    # "method":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "methodName":Ljavax/lang/model/element/Name;
    :cond_0
    goto :goto_0

    .line 95
    :cond_1
    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 99
    .local v3, "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$MethodType;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v4

    .line 100
    .local v4, "methodClass":Lcom/sun/tools/javac/code/Symbol$TypeSymbol;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$MethodType;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/DeclaredType;

    .line 101
    .local v5, "iteratorType":Ljavax/lang/model/type/DeclaredType;
    iget-object v6, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->javacTypes:Lcom/sun/tools/javac/code/Types;

    move-object v7, v5

    check-cast v7, Lcom/sun/tools/javac/code/Type;

    iget-object v8, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->symtab:Lcom/sun/tools/javac/code/Symtab;

    iget-object v8, v8, Lcom/sun/tools/javac/code/Symtab;->iteratorType:Lcom/sun/tools/javac/code/Type;

    .line 103
    invoke-virtual {v8}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/tools/javac/code/Types;->asSuper(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljavax/lang/model/type/DeclaredType;

    .line 105
    invoke-interface {v5}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 106
    .local v6, "numIterTypeArgs":I
    const/4 v7, 0x1

    if-gt v6, v7, :cond_3

    .line 108
    if-ne v6, v7, :cond_2

    .line 109
    invoke-interface {v5}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/type/TypeMirror;

    .line 111
    .local v8, "elementType":Ljavax/lang/model/type/TypeMirror;
    instance-of v10, v8, Lcom/sun/tools/javac/code/Type$CapturedType;

    if-eqz v10, :cond_2

    .line 112
    move-object v10, v8

    check-cast v10, Lcom/sun/tools/javac/code/Type$CapturedType;

    iget-object v8, v10, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 114
    iget-object v10, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->modelTypes:Ljavax/lang/model/util/Types;

    .line 116
    invoke-interface {v10, v5}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/TypeElement;

    new-array v7, v7, [Ljavax/lang/model/type/TypeMirror;

    aput-object v8, v7, v9

    .line 115
    invoke-interface {v10, v11, v7}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v5

    .line 122
    .end local v8    # "elementType":Ljavax/lang/model/type/TypeMirror;
    :cond_2
    new-instance v7, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 124
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    move-object v9, v5

    check-cast v9, Lcom/sun/tools/javac/code/Type;

    .line 126
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 129
    .local v7, "updatedMethodType":Lcom/sun/tools/javac/code/Type$MethodType;
    iget-object v8, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v9, p1

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 131
    invoke-virtual {v8, v9, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 132
    .local v8, "iteratorAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-virtual {v8, v7}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 134
    return-object v8

    .line 106
    .end local v7    # "updatedMethodType":Lcom/sun/tools/javac/code/Type$MethodType;
    .end local v8    # "iteratorAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_3
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "expected at most one type argument for Iterator"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 95
    .end local v3    # "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    .end local v4    # "methodClass":Lcom/sun/tools/javac/code/Symbol$TypeSymbol;
    .end local v5    # "iteratorType":Ljavax/lang/model/type/DeclaredType;
    .end local v6    # "numIterTypeArgs":I
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(nullness): no iterator method declared for expression type"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 77
    .end local v1    # "exprElement":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "iteratorMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "expression must be of declared type Iterable<>"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public buildLessThan(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/BinaryTree;
    .locals 4
    .param p1, "left"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "right"    # Lcom/sun/source/tree/ExpressionTree;

    .line 369
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    sget-object v1, Lcom/sun/tools/javac/tree/JCTree$Tag;->LT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v3, p2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 370
    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/tree/TreeMaker;->Binary(Lcom/sun/tools/javac/tree/JCTree$Tag;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    .line 372
    .local v0, "binary":Lcom/sun/tools/javac/tree/JCTree$JCBinary;
    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->modelTypes:Ljavax/lang/model/util/Types;

    sget-object v2, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Types;->getPrimitiveType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 373
    return-object v0
.end method

.method public buildLiteral(Ljava/lang/Object;)Lcom/sun/source/tree/LiteralTree;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lcom/sun/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    return-object v0
.end method

.method public buildMethodInvocation(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MethodInvocationTree;
    .locals 2
    .param p1, "methodExpr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 247
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method

.method public buildMethodInvocation(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MethodInvocationTree;
    .locals 3
    .param p1, "methodExpr"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "argExpr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 260
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 262
    invoke-static {v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->App(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    return-object v0
.end method

.method public buildNewArray(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Lcom/sun/source/tree/NewArrayTree;
    .locals 5
    .param p1, "componentType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/List<",
            "Lcom/sun/source/tree/ExpressionTree;",
            ">;)",
            "Lcom/sun/source/tree/NewArrayTree;"
        }
    .end annotation

    .line 676
    .local p2, "elems":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/ExpressionTree;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v0, "exprs":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 678
    .local v2, "elem":Lcom/sun/source/tree/ExpressionTree;
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v2    # "elem":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    .line 681
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v2, p1

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 683
    invoke-virtual {p0, v2}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->buildClassUse(Ljavax/lang/model/element/Element;)Lcom/sun/source/tree/IdentifierTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 684
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 685
    invoke-static {v0}, Lcom/sun/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lcom/sun/tools/javac/util/List;

    move-result-object v4

    .line 682
    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->NewArray(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v1

    .line 686
    .local v1, "newArray":Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    iget-object v2, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->javacTypes:Lcom/sun/tools/javac/code/Types;

    move-object v3, p1

    check-cast v3, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/code/Types;->makeArrayType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type$ArrayType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 687
    return-object v1
.end method

.method public buildNextMethodAccess(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/MemberSelectTree;
    .locals 9
    .param p1, "iteratorExpr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 180
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 181
    .local v0, "exprType":Ljavax/lang/model/type/DeclaredType;
    if-eqz v0, :cond_4

    .line 183
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 186
    .local v1, "exprElement":Ljavax/lang/model/element/TypeElement;
    const/4 v2, 0x0

    .line 189
    .local v2, "nextMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v3, v1}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    .line 190
    .local v4, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    .line 192
    .local v5, "methodName":Ljavax/lang/model/element/Name;
    invoke-interface {v4}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    const-string v6, "next"

    invoke-interface {v5, v6}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    move-object v2, v4

    check-cast v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 197
    .end local v4    # "method":Ljavax/lang/model/element/ExecutableElement;
    .end local v5    # "methodName":Ljavax/lang/model/element/Name;
    :cond_0
    goto :goto_0

    .line 199
    :cond_1
    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 203
    .local v3, "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type$MethodType;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v4

    .line 206
    .local v4, "methodClass":Lcom/sun/tools/javac/code/Symbol$TypeSymbol;
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->symtab:Lcom/sun/tools/javac/code/Symtab;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .local v5, "elementType":Lcom/sun/tools/javac/code/Type;
    goto :goto_1

    .line 209
    .end local v5    # "elementType":Lcom/sun/tools/javac/code/Type;
    :cond_2
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type;

    .line 214
    .restart local v5    # "elementType":Lcom/sun/tools/javac/code/Type;
    :goto_1
    new-instance v6, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 216
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    .line 218
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v5, v8, v4}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 221
    .local v6, "updatedMethodType":Lcom/sun/tools/javac/code/Type$MethodType;
    iget-object v7, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v8, p1

    check-cast v8, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 222
    invoke-virtual {v7, v8, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 223
    .local v7, "nextAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-virtual {v7, v6}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 225
    return-object v7

    .line 199
    .end local v3    # "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    .end local v4    # "methodClass":Lcom/sun/tools/javac/code/Symbol$TypeSymbol;
    .end local v5    # "elementType":Lcom/sun/tools/javac/code/Type;
    .end local v6    # "updatedMethodType":Lcom/sun/tools/javac/code/Type$MethodType;
    .end local v7    # "nextAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "@AssumeAssertion(nullness): no next method declared for expression type"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 181
    .end local v1    # "exprElement":Ljavax/lang/model/element/TypeElement;
    .end local v2    # "nextMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "expression must be of declared type Iterator<>"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public buildPrimValueMethodAccess(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MemberSelectTree;
    .locals 9
    .param p1, "expr"    # Lcom/sun/source/tree/Tree;

    .line 457
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 458
    .local v0, "boxedType":Ljavax/lang/model/type/TypeMirror;
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 460
    .local v1, "boxedElement":Ljavax/lang/model/element/TypeElement;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    iget-object v2, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->modelTypes:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v0}, Ljavax/lang/model/util/Types;->unboxedType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object v2

    .line 464
    .local v2, "unboxedType":Ljavax/lang/model/type/TypeMirror;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "primValueName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 468
    .local v4, "primValueMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    iget-object v5, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->elements:Ljavax/lang/model/util/Elements;

    invoke-interface {v5, v1}, Ljavax/lang/model/util/Elements;->getAllMembers(Ljavax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    .line 469
    .local v6, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v6}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v7

    .line 471
    .local v7, "methodName":Ljavax/lang/model/element/Name;
    invoke-interface {v7, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 472
    move-object v4, v6

    check-cast v4, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 474
    .end local v6    # "method":Ljavax/lang/model/element/ExecutableElement;
    .end local v7    # "methodName":Ljavax/lang/model/element/Name;
    :cond_0
    goto :goto_0

    .line 476
    :cond_1
    if-eqz v4, :cond_2

    .line 479
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 481
    .local v5, "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    iget-object v6, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v7, p1

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 482
    invoke-virtual {v6, v7, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v6

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 483
    .local v6, "primValueAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-virtual {v6, v5}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 485
    return-object v6

    .line 476
    .end local v5    # "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    .end local v6    # "primValueAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "@AssumeAssertion(nullness): no *Value method declared for boxed type"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 460
    .end local v2    # "unboxedType":Ljavax/lang/model/type/TypeMirror;
    .end local v3    # "primValueName":Ljava/lang/String;
    .end local v4    # "primValueMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public buildTypeCast(Ljavax/lang/model/type/TypeMirror;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/TypeCastTree;
    .locals 3
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "expr"    # Lcom/sun/source/tree/ExpressionTree;

    .line 329
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    move-object v2, p2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->TypeCast(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    return-object v0
.end method

.method public buildValueOfMethodAccess(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/MemberSelectTree;
    .locals 5
    .param p1, "expr"    # Lcom/sun/source/tree/Tree;

    .line 408
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 410
    .local v0, "boxedType":Ljavax/lang/model/type/TypeMirror;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isBoxedPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->env:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-static {v1, v0}, Lorg/checkerframework/javacutil/trees/TreeBuilder;->getValueOfMethod(Ljavax/annotation/processing/ProcessingEnvironment;Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    .line 415
    .local v1, "valueOfMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->asType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 417
    .local v2, "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v4, p1

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 418
    invoke-virtual {v3, v4, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Select(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 419
    .local v3, "valueOfAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 421
    return-object v3

    .line 410
    .end local v1    # "valueOfMethod":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .end local v2    # "methodType":Lcom/sun/tools/javac/code/Type$MethodType;
    .end local v3    # "valueOfAccess":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public buildVariableDecl(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;
    .locals 8
    .param p1, "type"    # Lcom/sun/source/tree/Tree;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "owner"    # Ljavax/lang/model/element/Element;
    .param p4, "initializer"    # Lcom/sun/source/tree/ExpressionTree;

    .line 295
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 296
    .local v0, "typeMirror":Lcom/sun/tools/javac/code/Type;
    new-instance v7, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->names:Lcom/sun/tools/javac/util/Names;

    .line 297
    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    move-object v6, p3

    check-cast v6, Lcom/sun/tools/javac/code/Symbol;

    move-object v1, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 298
    .local v1, "sym":Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;
    iget-object v2, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/tools/javac/tree/TreeMaker;->Modifiers(J)Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    .line 299
    .local v2, "mods":Lcom/sun/tools/javac/tree/JCTree$JCModifiers;
    iget-object v3, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    iget-object v4, v1, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    move-object v5, p1

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-object v6, p4

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 300
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v3

    .line 305
    .local v3, "decl":Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->setType(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    .line 306
    iput-object v1, v3, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 307
    invoke-virtual {v1, v3}, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;->setDeclaration(Lcom/sun/source/tree/VariableTree;)V

    .line 308
    return-object v3
.end method

.method public buildVariableDecl(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljavax/lang/model/element/Element;Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/VariableTree;
    .locals 7
    .param p1, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "owner"    # Ljavax/lang/model/element/Element;
    .param p4, "initializer"    # Lcom/sun/source/tree/ExpressionTree;

    .line 276
    new-instance v6, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->names:Lcom/sun/tools/javac/util/Names;

    .line 277
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/sun/tools/javac/code/Type;

    move-object v5, p3

    check-cast v5, Lcom/sun/tools/javac/code/Symbol;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 278
    .local v0, "sym":Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;
    iget-object v1, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v2, p4

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0, v2}, Lcom/sun/tools/javac/tree/TreeMaker;->VarDef(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;)Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    .line 279
    .local v1, "tree":Lcom/sun/source/tree/VariableTree;
    invoke-virtual {v0, v1}, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;->setDeclaration(Lcom/sun/source/tree/VariableTree;)V

    .line 280
    return-object v1
.end method

.method public buildVariableUse(Lcom/sun/source/tree/VariableTree;)Lcom/sun/source/tree/IdentifierTree;
    .locals 2
    .param p1, "decl"    # Lcom/sun/source/tree/VariableTree;

    .line 318
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/TreeBuilder;->maker:Lcom/sun/tools/javac/tree/TreeMaker;

    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/tree/TreeMaker;->Ident(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    return-object v0
.end method

.method public kindToTag(Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/tools/javac/tree/JCTree$Tag;
    .locals 2
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 490
    sget-object v0, Lorg/checkerframework/javacutil/trees/TreeBuilder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 646
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->NO_TAG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 644
    :pswitch_0
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BITXOR_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 642
    :pswitch_1
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BITXOR:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 640
    :pswitch_2
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->WHILELOOP:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 638
    :pswitch_3
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->VARDEF:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 636
    :pswitch_4
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->USR_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 634
    :pswitch_5
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->USR:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 632
    :pswitch_6
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->TYPEUNION:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 630
    :pswitch_7
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->POS:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 628
    :pswitch_8
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->NEG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 626
    :pswitch_9
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->TYPEPARAMETER:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 624
    :pswitch_a
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->TYPECAST:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 622
    :pswitch_b
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->TRY:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 620
    :pswitch_c
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->THROW:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 618
    :pswitch_d
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->SYNCHRONIZED:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 616
    :pswitch_e
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->SWITCH:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 614
    :pswitch_f
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->SR_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 612
    :pswitch_10
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->SR:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 610
    :pswitch_11
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->RETURN:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 608
    :pswitch_12
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->MOD_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 606
    :pswitch_13
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->MOD:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 604
    :pswitch_14
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->PREINC:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 602
    :pswitch_15
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->PREDEC:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 600
    :pswitch_16
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->POSTINC:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 598
    :pswitch_17
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->POSTDEC:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 596
    :pswitch_18
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->PLUS_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 594
    :pswitch_19
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->PLUS:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 592
    :pswitch_1a
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->PARENS:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 590
    :pswitch_1b
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BITOR_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 588
    :pswitch_1c
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BITOR:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 586
    :pswitch_1d
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->NE:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 584
    :pswitch_1e
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->NEWCLASS:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 582
    :pswitch_1f
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->NEWARRAY:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 580
    :pswitch_20
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->MUL_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 578
    :pswitch_21
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->MUL:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 576
    :pswitch_22
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->MODIFIERS:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 574
    :pswitch_23
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->MINUS_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 572
    :pswitch_24
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->MINUS:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 570
    :pswitch_25
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->APPLY:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 568
    :pswitch_26
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->METHODDEF:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 566
    :pswitch_27
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->SELECT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 564
    :pswitch_28
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->NOT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 562
    :pswitch_29
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->LE:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 560
    :pswitch_2a
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->LT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 558
    :pswitch_2b
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->SL_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 556
    :pswitch_2c
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->SL:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 554
    :pswitch_2d
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->LABELLED:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 552
    :pswitch_2e
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->TYPETEST:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 550
    :pswitch_2f
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->IMPORT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 548
    :pswitch_30
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->IF:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 546
    :pswitch_31
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->IDENT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 544
    :pswitch_32
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->GE:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 542
    :pswitch_33
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->GT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 540
    :pswitch_34
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->FORLOOP:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 538
    :pswitch_35
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->EXEC:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 536
    :pswitch_36
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->EQ:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 534
    :pswitch_37
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->FOREACHLOOP:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 532
    :pswitch_38
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->DOLOOP:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 530
    :pswitch_39
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->DIV_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 528
    :pswitch_3a
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->DIV:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 526
    :pswitch_3b
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->CONTINUE:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 524
    :pswitch_3c
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->OR:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 522
    :pswitch_3d
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->CONDEXPR:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 520
    :pswitch_3e
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->AND:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 518
    :pswitch_3f
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 516
    :pswitch_40
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->CATCH:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 514
    :pswitch_41
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->CASE:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 512
    :pswitch_42
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BREAK:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 510
    :pswitch_43
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BLOCK:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 508
    :pswitch_44
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->COMPL:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 506
    :pswitch_45
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->ASSIGN:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 504
    :pswitch_46
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->ASSERT:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 502
    :pswitch_47
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 500
    :pswitch_48
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->INDEXED:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 498
    :pswitch_49
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->TYPE_ANNOTATION:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 496
    :pswitch_4a
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 494
    :pswitch_4b
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BITAND_ASG:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    .line 492
    :pswitch_4c
    sget-object v0, Lcom/sun/tools/javac/tree/JCTree$Tag;->BITAND:Lcom/sun/tools/javac/tree/JCTree$Tag;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lorg/checkerframework/checker/regex/RegexVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "RegexVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final matchResultEnd:Ljavax/lang/model/element/ExecutableElement;

.field private final matchResultGroup:Ljavax/lang/model/element/ExecutableElement;

.field private final matchResultStart:Ljavax/lang/model/element/ExecutableElement;

.field private final patternCompile:Ljavax/lang/model/element/ExecutableElement;

.field private final patternLiteral:Ljavax/lang/model/element/VariableElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 45
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 47
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    const-class v1, Ljava/util/regex/MatchResult;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->matchResultEnd:Ljavax/lang/model/element/ExecutableElement;

    .line 49
    const-class v1, Ljava/util/regex/MatchResult;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->matchResultGroup:Ljavax/lang/model/element/ExecutableElement;

    .line 51
    const-class v1, Ljava/util/regex/MatchResult;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->matchResultStart:Ljavax/lang/model/element/ExecutableElement;

    .line 53
    const-class v1, Ljava/util/regex/Pattern;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compile"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->patternCompile:Ljavax/lang/model/element/ExecutableElement;

    .line 55
    const-class v1, Ljava/util/regex/Pattern;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LITERAL"

    invoke-static {v1, v2, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->patternLiteral:Ljavax/lang/model/element/VariableElement;

    .line 57
    return-void
.end method


# virtual methods
.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "declarationType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "useType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;

    .line 146
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 158
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/regex/RegexVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 66
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->patternCompile:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 68
    .local v1, "flagParam":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 69
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/MemberSelectTree;

    .line 70
    .local v2, "memSelect":Lcom/sun/source/tree/MemberSelectTree;
    iget-object v3, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->patternLiteral:Ljavax/lang/model/element/VariableElement;

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/TreeUtils;->isSpecificFieldAccess(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/VariableElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getTypeArguments()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/checker/regex/RegexVisitor;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Void;

    .line 77
    .local v3, "r":Ljava/lang/Void;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/checkerframework/checker/regex/RegexVisitor;->scan(Lcom/sun/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/checker/regex/RegexVisitor;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/Void;

    .line 78
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/checkerframework/checker/regex/RegexVisitor;->scan(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/checker/regex/RegexVisitor;->reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/Void;

    .line 79
    return-object v3

    .line 82
    .end local v1    # "flagParam":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "memSelect":Lcom/sun/source/tree/MemberSelectTree;
    .end local v3    # "r":Ljava/lang/Void;
    :cond_0
    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->matchResultEnd:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->matchResultGroup:Ljavax/lang/model/element/ExecutableElement;

    .line 83
    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->matchResultStart:Ljavax/lang/model/element/ExecutableElement;

    .line 84
    invoke-static {p1, v1, v0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    :cond_2
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 90
    .local v1, "group":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->INT_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_6

    .line 91
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/LiteralTree;

    .line 92
    .local v2, "literal":Lcom/sun/source/tree/LiteralTree;
    invoke-interface {v2}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 93
    .local v3, "paramGroups":I
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 94
    .local v4, "receiver":Lcom/sun/source/tree/ExpressionTree;
    if-nez v4, :cond_3

    .line 99
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v5

    return-object v5

    .line 101
    :cond_3
    const/4 v5, 0x0

    .line 102
    .local v5, "annoGroups":I
    iget-object v6, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    invoke-virtual {v6, v4}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v6

    .line 104
    .local v6, "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v6, :cond_4

    const-class v7, Lorg/checkerframework/checker/regex/qual/Regex;

    invoke-virtual {v6, v7}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 105
    iget-object v7, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v7, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;

    const-class v8, Lorg/checkerframework/checker/regex/qual/Regex;

    .line 106
    invoke-virtual {v6, v8}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/checker/regex/RegexAnnotatedTypeFactory;->getGroupCount(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v5

    .line 108
    :cond_4
    if-le v3, v5, :cond_5

    .line 109
    iget-object v7, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9, v4}, [Ljava/lang/Object;

    move-result-object v8

    .line 110
    const-string v9, "group.count.invalid"

    invoke-static {v9, v8}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v8

    .line 109
    invoke-virtual {v7, v8, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 114
    .end local v2    # "literal":Lcom/sun/source/tree/LiteralTree;
    .end local v3    # "paramGroups":I
    .end local v4    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "annoGroups":I
    .end local v6    # "receiverType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_5
    goto :goto_0

    .line 115
    :cond_6
    iget-object v3, p0, Lorg/checkerframework/checker/regex/RegexVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v4, "group.count.unknown"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 118
    .end local v1    # "group":Lcom/sun/source/tree/ExpressionTree;
    :cond_7
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

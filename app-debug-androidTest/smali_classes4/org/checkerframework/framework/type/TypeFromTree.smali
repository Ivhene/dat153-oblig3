.class Lorg/checkerframework/framework/type/TypeFromTree;
.super Ljava/lang/Object;
.source "TypeFromTree.java"


# static fields
.field private static final classVisitor:Lorg/checkerframework/framework/type/TypeFromClassVisitor;

.field private static final expressionVisitor:Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;

.field private static final memberVisitor:Lorg/checkerframework/framework/type/TypeFromMemberVisitor;

.field private static final typeTreeVisitor:Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->typeTreeVisitor:Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;

    .line 23
    new-instance v0, Lorg/checkerframework/framework/type/TypeFromMemberVisitor;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/TypeFromMemberVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->memberVisitor:Lorg/checkerframework/framework/type/TypeFromMemberVisitor;

    .line 24
    new-instance v0, Lorg/checkerframework/framework/type/TypeFromClassVisitor;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/TypeFromClassVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->classVisitor:Lorg/checkerframework/framework/type/TypeFromClassVisitor;

    .line 25
    new-instance v0, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;

    invoke-direct {v0}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->expressionVisitor:Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static abortIfTreeIsNull(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)V
    .locals 3
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 81
    if-eqz p1, :cond_0

    .line 84
    return-void

    .line 82
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered null tree"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->summarize(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static abortIfTypeIsExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 102
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_0

    .line 106
    return-void

    .line 103
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Executable typekind:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTree;->summarize(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromClassTree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .locals 1
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/ClassTree;

    .line 71
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->abortIfTreeIsNull(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)V

    .line 73
    sget-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->classVisitor:Lorg/checkerframework/framework/type/TypeFromClassVisitor;

    .line 74
    invoke-virtual {v0, p1, p0}, Lorg/checkerframework/framework/type/TypeFromClassVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    .line 75
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/type/TypeFromTree;->abortIfTypeIsExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 76
    return-object v0
.end method

.method public static fromExpression(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 34
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->abortIfTreeIsNull(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)V

    .line 36
    sget-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->expressionVisitor:Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;

    invoke-virtual {v0, p1, p0}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 37
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/type/TypeFromTree;->ifExecutableCheckElement(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 39
    return-object v0
.end method

.method public static fromMember(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 48
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->abortIfTreeIsNull(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)V

    .line 50
    sget-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->memberVisitor:Lorg/checkerframework/framework/type/TypeFromMemberVisitor;

    invoke-virtual {v0, p1, p0}, Lorg/checkerframework/framework/type/TypeFromMemberVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 51
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/type/TypeFromTree;->ifExecutableCheckElement(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 52
    return-object v0
.end method

.method public static fromTypeTree(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 61
    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->abortIfTreeIsNull(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)V

    .line 63
    sget-object v0, Lorg/checkerframework/framework/type/TypeFromTree;->typeTreeVisitor:Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;

    invoke-virtual {v0, p1, p0}, Lorg/checkerframework/framework/type/TypeFromTypeTreeVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 64
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p0, p1, v0}, Lorg/checkerframework/framework/type/TypeFromTree;->abortIfTypeIsExecutable(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 65
    return-object v0
.end method

.method protected static ifExecutableCheckElement(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 3
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 90
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 91
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getElement()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executable has no element:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-static {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromTree;->summarize(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method protected static summarize(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Ljava/lang/String;
    .locals 2
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntypeFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static summarize(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/String;
    .locals 2
    .param p0, "typeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/checkerframework/framework/type/TypeFromTree;->summarize(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

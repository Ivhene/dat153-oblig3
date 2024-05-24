.class public Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators;
.super Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;
.source "CommonValidators.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;

    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;

    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/TreeVisitorValidator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/Validators;-><init>([Lorg/checkerframework/com/github/javaparser/ast/validator/Validator;)V

    .line 67
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$new$1(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes(I)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A class cannot extend more than one other class."

    invoke-virtual {p1, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$2(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 1
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$3(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes(I)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v1

    const-string v2, "An interface cannot implement other interfaces."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$5(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/chunks/CommonValidators$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->forEach(Ljava/util/function/Consumer;)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$6(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 4
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .param p1, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    .line 41
    .local v0, "target":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    :goto_0
    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    if-eqz v1, :cond_0

    .line 42
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Illegal left hand side of an assignment."

    invoke-virtual {p1, v1, v3, v2}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void

    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic lambda$new$7(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 6
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "problemReporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v0

    .line 54
    .local v0, "mm":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 55
    .local v2, "ppm":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNonEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->isNodeList()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v2, p0}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 58
    .local v3, "value":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s.%s can not be empty."

    invoke-virtual {p1, p0, v5, v4}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .end local v2    # "ppm":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v3    # "value":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_0
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method static synthetic lambda$null$4(Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)V
    .locals 2
    .param p0, "reporter"    # Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;
    .param p1, "mem"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "mem"
        }
    .end annotation

    .line 31
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "An interface cannot have initializers."

    invoke-virtual {p0, p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/validator/ProblemReporter;->report(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

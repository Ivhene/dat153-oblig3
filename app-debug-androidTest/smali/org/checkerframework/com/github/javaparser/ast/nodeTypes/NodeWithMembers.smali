.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;
.super Ljava/lang/Object;
.source "NodeWithMembers.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$getConstructorByParameterTypes$11([Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/String;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    .line 431
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->hasParametersOfType([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getConstructorByParameterTypes$12([Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/Class;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    .line 449
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->hasParametersOfType([Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getConstructors$6(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 395
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    return v0
.end method

.method public static synthetic lambda$getConstructors$7(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 396
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    return-object v0
.end method

.method public static synthetic lambda$getDefaultConstructor$10(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Z
    .locals 1
    .param p0, "cd"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cd"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getDefaultConstructor$8(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 407
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    return v0
.end method

.method public static synthetic lambda$getDefaultConstructor$9(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 408
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    return-object v0
.end method

.method public static synthetic lambda$getFieldByName$13(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 461
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    return v0
.end method

.method public static synthetic lambda$getFieldByName$14(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p0, "f"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "f"
        }
    .end annotation

    .line 462
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    return-object v0
.end method

.method public static synthetic lambda$getFieldByName$16(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "f"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    .line 463
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 463
    return v0
.end method

.method public static synthetic lambda$getFields$17(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 475
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    return v0
.end method

.method public static synthetic lambda$getFields$18(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 476
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    return-object v0
.end method

.method public static synthetic lambda$getMethods$1(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Z
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 330
    instance-of v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return v0
.end method

.method public static synthetic lambda$getMethods$2(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .param p0, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    .line 331
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public static synthetic lambda$getMethodsByName$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "m"
        }
    .end annotation

    .line 319
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getMethodsByParameterTypes$3([Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/String;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    .line 352
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->hasParametersOfType([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getMethodsByParameterTypes$5([Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/Class;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    .line 384
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->hasParametersOfType([Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getMethodsBySignature$4([Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Z
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/String;
    .param p1, "m"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "paramTypes",
            "m"
        }
    .end annotation

    .line 366
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->hasParametersOfType([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$null$15(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "var"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "var"
        }
    .end annotation

    .line 464
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs addConstructor([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .locals 2
    .param p1, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;-><init>()V

    .line 285
    .local v0, "constructorDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 286
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 287
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 288
    return-object v0
.end method

.method public varargs addField(Ljava/lang/Class;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name",
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addField(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "modifiers"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "modifiers"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;-><init>()V

    .line 110
    .local v0, "fieldDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    .line 111
    .local v1, "variable":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 112
    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 113
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 114
    return-object v0
.end method

.method public varargs addFieldWithInitializer(Ljava/lang/Class;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name",
            "initializer",
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "[",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addFieldWithInitializer(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addFieldWithInitializer(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "initializer",
            "modifiers"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3, p4}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addFieldWithInitializer(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addFieldWithInitializer(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "name",
            "initializer",
            "modifiers"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0, p1, p2, p4}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    .line 155
    .local v0, "declaration":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 156
    return-object v0
.end method

.method public addInitializer()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 3

    .line 295
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    .line 296
    .local v0, "block":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;-><init>(ZLorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 297
    .local v1, "initializerDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 298
    return-object v0
.end method

.method public addMember(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "member"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)TN;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 70
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public varargs addMethod(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "methodName",
            "modifiers"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;-><init>()V

    .line 270
    .local v0, "methodDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 271
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;-><init>()V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 272
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 273
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 274
    return-object v0
.end method

.method public addPrivateField(Ljava/lang/Class;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/Class;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addPrivateField(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addPrivateField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addProtectedField(Ljava/lang/Class;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/Class;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addProtectedField(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addProtectedField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 258
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addPublicField(Ljava/lang/Class;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/Class;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addPublicField(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addPublicField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 3
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    .line 224
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-interface {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->addField(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public addStaticInitializer()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 3

    .line 305
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    .line 306
    .local v0, "block":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;-><init>(ZLorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 307
    .local v1, "initializerDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 308
    return-object v0
.end method

.method public varargs getConstructorByParameterTypes([Ljava/lang/Class;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda5;-><init>([Ljava/lang/Class;)V

    .line 449
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 450
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 448
    return-object v0
.end method

.method public varargs getConstructorByParameterTypes([Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "paramTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda16;-><init>([Ljava/lang/String;)V

    .line 431
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 430
    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    .line 394
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda6;-><init>()V

    .line 395
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda7;-><init>()V

    .line 396
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 397
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 394
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultConstructor()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;",
            ">;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda2;-><init>()V

    .line 407
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda3;-><init>()V

    .line 408
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda4;-><init>()V

    .line 409
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 406
    return-object v0
.end method

.method public getFieldByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda17;-><init>()V

    .line 461
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda18;-><init>()V

    .line 462
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 465
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 460
    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda14;-><init>()V

    .line 475
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda15;-><init>()V

    .line 476
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 477
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 474
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMember(I)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    return-object v0
.end method

.method public abstract getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation
.end method

.method public getMethods()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda11;-><init>()V

    .line 330
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda12;-><init>()V

    .line 331
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 332
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 329
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 320
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 318
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getMethodsByParameterTypes([Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda9;-><init>([Ljava/lang/Class;)V

    .line 384
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 385
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 383
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getMethodsByParameterTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "paramTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda10;-><init>([Ljava/lang/String;)V

    .line 352
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 353
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 351
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getMethodsBySignature(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethodsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    .line 366
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 367
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 365
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 484
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setMember(ILorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "member"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)TN;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers<TN;>;"
    .local p2, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 64
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "members"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)TN;"
        }
    .end annotation
.end method

.method public abstract tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

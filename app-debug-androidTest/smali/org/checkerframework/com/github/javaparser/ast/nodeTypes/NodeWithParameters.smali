.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;
.super Ljava/lang/Object;
.source "NodeWithParameters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$DEachtMitaX4McYgwvugOncfNWQ(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getParameterByName$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "p"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getParameterByType$1(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "type",
            "p"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getParameterByType$2(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "type",
            "p"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$hasParametersOfType$3(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$hasParametersOfType$4(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Ljava/lang/String;
    .locals 2
    .param p0, "p"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 176
    nop

    .line 174
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->toClassOrInterfaceType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda3;-><init>()V

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAndGetParameter(Ljava/lang/Class;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramClass",
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
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    .local p1, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->addAndGetParameter(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public addAndGetParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "name"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->addAndGetParameter(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public addAndGetParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 100
    return-object p1
.end method

.method public addAndGetParameter(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .locals 1
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

    .line 79
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->addAndGetParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public addParameter(Ljava/lang/Class;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramClass",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    .local p1, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->addParameter(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->addParameter(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ")TN;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 75
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public addParameter(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->addParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(I)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
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

    .line 40
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Ljava/util/Optional;
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
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public getParameterByType(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    .line 133
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method public getParameterByType(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public abstract getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation
.end method

.method public varargs hasParametersOfType([Ljava/lang/Class;)Z
    .locals 3
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
            "*>;)Z"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda5;-><init>()V

    .line 174
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 177
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 178
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    return v0
.end method

.method public varargs hasParametersOfType([Ljava/lang/String;)Z
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

    .line 152
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda1;-><init>()V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 154
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    return v0
.end method

.method public setParameter(ILorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "i"    # I
    .param p2, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "parameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ")TN;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 48
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;)TN;"
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

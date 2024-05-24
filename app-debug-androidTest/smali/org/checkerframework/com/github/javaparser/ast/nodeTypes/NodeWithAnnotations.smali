.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;
.super Ljava/lang/Object;
.source "NodeWithAnnotations.java"


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
.method public static synthetic lambda$getAnnotationByName$1(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Z
    .locals 1
    .param p0, "annotationName"    # Ljava/lang/String;
    .param p1, "a"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "annotationName",
            "a"
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$isAnnotationPresent$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Z
    .locals 1
    .param p0, "annotationName"    # Ljava/lang/String;
    .param p1, "a"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "annotationName",
            "a"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAndGetAnnotation(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 1
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
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAndGetAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    move-result-object v0

    return-object v0
.end method

.method public addAndGetAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 86
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 87
    .local v0, "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 88
    return-object v0
.end method

.method public addAnnotation(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
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
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TN;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
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
            ")TN;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 72
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 73
    .local v0, "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 74
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v1
.end method

.method public addAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "element"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ")TN;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 60
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public addMarkerAnnotation(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
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
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TN;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 135
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addMarkerAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addMarkerAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
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
            ")TN;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;

    .line 122
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 123
    .local v0, "markerAnnotationExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 124
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v1
.end method

.method public addSingleMemberAnnotation(Ljava/lang/Class;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addSingleMemberAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addSingleMemberAnnotation(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p2, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addSingleMemberAnnotation(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addSingleMemberAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
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

    .line 172
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseExpression(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addSingleMemberAnnotation(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addSingleMemberAnnotation(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 148
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 149
    .local v0, "singleMemberAnnotationExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->addAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    return-object v1
.end method

.method public getAnnotation(I)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
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

    .line 48
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    return-object v0
.end method

.method public getAnnotationByClass(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    .line 223
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotationByName(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "annotationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->isAnnotationPresent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "annotationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationName"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public setAnnotation(ILorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "i"    # I
    .param p2, "element"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ")TN;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithAnnotations;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 54
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
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

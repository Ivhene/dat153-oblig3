.class public Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
.super Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
.source "FieldDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 71
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "annotations",
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p2, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p4, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 93
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 94
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setVariables(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 95
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->customInitialization()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p2, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 84
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p3, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V
    .locals 3
    .param p2, "variable"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ")V"
        }
    .end annotation

    .line 75
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->nodeList([Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V
    .locals 3
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)V

    .line 107
    return-void
.end method

.method static synthetic lambda$createGetter$0(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 4
    .param p0, "fieldNameUpper"    # Ljava/lang/String;
    .param p1, "clazz"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "fieldNameUpper",
            "clazz"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v2, 0x0

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->addMethod(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createGetter$1(Ljava/util/Optional;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 5
    .param p0, "parentEnum"    # Ljava/util/Optional;
    .param p1, "fieldNameUpper"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "parentEnum",
            "fieldNameUpper"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v3, 0x0

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->addMethod(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createSetter$2(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 4
    .param p0, "fieldNameUpper"    # Ljava/lang/String;
    .param p1, "clazz"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "fieldNameUpper",
            "clazz"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v2, 0x0

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->addMethod(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createSetter$3(Ljava/util/Optional;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 5
    .param p0, "parentEnum"    # Ljava/util/Optional;
    .param p1, "fieldNameUpper"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "parentEnum",
            "fieldNameUpper"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v3, 0x0

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->addMethod(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 112
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 118
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public asFieldDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 0

    .line 297
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 2

    .line 259
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    return-object v0
.end method

.method public createGetter()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 8

    .line 174
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 176
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    .line 177
    .local v0, "parentClass":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;>;"
    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v2

    .line 178
    .local v2, "parentEnum":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "You can use this only when the field is attached to a class or an enum"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_2
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariable(I)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v4

    .line 181
    .local v4, "variable":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getNameAsString()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "fieldName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "fieldNameUpper":Ljava/lang/String;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda3;

    invoke-direct {v6, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda3;-><init>(Ljava/util/Optional;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 185
    .local v3, "getter":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 186
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    .line 187
    .local v6, "blockStmt":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {v3, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 188
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v7, v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->addStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 189
    return-object v3

    .line 175
    .end local v0    # "parentClass":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;>;"
    .end local v1    # "fieldNameUpper":Ljava/lang/String;
    .end local v2    # "parentEnum":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;>;"
    .end local v3    # "getter":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .end local v4    # "variable":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "blockStmt":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can use this only when the field declares only 1 variable name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSetter()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 11

    .line 201
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 203
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    .line 204
    .local v0, "parentClass":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;>;"
    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v2

    .line 205
    .local v2, "parentEnum":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "You can use this only when the field is attached to a class or an enum"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_2
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariable(I)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v4

    .line 208
    .local v4, "variable":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getNameAsString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "fieldName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "fieldNameUpper":Ljava/lang/String;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration$$ExternalSyntheticLambda1;-><init>(Ljava/util/Optional;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 212
    .local v3, "setter":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;-><init>()V

    invoke-virtual {v3, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 213
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 214
    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    .line 215
    .local v6, "blockStmt2":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {v3, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 216
    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "this."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v9, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    sget-object v10, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->ASSIGN:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-direct {v7, v8, v9, v10}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)V

    invoke-virtual {v6, v7}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->addStatement(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 217
    return-object v3

    .line 202
    .end local v0    # "parentClass":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;>;"
    .end local v1    # "fieldNameUpper":Ljava/lang/String;
    .end local v2    # "parentEnum":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;>;"
    .end local v3    # "setter":Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .end local v4    # "variable":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "blockStmt2":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can use this only when the field declares only 1 variable name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/FieldDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/FieldDeclarationMetaModel;
    .locals 1

    .line 265
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->fieldDeclarationMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/FieldDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/FieldDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifFieldDeclaration(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public isFieldDeclaration()Z
    .locals 1

    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .line 221
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    .line 225
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 239
    if-nez p1, :cond_0

    .line 240
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 242
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 243
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 244
    return v2

    .line 241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 248
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 249
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 250
    return v2

    .line 247
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    .end local v0    # "i":I
    :cond_4
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 274
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 275
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 276
    return v2

    .line 273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 280
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 281
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 282
    return v2

    .line 279
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    .end local v0    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 2

    .line 307
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    return-object v0
.end method

.method public bridge synthetic setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 139
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 141
    return-object p0

    .line 143
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 146
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 147
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 148
    return-object p0
.end method

.method public setTransient(Z)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 229
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSIENT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    return-object v0
.end method

.method public bridge synthetic setVariables(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "variables"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setVariables(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setVariables(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;"
        }
    .end annotation

    .line 153
    .local p1, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 155
    return-object p0

    .line 157
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VARIABLES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 160
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->variables:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 161
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 162
    return-object p0
.end method

.method public setVolatile(Z)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 1
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 233
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->VOLATILE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    return-object v0
.end method

.method public toFieldDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

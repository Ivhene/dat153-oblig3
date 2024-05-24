.class public Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
.super Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
.source "EnumConstantDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithArguments;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithArguments<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation
.end field

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 60
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 64
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v3, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "annotations",
            "name",
            "arguments",
            "classBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .line 77
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p4, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p5, "classBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 78
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 79
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 80
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setClassBody(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 81
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->customInitialization()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 6
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "annotations",
            "name",
            "arguments",
            "classBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 69
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p3, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p4, "classBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 70
    return-void
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

    .line 87
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 93
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public asEnumConstantDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .locals 0

    .line 218
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .locals 2

    .line 176
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    return-object v0
.end method

.method public getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/EnumConstantDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/EnumConstantDeclarationMetaModel;
    .locals 1

    .line 182
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->enumConstantDeclarationMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/EnumConstantDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/EnumConstantDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public ifEnumConstantDeclaration(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public isEnumConstantDeclaration()Z
    .locals 1

    .line 212
    const/4 v0, 0x1

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

    .line 156
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 159
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 161
    return v2

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 165
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 166
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 167
    return v2

    .line 164
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
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

    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 191
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 192
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 193
    return v2

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 197
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 198
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 199
    return v2

    .line 196
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_5

    .line 203
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 204
    return v2

    .line 206
    :cond_5
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;

    return-object v0
.end method

.method public bridge synthetic setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;"
        }
    .end annotation

    .line 113
    .local p1, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 115
    return-object p0

    .line 117
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 120
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 121
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 122
    return-object p0
.end method

.method public setClassBody(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "classBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;"
        }
    .end annotation

    .line 127
    .local p1, "classBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 129
    return-object p0

    .line 131
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CLASS_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 134
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->classBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 135
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 136
    return-object p0
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 141
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 143
    return-object p0

    .line 145
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 148
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 149
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 150
    return-object p0
.end method

.method public toEnumConstantDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
            ">;"
        }
    .end annotation

    .line 234
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

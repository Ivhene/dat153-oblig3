.class public Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
.super Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
.source "InitializerDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

.field private isStatic:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;ZLorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;ZLorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "isStatic"    # Z
    .param p3, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "isStatic",
            "body"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 66
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setStatic(Z)Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    .line 67
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    .line 68
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->customInitialization()V

    .line 69
    return-void
.end method

.method public constructor <init>(ZLorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 1
    .param p1, "isStatic"    # Z
    .param p2, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isStatic",
            "body"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;ZLorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 58
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

    .line 74
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 80
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public asInitializerDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .locals 0

    .line 158
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .locals 2

    .line 128
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    return-object v0
.end method

.method public getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/InitializerDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/InitializerDeclarationMetaModel;
    .locals 1

    .line 134
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->initializerDeclarationMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/InitializerDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/InitializerDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifInitializerDeclaration(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public isInitializerDeclaration()Z
    .locals 1

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic:Z

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
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

    .line 140
    if-nez p1, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_1

    .line 143
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .locals 2
    .param p1, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    .line 97
    return-object p0

    .line 99
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 102
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 103
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 104
    return-object p0
.end method

.method public setStatic(Z)Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .locals 3
    .param p1, "isStatic"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isStatic"
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic:Z

    if-ne p1, v0, :cond_0

    .line 110
    return-object p0

    .line 112
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic:Z

    .line 114
    return-object p0
.end method

.method public toInitializerDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

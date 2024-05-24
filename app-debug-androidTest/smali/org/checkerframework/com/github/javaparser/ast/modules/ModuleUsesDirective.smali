.class public Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
.super Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
.source "ModuleUsesDirective.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName<",
        "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "name"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 41
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    .line 42
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->customInitialization()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 1
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 33
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

    .line 48
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 54
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public asModuleUsesDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .locals 0

    .line 148
    return-object p0
.end method

.method public asModuleUsesStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .locals 0

    .line 94
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .locals 2

    .line 82
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleDirectiveMetaModel;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleUsesDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleUsesDirectiveMetaModel;
    .locals 1

    .line 165
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->moduleUsesDirectiveMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ModuleUsesDirectiveMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleUsesDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public ifModuleUsesDirective(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public ifModuleUsesStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public isModuleUsesDirective()Z
    .locals 1

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public isModuleUsesStmt()Z
    .locals 1

    .line 88
    const/4 v0, 0x1

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

    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_1

    .line 133
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    .line 117
    return-object p0

    .line 119
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 122
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 123
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 124
    return-object p0
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    .line 69
    return-object p0

    .line 71
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 74
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 75
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 76
    return-object p0
.end method

.method public toModuleUsesDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleUsesStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

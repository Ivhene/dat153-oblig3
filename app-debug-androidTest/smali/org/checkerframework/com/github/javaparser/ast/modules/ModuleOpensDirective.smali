.class public Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
.super Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
.source "ModuleOpensDirective.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName<",
        "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
        ">;"
    }
.end annotation


# instance fields
.field private moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation
.end field

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "name",
            "moduleNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p3, "moduleNames":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 44
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 45
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setModuleNames(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->customInitialization()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "moduleNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 35
    .local p2, "moduleNames":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 36
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

    .line 52
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 58
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public asModuleOpensDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .locals 0

    .line 169
    return-object p0
.end method

.method public asModuleOpensStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .locals 0

    .line 146
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .locals 2

    .line 116
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleDirectiveMetaModel;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleOpensDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleOpensDirectiveMetaModel;
    .locals 1

    .line 186
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->moduleOpensDirectiveMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ModuleOpensDirectiveMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleOpensDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public ifModuleOpensDirective(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public ifModuleOpensStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public isModuleOpensDirective()Z
    .locals 1

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public isModuleOpensStmt()Z
    .locals 1

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 67
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 69
    const/4 v1, 0x1

    return v1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 125
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 126
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 127
    return v2

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_3

    .line 131
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 132
    return v2

    .line 134
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setModuleNames(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "moduleNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;"
        }
    .end annotation

    .line 101
    .local p1, "moduleNames":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 103
    return-object p0

    .line 105
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODULE_NAMES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 108
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->moduleNames:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 109
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 110
    return-object p0
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

    .line 23
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
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

    .line 82
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    .line 84
    return-object p0

    .line 86
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 89
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 90
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 91
    return-object p0
.end method

.method public toModuleOpensDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleOpensStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

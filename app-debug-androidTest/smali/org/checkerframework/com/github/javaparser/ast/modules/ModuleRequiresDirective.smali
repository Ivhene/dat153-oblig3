.class public Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
.super Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
.source "ModuleRequiresDirective.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithName<",
        "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
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

.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ")V"
        }
    .end annotation

    .line 46
    .local p2, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 47
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 48
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->customInitialization()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V
    .locals 1
    .param p2, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modifiers",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 38
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    .line 39
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

    .line 55
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 61
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public asModuleRequiresDirective()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 0

    .line 180
    return-object p0
.end method

.method public asModuleRequiresStmt()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 0

    .line 157
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .locals 2

    .line 127
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleDirectiveMetaModel;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;
    .locals 1

    .line 197
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->moduleRequiresDirectiveMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ModuleRequiresDirectiveMetaModel;

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

    .line 66
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public ifModuleRequiresDirective(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public ifModuleRequiresStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public isModuleRequiresDirective()Z
    .locals 1

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public isModuleRequiresStmt()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public isTransitive()Z
    .locals 1

    .line 103
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

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

    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 116
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 117
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 118
    const/4 v1, 0x1

    return v1

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
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

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 136
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 137
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 138
    return v2

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_3

    .line 142
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 143
    return v2

    .line 145
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
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

    .line 26
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
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
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;"
        }
    .end annotation

    .line 71
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 73
    return-object p0

    .line 75
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 78
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 79
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 80
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

    .line 26
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
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

    .line 90
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-ne p1, v0, :cond_0

    .line 92
    return-object p0

    .line 94
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    if-eqz v0, :cond_1

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 97
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 98
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 99
    return-object p0
.end method

.method public setTransitive(Z)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
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

    .line 107
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->TRANSITIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    return-object v0
.end method

.method public toModuleRequiresDirective()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toModuleRequiresStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
